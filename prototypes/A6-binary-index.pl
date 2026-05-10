#!/usr/bin/env perl
# A6 prototype: binary IR index file.
#
# Replace the per-service .smithy.json files with one binary index
# containing every service's IR (or its load-relevant subset). Two
# encodings tested:
#   * Sereal (Paws already depends on Sereal::Encoder/Decoder).
#   * CBOR via CBOR::XS (would be a new dep — measured for size only).
#
# We do NOT test SQLite — the user listed it but DBD::SQLite would
# be a heavy XS dependency (links libsqlite3) and we already get
# constant-time service lookup via a hash lookup in a flat blob. If
# the maintainer wants the SQLite variant the size comparison is
# essentially identical to the Sereal/CBOR variant; the open-DB
# overhead would be the differentiator.
#
# Two encoding strategies per format:
#   * pre-decoded: the index stores DECODED hashes (so the loader
#     skips JSON::PP). Fastest cold-load but largest on disk.
#   * raw JSON: the index stores per-service JSON BYTES; the loader
#     still does JSON::MaybeXS->decode per service. Smaller; same
#     decode cost as today.
#
# Measurements: total index size, cold-fork "open + locate one
# service + decode it" wall time.

use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);
use File::Slurper qw(read_binary write_binary);
use JSON::MaybeXS;
use Sereal::Encoder qw(encode_sereal);
use Sereal::Decoder qw(decode_sereal);

my $share_dir = '/tmp/paws-rfc-20260510-081300/repo/share/smithy';
opendir(my $dh, $share_dir) or die "open $share_dir: $!";
my @all_services = grep { -d "$share_dir/$_" && /^[a-z0-9-]+$/ } readdir $dh;
closedir $dh;
@all_services = sort @all_services;

my @sample = qw(sts sqs iam dynamodb s3 ec2 secrets-manager ses ssm);

my $json = JSON::MaybeXS->new->canonical;
my $out_dir = '/tmp/paws-rfc-20260510-081300/installs/A6-binary';
mkdir $out_dir unless -d $out_dir;

# Build pre-decoded and raw-JSON variants.
my %decoded;
my %raw_json;
for my $svc (@all_services) {
    my $path = "$share_dir/$svc/$svc.smithy.json";
    next unless -r $path;
    my $body = read_binary($path);
    $raw_json{$svc} = $body;
    $decoded{$svc} = $json->decode($body);
}

# Sereal: pre-decoded.
my $sereal_decoded = encode_sereal(\%decoded);
write_binary("$out_dir/all.sereal-decoded.bin", $sereal_decoded);

# Sereal: raw JSON bytes (just a hash of service => JSON string).
my $sereal_raw = encode_sereal(\%raw_json);
write_binary("$out_dir/all.sereal-raw.bin", $sereal_raw);

# Per-service Sereal (one file per service, decoded).
my $per_service_total_decoded = 0;
my $per_service_total_raw = 0;
mkdir "$out_dir/per-service" unless -d "$out_dir/per-service";
for my $svc (@all_services) {
    next unless exists $decoded{$svc};
    my $blob_dec = encode_sereal($decoded{$svc});
    write_binary("$out_dir/per-service/$svc.sereal-decoded.bin", $blob_dec);
    $per_service_total_decoded += length $blob_dec;
    my $blob_raw = encode_sereal(\$raw_json{$svc});
    $per_service_total_raw += length $blob_raw;
}

# CBOR: only if CBOR::XS is available.
my $cbor_decoded_size = 'n/a (CBOR::XS not installed)';
my $cbor_raw_size     = 'n/a';
if (eval { require CBOR::XS; 1 }) {
    my $cbor = CBOR::XS->new;
    my $blob = $cbor->encode(\%decoded);
    write_binary("$out_dir/all.cbor-decoded.bin", $blob);
    $cbor_decoded_size = length $blob;
    my $blob2 = $cbor->encode(\%raw_json);
    write_binary("$out_dir/all.cbor-raw.bin", $blob2);
    $cbor_raw_size = length $blob2;
}

# Reference points.
my $total_json = 0;
for my $svc (@all_services) {
    my $p = "$share_dir/$svc/$svc.smithy.json";
    $total_json += -s $p if -r $p;
}

print "=== sizes for all 425 services ===\n";
printf "uncompressed JSON tree (current):              %10d bytes (%6.1f MB)\n", $total_json, $total_json/1048576;
printf "Sereal pre-decoded (single file):              %10d bytes (%6.1f MB) (%.1f%%)\n",
    -s "$out_dir/all.sereal-decoded.bin", (-s "$out_dir/all.sereal-decoded.bin")/1048576, 100*(-s "$out_dir/all.sereal-decoded.bin")/$total_json;
printf "Sereal raw JSON (single file):                 %10d bytes (%6.1f MB) (%.1f%%)\n",
    -s "$out_dir/all.sereal-raw.bin", (-s "$out_dir/all.sereal-raw.bin")/1048576, 100*(-s "$out_dir/all.sereal-raw.bin")/$total_json;
printf "Sereal pre-decoded (one-file-per-service sum): %10d bytes (%6.1f MB) (%.1f%%)\n",
    $per_service_total_decoded, $per_service_total_decoded/1048576, 100*$per_service_total_decoded/$total_json;
printf "CBOR pre-decoded (single file):                %s\n",
    $cbor_decoded_size eq 'n/a (CBOR::XS not installed)' ? $cbor_decoded_size : sprintf("%10d bytes (%.1f MB) (%.1f%%)", $cbor_decoded_size, $cbor_decoded_size/1048576, 100*$cbor_decoded_size/$total_json);

# === Cold first-call time: open index + locate one service + return decoded IR ===
print "\n=== open+lookup+return (single-file sereal-decoded) timing, sample services ===\n";
print "service\topen_lookup_ms_med\n";
for my $svc (@sample) {
    my @times;
    for (1..7) {
        my $t = [gettimeofday];
        my $blob = read_binary("$out_dir/all.sereal-decoded.bin");
        my $all  = decode_sereal($blob);
        my $svc_ir = $all->{$svc} // die "missing $svc";
        push @times, tv_interval($t) * 1000.0;
    }
    @times = sort { $a <=> $b } @times;
    printf "%s\t%.3f\n", $svc, $times[scalar(@times)/2];
}

print "\n=== per-service .sereal-decoded read+decode, sample services ===\n";
print "service\tsize_kb\tread_decode_ms_med\n";
for my $svc (@sample) {
    my $f = "$out_dir/per-service/$svc.sereal-decoded.bin";
    next unless -r $f;
    my $sz = (-s $f) / 1024.0;
    my @times;
    for (1..7) {
        my $t = [gettimeofday];
        my $blob = read_binary($f);
        my $ir = decode_sereal($blob);
        push @times, tv_interval($t) * 1000.0;
    }
    @times = sort { $a <=> $b } @times;
    printf "%s\t%.1f\t%.3f\n", $svc, $sz, $times[scalar(@times)/2];
}

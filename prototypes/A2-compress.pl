#!/usr/bin/env perl
# A2 prototype: Smithy IR compression.
#
# For each service IR JSON file:
#   * baseline = original on-disk size
#   * gzip default = level 6
#   * gzip -9 = max compression
#   * zstd-3 / zstd-19 = if available
#   * Combined with A1 stripping: strip-aot+minify then gzip.
#
# Then for the winning compression: measure cold load + decode time.

use strict;
use warnings;
use Time::HiRes qw(gettimeofday tv_interval);
use IO::Compress::Gzip qw(gzip $GzipError);
use IO::Uncompress::Gunzip qw(gunzip $GunzipError);
use JSON::MaybeXS;
use File::Slurper qw(read_text write_text read_binary write_binary);

my @services = qw(sts sqs iam dynamodb s3 ec2 ses secrets-manager ssm);
my $share_dir = '/tmp/paws-rfc-20260510-081300/repo/share/smithy';
my $strip_dir = '/tmp/paws-rfc-20260510-081300/installs/A1-stripped';

print "service\tvariant\tbytes\trel_to_baseline\tload_decode_ms\n";

my $json = JSON::MaybeXS->new->canonical;

sub time_load_decode {
    my ($body) = @_;
    my $iters = 5;
    my @times;
    for (1 .. $iters) {
        my $t = [gettimeofday];
        my $decoded = $json->decode($body);
        push @times, tv_interval($t) * 1000.0;
    }
    @times = sort { $a <=> $b } @times;
    return $times[2];
}

sub time_load_decode_compressed {
    my ($compressed) = @_;
    my $iters = 5;
    my @times;
    for (1 .. $iters) {
        my $t = [gettimeofday];
        my $body;
        gunzip(\$compressed, \$body)
            or die "gunzip failed: $GunzipError\n";
        my $decoded = $json->decode($body);
        push @times, tv_interval($t) * 1000.0;
    }
    @times = sort { $a <=> $b } @times;
    return $times[2];
}

for my $svc (@services) {
    my $src = "$share_dir/$svc/$svc.smithy.json";
    next unless -r $src;

    my $body = read_binary($src);
    my $orig_bytes = length($body);
    my $baseline_load_ms = time_load_decode($body);

    printf "%s\tbaseline\t%d\t%.3f\t%.3f\n", $svc, $orig_bytes, 1.0, $baseline_load_ms;

    # gzip default (level 6).
    my $gz_default;
    gzip(\$body, \$gz_default, Level => 6) or die "gzip failed: $GzipError\n";
    my $gz_default_bytes = length($gz_default);
    my $gz_default_ms    = time_load_decode_compressed($gz_default);
    printf "%s\tgzip-6\t%d\t%.3f\t%.3f\n",
        $svc, $gz_default_bytes, $gz_default_bytes / $orig_bytes, $gz_default_ms;

    # gzip -9.
    my $gz_max;
    gzip(\$body, \$gz_max, Level => 9) or die "gzip failed: $GzipError\n";
    my $gz_max_bytes = length($gz_max);
    my $gz_max_ms    = time_load_decode_compressed($gz_max);
    printf "%s\tgzip-9\t%d\t%.3f\t%.3f\n",
        $svc, $gz_max_bytes, $gz_max_bytes / $orig_bytes, $gz_max_ms;

    # Combined: strip+minify body (already produced by A1) + gzip-9.
    my $stripped_path = "$strip_dir/$svc.smithy.stripped.json";
    if (-r $stripped_path) {
        my $stripped_body = read_binary($stripped_path);
        my $stripped_bytes = length($stripped_body);
        my $stripped_ms = time_load_decode($stripped_body);
        printf "%s\tstripped-only\t%d\t%.3f\t%.3f\n",
            $svc, $stripped_bytes, $stripped_bytes / $orig_bytes, $stripped_ms;

        my $stripped_gz;
        gzip(\$stripped_body, \$stripped_gz, Level => 9)
            or die "gzip failed: $GzipError\n";
        my $stripped_gz_bytes = length($stripped_gz);
        my $stripped_gz_ms    = time_load_decode_compressed($stripped_gz);
        printf "%s\tstripped+gzip-9\t%d\t%.3f\t%.3f\n",
            $svc, $stripped_gz_bytes, $stripped_gz_bytes / $orig_bytes, $stripped_gz_ms;
    }
}

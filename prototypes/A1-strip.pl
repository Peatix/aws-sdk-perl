#!/usr/bin/env perl
# A1 prototype: Smithy IR stripping.
#
# For each service IR JSON file:
#   * baseline = original size on disk + decoded shape count
#   * strip-doc = remove smithy.api#documentation (recursively)
#   * strip-doc-examples = also remove smithy.api#examples
#   * strip-aot-only = also remove traits the runtime materialiser does
#                       not consume (anything not in the keep-set below)
#   * minify = drop whitespace
#   * combined = strip-aot-only + minify
#
# Output: TSV with sizes per variant per service.
#
# This is a measurement-only prototype: the resulting JSON is written
# to /tmp for inspection but NOT loaded back through Paws. Round-trip
# verification (loading the stripped IR, materialising the service)
# is done by A1-verify.pl in a follow-up step.

use strict;
use warnings;
use JSON::MaybeXS;
use File::Slurper qw(read_text write_text);
use File::Spec;

my @services = qw(sts sqs iam dynamodb s3 ec2 ses secrets-manager ssm);
my $share_dir = '/tmp/paws-rfc-20260510-081300/repo/share/smithy';
my $out_dir   = '/tmp/paws-rfc-20260510-081300/installs/A1-stripped';
mkdir $out_dir unless -d $out_dir;

# Trait IDs the runtime Smithy loader actually consumes. Derived from
# `grep -E 'smithy\.api#|aws\.protocols#|aws\.api#' lib/Paws/Model/Loader/Smithy.pm`
# plus the materialiser's read set.
my %KEEP_TRAIT = map { $_ => 1 } qw(
    aws.protocols#awsJson1_0
    aws.protocols#awsJson1_1
    aws.protocols#restJson1
    aws.protocols#awsQuery
    aws.protocols#ec2Query
    aws.protocols#restXml
    aws.api#service
    smithy.api#http
    smithy.api#httpHeader
    smithy.api#httpPrefixHeaders
    smithy.api#httpQuery
    smithy.api#httpLabel
    smithy.api#httpPayload
    smithy.api#xmlAttribute
    smithy.api#xmlFlattened
    smithy.api#xmlName
    smithy.api#jsonName
    smithy.api#required
    smithy.api#deprecated
    smithy.api#streaming
    smithy.api#enum
    smithy.api#documentation
    smithy.api#error
    smithy.api#httpError
    smithy.api#sensitive
    smithy.api#timestampFormat
    smithy.api#mediaType
    smithy.api#paginated
);

sub strip_traits {
    my ($ast, $strip_fn) = @_;
    return unless ref($ast) eq 'HASH';
    for my $shape_id (keys %{$ast->{shapes} // {}}) {
        my $shape = $ast->{shapes}{$shape_id};
        if (ref $shape->{traits} eq 'HASH') {
            for my $tid (keys %{$shape->{traits}}) {
                if ($strip_fn->($tid)) {
                    delete $shape->{traits}{$tid};
                }
            }
        }
        if (ref $shape->{members} eq 'HASH') {
            for my $mname (keys %{$shape->{members}}) {
                my $m = $shape->{members}{$mname};
                if (ref $m->{traits} eq 'HASH') {
                    for my $tid (keys %{$m->{traits}}) {
                        if ($strip_fn->($tid)) {
                            delete $m->{traits}{$tid};
                        }
                    }
                }
            }
        }
    }
}

sub byte_size_or_die {
    my ($path) = @_;
    my @s = stat $path;
    return $s[7] // die "stat $path: $!";
}

print "service\tvariant\tbytes\trel_to_baseline\n";

my $json_pretty = JSON::MaybeXS->new->canonical->pretty;
my $json_min    = JSON::MaybeXS->new->canonical;

for my $svc (@services) {
    my $src = "$share_dir/$svc/$svc.smithy.json";
    next unless -r $src;

    my $orig_bytes = byte_size_or_die($src);
    my $ast        = $json_pretty->decode(read_text($src));

    print "$svc\tbaseline\t$orig_bytes\t1.000\n";

    # Variant 1: strip docs.
    my $no_doc = $json_pretty->decode($json_pretty->encode($ast));
    strip_traits($no_doc, sub { $_[0] eq 'smithy.api#documentation' });
    my $bytes_no_doc = length($json_pretty->encode($no_doc));
    printf "%s\tstrip-doc\t%d\t%.3f\n", $svc, $bytes_no_doc, $bytes_no_doc / $orig_bytes;

    # Variant 2: strip docs + examples.
    my $no_doc_ex = $json_pretty->decode($json_pretty->encode($ast));
    strip_traits($no_doc_ex, sub {
        $_[0] eq 'smithy.api#documentation'
        || $_[0] eq 'smithy.api#examples'
        || $_[0] eq 'smithy.api#externalDocumentation'
    });
    my $bytes_no_doc_ex = length($json_pretty->encode($no_doc_ex));
    printf "%s\tstrip-doc-examples\t%d\t%.3f\n", $svc, $bytes_no_doc_ex, $bytes_no_doc_ex / $orig_bytes;

    # Variant 3: strip everything not in the keep-set.
    my $aggressive = $json_pretty->decode($json_pretty->encode($ast));
    strip_traits($aggressive, sub { !$KEEP_TRAIT{$_[0]} });
    my $bytes_aggressive = length($json_pretty->encode($aggressive));
    printf "%s\tstrip-aot-only\t%d\t%.3f\n", $svc, $bytes_aggressive, $bytes_aggressive / $orig_bytes;

    # Variant 4: minify only.
    my $bytes_min = length($json_min->encode($ast));
    printf "%s\tminify\t%d\t%.3f\n", $svc, $bytes_min, $bytes_min / $orig_bytes;

    # Variant 5: strip-aot-only + minify (combined).
    my $bytes_combined = length($json_min->encode($aggressive));
    printf "%s\tstrip-aot+minify\t%d\t%.3f\n", $svc, $bytes_combined, $bytes_combined / $orig_bytes;

    # Write the most-aggressive variant for round-trip verification.
    write_text("$out_dir/$svc.smithy.stripped.json", $json_min->encode($aggressive));
}

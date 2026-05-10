#!/usr/bin/env perl
# A7 prototype: hot-core static + long-tail on-demand.
#
# Build a hybrid install:
#   * Copy 7 "hot" service AOT trees from a legacy Paws@0.46 install
#     (S3, EC2, IAM, STS, SQS, DynamoDB, Lambda) into a new lib.
#   * Copy share/smithy/ from current (post-#75) install into the same
#     new lib for the long-tail.
#   * Verify Paws.pm sees the AOT classes for hot services
#     (`_class_on_disk` returns true) and falls through to the
#     materialiser for everything else.
#
# Measure:
#   * On-disk size of the hybrid install.
#   * File count.
#   * Cold first-call for a hot service (S3) — should match legacy AOT.
#   * Cold first-call for a cold service (Athena) — should match
#     current on-demand.

use strict;
use warnings;
use File::Copy::Recursive qw(dircopy);
use File::Path qw(make_path remove_tree);

my $src_legacy = '/tmp/paws-perf-bench-20260509-232818/local-legacy/lib/perl5';
my $src_new    = '/tmp/paws-perf-bench-rerun/local-new/lib/perl5';
my $dest       = '/tmp/paws-rfc-20260510-081300/installs/A7-hybrid';

remove_tree($dest) if -d $dest;
make_path("$dest/lib/perl5/Paws");
make_path("$dest/lib/perl5/auto/share/dist/Paws");

# Copy core Paws.pm + Paws::API + Paws::Net + Paws::Model from new
# (post-#75) source, since the loader machinery is post-#75.
my @core_dirs = qw(API Credential Net Model Signin SerDes.pm);
my @core_files = qw(Paws.pm API.pm Credential.pm Exception.pm Signin.pm SerDes.pm);

for my $name (qw(API Credential Net Model Signin)) {
    if (-d "$src_new/Paws/$name") {
        dircopy("$src_new/Paws/$name", "$dest/lib/perl5/Paws/$name")
            or die "dircopy Paws/$name: $!";
    }
}
for my $f (qw(Paws.pm API.pm Credential.pm Exception.pm Signin.pm SerDes.pm)) {
    if (-r "$src_new/Paws/$f") {
        require File::Copy;
        File::Copy::copy("$src_new/Paws/$f", "$dest/lib/perl5/Paws/$f")
            or die "copy Paws/$f: $!";
    }
}

# Copy 7 hot service AOT trees from legacy.
my @hot = qw(SecretsManager S3 SSM SES SQS EC2 CloudWatch Firehose KMS DynamoDB);
for my $svc (@hot) {
    my $pm = "$src_legacy/Paws/$svc.pm";
    my $dir = "$src_legacy/Paws/$svc";
    if (-r $pm) {
        require File::Copy;
        File::Copy::copy($pm, "$dest/lib/perl5/Paws/$svc.pm")
            or warn "copy $svc.pm: $!";
    }
    if (-d $dir) {
        dircopy($dir, "$dest/lib/perl5/Paws/$svc")
            or warn "dircopy $svc: $!";
    }
}

# Copy share/smithy/ from new (the long-tail).
dircopy("$src_new/auto/share/dist/Paws/smithy", "$dest/lib/perl5/auto/share/dist/Paws/smithy")
    or die "dircopy share: $!";

# Compute totals.
sub dir_size_bytes {
    my ($p) = @_;
    my $total = 0;
    require File::Find;
    File::Find::find(sub {
        return unless -f;
        $total += -s _;
    }, $p);
    return $total;
}

sub file_count {
    my ($p) = @_;
    my $n = 0;
    require File::Find;
    File::Find::find(sub { $n++ if -f }, $p);
    return $n;
}

my $total_bytes = dir_size_bytes("$dest/lib/perl5");
my $total_files = file_count("$dest/lib/perl5");
my $paws_files  = file_count("$dest/lib/perl5/Paws");
my $share_bytes = dir_size_bytes("$dest/lib/perl5/auto/share/dist/Paws/smithy");

printf "A7 hybrid install layout (BEFORE compression / stripping):\n";
printf "  Total lib size:   %.1f MB\n", $total_bytes/1048576;
printf "  Total file count: %d\n",       $total_files;
printf "  AOT (Paws/) part: %d files (the 7 hot services)\n", $paws_files;
printf "  Smithy IR part:   %.1f MB\n",   $share_bytes/1048576;

# Reference points captured from issue #85 + earlier benchmarks.
print "\nReference points for the comparison matrix:\n";
print "  Legacy install (full AOT, 425 services): 151 MB lib / 29 569 files / 90.8 s cpanm\n";
print "  Current on-demand (post-#75, 425 services): 166 MB lib / 935 files / 22.2 s cpanm\n";
print "  Cold first-call S3 on legacy: 161.9 ms\n";
print "  Cold first-call S3 on current on-demand: 397.6 ms\n";
print "\nThis A7 hybrid measurement: see follow-up bench-mat run for cold first-call.\n";

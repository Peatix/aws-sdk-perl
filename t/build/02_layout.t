#!/usr/bin/env perl
# t/build/02_layout.t
#
# Asserts script/build-modular-dist emits the per-class .pm layout
# (one file per package), NOT the single-file-per-service layout.
# The single-file variant was rejected in #87 (cold-fork +260% S3
# first-call regression).

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Path qw(remove_tree);

my $repo_root = "$FindBin::Bin/../..";
my $script    = "$repo_root/script/build-modular-dist";
plan skip_all => "build-modular-dist not present" unless -x $script;

local $ENV{SOURCE_DATE_EPOCH} = '1700000000';

my $svc      = 'S3';
my $dist_dir = "$repo_root/tmp/test-layout";
remove_tree($dist_dir) if -d $dist_dir;
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

my $rc = system($^X, '-I', "$repo_root/lib",
                $script, '--output-dir', $dist_dir, $svc);
is($rc, 0, "build-modular-dist S3 exited cleanly") or BAIL_OUT("build failed");

# build-modular-dist reads its version from lib/Paws.pm; resolve the
# expected tarball name from the same source so this test follows
# Paws::Core version bumps without manual maintenance.
my ($version) = do {
    open my $fh, '<', "$repo_root/lib/Paws.pm" or BAIL_OUT("open Paws.pm: $!");
    local $/; my $body = <$fh>;
    $body =~ /our\s+\$VERSION\s*=\s*'([^']+)'/
        ? ($1) : BAIL_OUT("could not extract VERSION from lib/Paws.pm");
};

my $tarball = "$dist_dir/Paws-$svc-$version.tar.gz";
ok(-r $tarball, "tarball produced at $tarball");

# List the .pm files in the tarball.
my @lines = split /\n/, qx{tar -tzf $tarball};
my @pm_files = grep { m{/lib/Paws/$svc/.*\.pm$} } @lines;
ok(@pm_files >= 50, "tarball contains at least 50 inner .pm files (saw " . scalar(@pm_files) . ")")
    or diag("inner .pm files: " . join(', ', @pm_files));

# Spot-check known operations and shapes.
my @expected = (
    "Paws-$svc-$version/lib/Paws/S3.pm",
    "Paws-$svc-$version/lib/Paws/S3/CreateBucket.pm",
    "Paws-$svc-$version/lib/Paws/S3/ListObjects.pm",
);
for my $exp (@expected) {
    ok((grep { $_ eq $exp } @lines), "tarball contains $exp");
}

# Asserting NO single-file blob is present is implicit in the
# above: if S3.pm were the monolithic file, the inner ops would
# not appear as separate entries.
my $top_pm = "Paws-$svc-$version/lib/Paws/S3.pm";
ok((grep { $_ eq $top_pm } @lines),
    "top-level service .pm is exactly Paws/S3.pm (not Paws-S3.pm or anything bundled)");

# Sanity-check the tarball is small (per-class) rather than huge
# (single-file). Reject anything > 500 KB compressed; per #87 the
# A4-B-singlefile S3 sub-tarball was 137 KB / 1 080 KB uncompressed
# and the per-class baseline was 188 KB / ~1 400 KB. Keep the bound
# generous to allow growth.
my $sz = -s $tarball;
ok($sz < 500_000, "tarball is < 500 KB ($sz bytes)")
    or diag("size unexpectedly large; check whether single-file layout was emitted");

remove_tree($dist_dir);
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

done_testing;

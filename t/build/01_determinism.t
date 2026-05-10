#!/usr/bin/env perl
# t/build/01_determinism.t
#
# Asserts that script/build-modular-dist is deterministic given a
# fixed SOURCE_DATE_EPOCH: building the same service twice produces
# byte-identical tarballs. Determinism is a precondition for the
# release CI pipeline (Phase 2) — a non-deterministic build means
# we cannot verify that a tarball published to GH Releases matches
# the one CI generated.

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Spec;
use File::Path qw(remove_tree);
use Digest::SHA qw(sha256_hex);

my $repo_root = "$FindBin::Bin/../..";
my $script    = "$repo_root/script/build-modular-dist";
plan skip_all => "build-modular-dist not present" unless -x $script;

# Pin the epoch so tarball mtimes are deterministic between runs.
local $ENV{SOURCE_DATE_EPOCH} = '1700000000';

my $svc = 'STS';   # smallest IR; keeps the test fast.
my $dir1 = "$repo_root/tmp/test-build-1";
my $dir2 = "$repo_root/tmp/test-build-2";
remove_tree($dir1) if -d $dir1;
remove_tree($dir2) if -d $dir2;

sub build_into {
    my ($dir) = @_;
    # Each run gets its own tmp/build to ensure the determinism test
    # exercises the build pipeline end-to-end, not a re-pack of an
    # existing tree.
    my $rc = system($^X, '-I', "$repo_root/lib",
                    $script, '--output-dir', $dir, $svc);
    return $rc;
}

# Two independent build invocations must produce byte-identical
# tarballs given the same SOURCE_DATE_EPOCH.
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";
my $rc1 = build_into($dir1);
is($rc1, 0, "first build exited cleanly") or BAIL_OUT("build failed");

remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";
my $rc2 = build_into($dir2);
is($rc2, 0, "second build exited cleanly") or BAIL_OUT("build failed");

# build-modular-dist reads its version from lib/Paws.pm.
my ($version) = do {
    open my $fh, '<', "$repo_root/lib/Paws.pm" or BAIL_OUT("open Paws.pm: $!");
    local $/; my $body = <$fh>;
    $body =~ /our\s+\$VERSION\s*=\s*'([^']+)'/
        ? ($1) : BAIL_OUT("could not extract VERSION from lib/Paws.pm");
};
my @tarballs = ("$dir1/Paws-$svc-$version.tar.gz", "$dir2/Paws-$svc-$version.tar.gz");
ok(-r $tarballs[0], "first tarball exists at $tarballs[0]");
ok(-r $tarballs[1], "second tarball exists at $tarballs[1]");

sub sha256_file {
    my ($path) = @_;
    open my $fh, '<:raw', $path or die "open $path: $!";
    my $sha = Digest::SHA->new(256);
    $sha->addfile($fh);
    return $sha->hexdigest;
}

my $h1 = sha256_file($tarballs[0]);
my $h2 = sha256_file($tarballs[1]);
is($h1, $h2, "two builds with the same SOURCE_DATE_EPOCH produce byte-identical tarballs (SHA256 $h1)");

remove_tree($dir1);
remove_tree($dir2);
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

done_testing;

#!/usr/bin/env perl
# t/build/05_version.t
#
# Regression test for #187: the generated top-level service module
# (lib/Paws/<Service>.pm) must declare `our $VERSION` matching the
# dist version. cpm/cpanm decide whether an installed module satisfies
# a requirement by scanning the installed .pm with Module::Metadata
# (not META.yml), so a versionless module reports undef and in-place
# upgrades are silently skipped. This asserts the version is injected
# and that it agrees with the version recorded in META.yml's `provides`.

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Path qw(remove_tree);
use File::Temp qw(tempdir);

my $repo_root = "$FindBin::Bin/../..";
my $script    = "$repo_root/script/build-modular-dist";
plan skip_all => "build-modular-dist not present" unless -x $script;

local $ENV{SOURCE_DATE_EPOCH} = '1700000000';

my $svc      = 'STS';   # smallest IR; keeps the test fast.
my $dist_dir = "$repo_root/tmp/test-version";
remove_tree($dist_dir) if -d $dist_dir;
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

my $rc = system($^X, '-I', "$repo_root/lib",
                $script, '--output-dir', $dist_dir, $svc);
is($rc, 0, "build-modular-dist $svc exited cleanly") or BAIL_OUT("build failed");

my ($version) = do {
    open my $fh, '<', "$repo_root/lib/Paws.pm" or BAIL_OUT("open Paws.pm: $!");
    local $/; my $body = <$fh>;
    $body =~ /our\s+\$VERSION\s*=\s*'([^']+)'/
        ? ($1) : BAIL_OUT("could not extract VERSION from lib/Paws.pm");
};

my $tarball = "$dist_dir/Paws-$svc-$version.tar.gz";
ok(-r $tarball, "tarball produced at $tarball") or BAIL_OUT("no tarball");

# Extract into a scratch dir so we read the shipped sources exactly as
# a consumer's cpanm/cpm would after unpacking.
my $extract = tempdir(CLEANUP => 1);
is(system('tar', '-xzf', $tarball, '-C', $extract), 0, "extracted tarball");

my $base    = "$extract/Paws-$svc-$version";
my $svc_pm  = "$base/lib/Paws/$svc.pm";
my $meta    = "$base/META.yml";

ok(-r $svc_pm, "top-level service module present at lib/Paws/$svc.pm");

my $pm_body = do {
    open my $fh, '<', $svc_pm or BAIL_OUT("open $svc_pm: $!");
    local $/; <$fh>;
};

like(
    $pm_body,
    qr/our \s+ \$VERSION \s* = \s* '\Q$version\E';/x,
    "lib/Paws/$svc.pm declares our \$VERSION = '$version' (#187)",
);

# The injected $VERSION must agree with META.yml's provides version,
# otherwise post-install version-assertion warnings can trip.
my $meta_body = do {
    open my $fh, '<', $meta or BAIL_OUT("open $meta: $!");
    local $/; <$fh>;
};
my ($provides_version) = $meta_body =~ /Paws::\Q$svc\E:\s*\n\s+file:[^\n]*\n\s+version:\s*(\S+)/;
is($provides_version, $version,
    "META.yml provides Paws::$svc version matches dist version $version");

# Cross-check via Module::Metadata when available: this is what cpm
# actually uses to read an installed module's version.
SKIP: {
    eval { require Module::Metadata; 1 }
        or skip "Module::Metadata not available", 1;
    my $mm = Module::Metadata->new_from_file($svc_pm);
    is($mm->version("Paws::$svc"), $version,
        "Module::Metadata reads Paws::$svc version as $version");
}

remove_tree($dist_dir);
remove_tree("$repo_root/tmp/build") if -d "$repo_root/tmp/build";

done_testing;

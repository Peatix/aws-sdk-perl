#!/usr/bin/env perl
# t/build/06_serdes_register.t
#
# Regression guard: the SerDes side-table (wire keys, locations,
# traits) must be emitted INTO each materialised class source so it
# survives the dump-to-.pm (emit_callback) path used by
# script/build-modular-dist.
#
# Before this was fixed, the materialiser only called
# Paws::SerDes->register in the *build process's* memory; the emitted
# .pm files carried no registration. An installed class therefore fell
# back to Paws::SerDes->_build_from_meta, which only sees attribute
# names and defaults every wire_key to the attribute name. That
# silently broke serialisation for every member whose wire key differs
# in case from the Paws attribute name (the common rest-json case,
# e.g. `registries` vs `Registries`): requests dropped the field and
# responses never populated it.
#
# This test builds a rest-json service, extracts an emitted response
# class, loads it in a FRESH interpreter (so the runtime materialiser
# never runs and can't mask a missing registration), and asserts the
# wire_key reflects the camelCase locationName from the model.

use strict;
use warnings;
use Test::More;
use FindBin;
use File::Path qw(remove_tree make_path);

my $repo_root = "$FindBin::Bin/../..";
my $script    = "$repo_root/script/build-modular-dist";
plan skip_all => "build-modular-dist not present" unless -x $script;

local $ENV{SOURCE_DATE_EPOCH} = '1700000000';

my $svc      = 'ECRPublic';
my $dist_dir = "$repo_root/tmp/test-serdes";
my $extract  = "$repo_root/tmp/test-serdes-extract";
remove_tree($_) for grep { -d } ($dist_dir, $extract, "$repo_root/tmp/build");
make_path($extract);

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

is(system('tar', '-xzf', $tarball, '-C', $extract), 0, "extracted tarball");
my $pkg_root = "$extract/Paws-$svc-$version/lib";

my $response_pm = "$pkg_root/Paws/$svc/DescribeRegistriesResponse.pm";
ok(-r $response_pm, "emitted response class present");

# The emitted source must self-register its side-table.
my $src = do { open my $fh, '<', $response_pm or die $!; local $/; <$fh> };
like($src, qr/Paws::SerDes->register\(/,
    "emitted response source contains a Paws::SerDes->register call");

# Load the emitted class in a fresh interpreter (Core lib on @INC, but
# NOT t/lib's runtime materialiser shim) and read back the wire_key.
# A regression (no registration) makes _build_from_meta default the
# wire_key to the attribute name 'Registries'.
my $probe = <<'PROBE';
use strict;
use warnings;
use Paws;
use Paws::SerDes;
require Paws::ECRPublic::DescribeRegistriesResponse;
require Paws::ECRPublic::AuthorizationData;
print "registries=",
    Paws::SerDes->for("Paws::ECRPublic::DescribeRegistriesResponse")
        ->wire_key_for("Registries"), "\n";
print "auth_token=",
    Paws::SerDes->for("Paws::ECRPublic::AuthorizationData")
        ->wire_key_for("AuthorizationToken"), "\n";
PROBE

my $out = qx{$^X -I "$pkg_root" -I "$repo_root/lib" -e '$probe' 2>&1};
is($?, 0, "probe interpreter loaded the emitted class cleanly")
    or diag($out);

like($out, qr/^registries=registries$/m,
    "installed wire_key for Registries is the camelCase model name");
like($out, qr/^auth_token=authorizationToken$/m,
    "installed wire_key for AuthorizationToken is the camelCase model name");

remove_tree($_) for grep { -d } ($dist_dir, $extract, "$repo_root/tmp/build");

done_testing;

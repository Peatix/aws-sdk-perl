#!/usr/bin/env perl

# Test the Paws::Materializer::Auto opt-in hook.
#
# Verifies:
#   - The hook installs without breaking on-disk class loads
#     (PAWS_LAZY_FORCE off).
#   - With PAWS_LAZY_FORCE=1, classes are materialised even when an
#     on-disk version exists.
#   - PAWS_OO_BACKEND=Moo selects the Moo materialiser.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../../builder-lib";
use lib "$Bin/../../lib";

# Tell the hook where to find source files.
$ENV{PAWS_LAZY_DIR}   = "$Bin/fixtures";
$ENV{PAWS_LAZY_FORCE} = '1';

require Paws::Materializer::Auto;
Paws::Materializer::Auto->import;

# The service name in the fixture is 'TinyService' (from sdkId in
# Smithy + serviceId in botocore JSON). Materialising it should
# create Paws::TinyService and friends in memory.
require Paws;

ok(Paws->can('load_class'), 'Paws still has load_class after hook install');

subtest 'load_class materialises Paws::TinyService (default backend)' => sub {
    # Default backend is Moo from PR13. Test the default path here;
    # the Moose-backend smoke is in t/model/02_materializer_smoke.t
    # and the Moo-backend smoke is in t/model/03_materializer_moo.t.
    eval { Paws->load_class('Paws::TinyService') };
    is($@, '', 'load_class did not die') or diag $@;
    ok(Paws::TinyService->can('service'), 'service class has service()');
    is(Paws::TinyService->service, 'tinyservice', 'service identity');
    ok(Paws::TinyService->can('GetThing'), 'operation method present');
};

subtest 'PAWS_OO_BACKEND=Moose escape hatch (post-PR13)' => sub {
    require IPC::Open3;
    require Symbol;

    local $ENV{PAWS_LAZY_DIR}   = "$Bin/fixtures";
    local $ENV{PAWS_LAZY_FORCE} = '1';
    local $ENV{PAWS_OO_BACKEND} = 'Moose';

    my $err = Symbol::gensym();
    my $pid = IPC::Open3::open3(
        my $in, my $out, $err,
        $^X,
        '-I', "$Bin/../../builder-lib",
        '-I', "$Bin/../../lib",
        '-I', "$Bin/../../auto-lib",
        '-MPaws::Materializer::Auto',
        '-e', q{
            use Paws;
            Paws->load_class('Paws::TinyService');
            print "ok\n" if Paws::TinyService->can('GetThing');
        },
    );
    close $in;
    my $stdout = do { local $/; <$out> };
    my $stderr = do { local $/; <$err> };
    waitpid $pid, 0;
    like($stdout, qr/^ok$/m, 'service class built under Moose backend (escape hatch)')
        or diag "stdout=$stdout stderr=$stderr";
};

subtest 'PAWS_OO_BACKEND=Moo (now the default)' => sub {
    # Reload under the Moo backend in a child process so we don't
    # collide with the Moose-built Paws::TinyService from the previous
    # subtest. Use IPC::Open3 so we don't depend on shell quoting.
    require IPC::Open3;
    require Symbol;

    local $ENV{PAWS_LAZY_DIR}   = "$Bin/fixtures";
    local $ENV{PAWS_LAZY_FORCE} = '1';
    local $ENV{PAWS_OO_BACKEND} = 'Moo';

    my $err = Symbol::gensym();
    my $pid = IPC::Open3::open3(
        my $in, my $out, $err,
        $^X,
        '-I', "$Bin/../../builder-lib",
        '-I', "$Bin/../../lib",
        '-I', "$Bin/../../auto-lib",
        '-MPaws::Materializer::Auto',
        '-e', q{
            use Paws;
            Paws->load_class('Paws::TinyService');
            print "ok\n" if Paws::TinyService->can('GetThing');
        },
    );
    close $in;
    my $stdout = do { local $/; <$out> };
    my $stderr = do { local $/; <$err> };
    waitpid $pid, 0;
    like($stdout, qr/^ok$/m, 'service class built under Moo backend in child')
        or diag "stdout=$stdout stderr=$stderr";
};

done_testing;

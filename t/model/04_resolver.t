#!/usr/bin/env perl

# Tests for Paws::Model::Loader::Resolver.
#
# The resolver tries loaders in the configured order and returns the
# IR produced by the first one that finds a source file. Default order
# prefers Smithy over Botocore; PAWS_LOADER_ORDER overrides.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use Test::Exception;

use lib "$Bin/../../builder-lib";

use Paws::Model::Loader::Resolver;

# We point both search paths at our fixture tree. The Smithy fixture
# is at .../tinyservice.smithy.json, the Botocore fixture is at
# .../tinyservice/2024-01-01/service-2.json.
my $smithy_dir   = "$Bin/fixtures";
my $botocore_dir = "$Bin/fixtures";

sub make_resolver {
    my (%overrides) = @_;
    return Paws::Model::Loader::Resolver->new(
        smithy_search_paths   => [$smithy_dir],
        botocore_search_paths => [$botocore_dir],
        %overrides,
    );
}

subtest 'default order prefers Smithy when both available' => sub {
    delete local $ENV{PAWS_LOADER_ORDER};

    my $r = make_resolver();
    my ($ir, $loader) = $r->load_service('tinyservice');
    is($loader,         'Smithy',     'resolver chose Smithy');
    is($ir->name,       'TinyService','IR built from Smithy fixture');
    is($ir->protocol,   'json',       'protocol mapped from awsJson1_1');
};

subtest 'PAWS_LOADER_ORDER pins the order' => sub {
    local $ENV{PAWS_LOADER_ORDER} = 'Botocore,Smithy';

    my $r = make_resolver();
    my ($ir, $loader) = $r->load_service('tinyservice');
    is($loader,         'Botocore',   'resolver chose Botocore (env override)');
    is($ir->name,       'TinyService','IR built from Botocore fixture');
};

subtest 'falls back when first loader has no file' => sub {
    delete local $ENV{PAWS_LOADER_ORDER};

    my $r = Paws::Model::Loader::Resolver->new(
        smithy_search_paths   => ['/nonexistent/smithy'],
        botocore_search_paths => [$botocore_dir],
    );
    my ($ir, $loader) = $r->load_service('tinyservice');
    is($loader, 'Botocore', 'resolver fell back to Botocore');
    is($ir->name, 'TinyService', 'IR loaded');
};

subtest 'unknown service raises' => sub {
    my $r = make_resolver();
    throws_ok { $r->load_service('does-not-exist') }
        qr/no source file/,
        'unknown service raises';
};

subtest 'unknown loader name in order raises' => sub {
    local $ENV{PAWS_LOADER_ORDER} = 'OpenAPI,Botocore';
    my $r = make_resolver();
    throws_ok { $r->load_service('tinyservice') }
        qr/unknown loader name/,
        'unknown loader name in PAWS_LOADER_ORDER raises';
};

done_testing;

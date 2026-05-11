#!/usr/bin/env perl

# Tests for Paws::Model::Loader::Resolver.
#
# The resolver finds Smithy IR files and loads them via the Smithy
# loader. Smithy is the sole source of service definitions.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use Test::Exception;

use lib "$Bin/../../builder-lib";

use Paws::Model::Loader::Resolver;

my $smithy_dir = "$Bin/fixtures";

sub make_resolver {
    my (%overrides) = @_;
    return Paws::Model::Loader::Resolver->new(
        smithy_search_paths => [$smithy_dir],
        %overrides,
    );
}

subtest 'loads service from Smithy IR' => sub {
    my $r = make_resolver();

    my ($ir, $loader) = $r->load_service('tinyservice');
    is($loader,         'Smithy',     'resolver chose Smithy');
    is($ir->name,       'TinyService','IR built from Smithy fixture');
    is($ir->protocol,   'json',       'protocol mapped from awsJson1_1');
};

subtest 'unknown service raises' => sub {
    my $r = make_resolver();
    throws_ok { $r->load_service('does-not-exist') }
        qr/no source file/,
        'unknown service raises';
};

subtest 'dropped service raises with deprecation reason' => sub {
    delete local $ENV{PAWS_LOADER_ORDER};
    my $r = make_resolver();
    throws_ok { $r->load_service('OpsWorks') }
        qr/no longer ship-able.*OpsWorks Stacks shutdown 2024-05-26.*deprecated-services\.md/s,
        'OpsWorks raises with shutdown date + doc pointer';

    throws_ok { $r->load_service('QLDB') }
        qr/no longer ship-able.*QLDB shutdown 2025-07-31/s,
        'QLDB raises with shutdown date';

    throws_ok { $r->load_service('SMS') }
        qr/no longer ship-able.*Server Migration Service.*MGN/s,
        'SMS raises with successor pointer (MGN)';
};

subtest 'PAWS_TO_SMITHY name map covers cosmetic + substantive renames' => sub {
    # Cosmetic separator differences:
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{ApiGateway},
       'api-gateway',
       'ApiGateway -> api-gateway';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{ACMPCA},
       'acm-pca',
       'ACMPCA -> acm-pca (not derivable from lc())';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{CloudHSMv2},
       'cloudhsm-v2',
       'CloudHSMv2 -> cloudhsm-v2';

    # Substantive renames:
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{DMS},
       'database-migration-service',
       'DMS -> database-migration-service';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{ELB},
       'elastic-load-balancing',
       'ELB -> elastic-load-balancing';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{StepFunctions},
       'sfn',
       'StepFunctions -> sfn';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{SDB},
       'simpledbv2',
       'SDB -> simpledbv2 (Smithy ships only the v2 SigV4 model)';

    # The events / EventBridge ambiguity:
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{EventBridge},
       'eventbridge',
       'EventBridge -> eventbridge (canonical)';
    is $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{CloudWatchEvents},
       'cloudwatch-events',
       'CloudWatchEvents -> cloudwatch-events (legacy alias)';

    # Services not in the map fall through to lc():
    ok !exists $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{IAM},
       'IAM not in map (lc() fallback covers it)';
    ok !exists $Paws::Model::Loader::Resolver::PAWS_TO_SMITHY{S3},
       'S3 not in map (lc() fallback covers it)';
};

done_testing;

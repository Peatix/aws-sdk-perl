#!/usr/bin/env perl

# Round-trip test for Paws::Model::IR::ToHash.
#
# Loads the tinyservice botocore fixture, reshapes via the loader +
# ToHash, and asserts that the reshaped hash carries the fields the
# Paws::API::Builder generator reads (metadata, operations, shapes,
# member traits). Doesn't insist on byte-identical because field
# ordering inside hashes isn't observable from Perl - the
# byte-identical regen CI workflow (.github/workflows/regen-byte-
# identical.yml from PR 09) is the cross-cutting gate for end-to-end
# template output.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../../builder-lib";

use Paws::Model::Loader::Botocore;
use Paws::Model::IR::ToHash;

my $fixture = "$Bin/fixtures/tinyservice/2024-01-01/service-2.json";
my $ir      = Paws::Model::Loader::Botocore->new->load($fixture);
my $hash    = Paws::Model::IR::ToHash->reshape($ir);

subtest 'metadata round-trips' => sub {
    is($hash->{metadata}{endpointPrefix},  'tinyservice', 'endpointPrefix');
    is($hash->{metadata}{apiVersion},      '2024-01-01',  'apiVersion');
    is($hash->{metadata}{protocol},        'json',        'protocol');
    is($hash->{metadata}{jsonVersion},     '1.1',         'jsonVersion');
    is($hash->{metadata}{targetPrefix},    'TinyService', 'targetPrefix');
    is($hash->{metadata}{serviceFullName}, 'Tiny Service for Tests', 'serviceFullName');
};

subtest 'operations carry HTTP shape' => sub {
    is($hash->{operations}{ListThings}{name},                'ListThings');
    is($hash->{operations}{ListThings}{http}{method},        'POST');
    is($hash->{operations}{ListThings}{http}{requestUri},    '/');
    is($hash->{operations}{ListThings}{input}{shape},        'ListThingsRequest');
    is($hash->{operations}{ListThings}{output}{shape},       'ListThingsResponse');
    is($hash->{operations}{GetThing}{http}{method},          'GET');
    is($hash->{operations}{GetThing}{http}{requestUri},      '/things/{ThingId}');
    is($hash->{operations}{DeleteThing}{http}{responseCode}, 204);
    ok($hash->{operations}{DeleteThing}{deprecated},         'deprecated set');
};

subtest 'shapes preserve members + locations' => sub {
    my $thing = $hash->{shapes}{Thing};
    is($thing->{type}, 'structure',                          'Thing type');
    is_deeply($thing->{required}, [qw(ThingId ThingName)],   'required preserved');
    is($thing->{members}{ThingName}{shape},        'ThingName');
    is($thing->{members}{ThingName}{locationName}, 'name',    'locationName preserved');

    my $list = $hash->{shapes}{ThingList};
    is($list->{type},          'list');
    is($list->{member}{shape}, 'Thing');
    is($list->{member}{locationName}, 'thing');

    my $list_req = $hash->{shapes}{ListThingsRequest};
    is($list_req->{members}{Filter}{location},     'querystring');
    is($list_req->{members}{Filter}{locationName}, 'filter');

    my $get_req = $hash->{shapes}{GetThingRequest};
    is($get_req->{members}{ThingId}{location},     'uri');
    is($get_req->{members}{ThingId}{locationName}, 'ThingId');

    my $del_req = $hash->{shapes}{DeleteThingRequest};
    is($del_req->{members}{ETag}{location},     'header');
    is($del_req->{members}{ETag}{locationName}, 'If-Match');

    my $resp = $hash->{shapes}{GetThingResponse};
    is($resp->{payload}, 'Thing', 'payload preserved');
};

subtest 'enum string round-trips' => sub {
    my $status = $hash->{shapes}{Status};
    is($status->{type}, 'string',                          'enum type is string');
    is_deeply($status->{enum}, [qw(ACTIVE DISABLED DELETED)], 'enum values preserved');
};

done_testing;

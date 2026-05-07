#!/usr/bin/env perl

# Unit tests for Paws::Model::Loader::Botocore.
#
# Loads a tiny synthetic service-2.json under t/model/fixtures/tinyservice/
# and asserts the IR has the right shape. Avoids dependence on the
# botocore submodule (which may not be checked out in CI).

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use Test::Exception;

use lib "$Bin/../../builder-lib";

use Paws::Model::IR;
use Paws::Model::Loader::Botocore;

my $fixture = "$Bin/fixtures/tinyservice/2024-01-01/service-2.json";
my $loader  = Paws::Model::Loader::Botocore->new;

is($loader->name, 'botocore', 'loader identifies as botocore');

my $svc = $loader->load($fixture);
isa_ok($svc, 'Paws::Model::IR::Service', 'load returns a Service');

subtest 'service metadata' => sub {
    is($svc->name,            'TinyService',           'serviceId mapped to name');
    is($svc->endpoint_prefix, 'tinyservice',           'endpoint_prefix mapped');
    is($svc->api_version,     '2024-01-01',            'api_version mapped');
    is($svc->protocol,        'json',                  'protocol mapped');
    is($svc->json_version,    '1.1',                   'jsonVersion mapped');
    is($svc->target_prefix,   'TinyService',           'targetPrefix mapped');
    is($svc->signature_version, 'v4',                  'signatureVersion mapped');
    is($svc->uid,             'tinyservice-2024-01-01','uid mapped');
    like($svc->documentation, qr/synthetic service/,  'documentation mapped');
};

subtest 'operation surface' => sub {
    is_deeply(
        [ $svc->operation_names ],
        [ qw(DeleteThing GetThing ListThings) ],
        'all operations enumerated',
    );

    my $list = $svc->operation('ListThings');
    isa_ok($list, 'Paws::Model::IR::Operation');
    is($list->http_method, 'POST',                   'http_method');
    is($list->http_uri,    '/',                      'http_uri');
    is($list->input_shape, 'ListThingsRequest',      'input_shape');
    is($list->output_shape,'ListThingsResponse',     'output_shape');
    is_deeply($list->error_shapes, ['ThrottlingException'], 'error_shapes');
    is_deeply($list->paginator, {
        input_token  => 'NextToken',
        output_token => 'NextToken',
        limit_key    => 'MaxResults',
        result_key   => 'Things',
    }, 'paginator absorbed from sibling paginators-1.json');
    ok(!$list->deprecated, 'not deprecated');

    my $get = $svc->operation('GetThing');
    is($get->http_method, 'GET',                    'GET method');
    is($get->http_uri,    '/things/{ThingId}',      'URI with placeholder');
    ok(!defined $get->http_status_code, 'no responseCode override');

    my $del = $svc->operation('DeleteThing');
    is($del->http_method, 'DELETE',                 'DELETE method');
    is($del->http_status_code, 204,                 'responseCode mapped to http_status_code');
    ok($del->deprecated, 'deprecated mapped');
};

subtest 'shape surface' => sub {
    my @names = $svc->shape_names;
    ok(scalar(grep { $_ eq 'Thing' } @names), 'Thing shape present');
    ok(scalar(grep { $_ eq 'Status' } @names), 'Status shape present');

    my $thing = $svc->shape('Thing');
    isa_ok($thing, 'Paws::Model::IR::Shape');
    ok($thing->is_structure, 'Thing is a structure');
    is_deeply([ sort keys %{ $thing->members } ], [qw(Status ThingId ThingName)], 'members');
    is_deeply($thing->required_members, [qw(ThingId ThingName)], 'required');

    my $status = $svc->shape('Status');
    is_deeply($status->enum_values, [qw(ACTIVE DISABLED DELETED)], 'enum_values');

    my $list = $svc->shape('ThingList');
    ok($list->is_list, 'ThingList is a list');
    is($list->list_member_shape, 'Thing', 'list element shape');
    is($list->list_member_locationName, 'thing', 'list element locationName');
    ok(!$list->flattened, 'not flattened');

    my $map = $svc->shape('TagMap');
    ok($map->is_map, 'TagMap is a map');
    is($map->map_key_shape,   'ThingName', 'map key shape');
    is($map->map_value_shape, 'ThingName', 'map value shape');

    my $resp = $svc->shape('GetThingResponse');
    is($resp->payload, 'Thing', 'payload member identified');
};

subtest 'member traits' => sub {
    my $list_req = $svc->shape('ListThingsRequest');
    my $filter   = $list_req->members->{Filter};
    is($filter->location,     'querystring', 'querystring location');
    is($filter->locationName, 'filter',      'querystring locationName');

    my $get_req = $svc->shape('GetThingRequest');
    my $id      = $get_req->members->{ThingId};
    is($id->location,     'uri',     'uri location');
    is($id->locationName, 'ThingId', 'uri locationName');

    my $del_req = $svc->shape('DeleteThingRequest');
    my $etag    = $del_req->members->{ETag};
    is($etag->location,     'header',   'header location');
    is($etag->locationName, 'If-Match', 'header name');

    my $thing = $svc->shape('Thing');
    is($thing->members->{ThingName}->locationName, 'name',
        'structure member locationName (for wire renaming)');
};

subtest 'error handling' => sub {
    throws_ok {
        $loader->load("$Bin/no-such-file.json");
    } qr/cannot read/, 'unreadable path is reported';

    throws_ok {
        $loader->load({ });
    } qr/service_2.*required/, 'hashref form requires service_2';
};

done_testing;

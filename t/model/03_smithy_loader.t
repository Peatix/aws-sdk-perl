#!/usr/bin/env perl

# Unit tests for Paws::Model::Loader::Smithy.
#
# Loads a synthetic Smithy 2.0 AST under t/model/fixtures/tinyservice/
# and asserts the IR has the right shape.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../../builder-lib";

use Paws::Model::IR;
use Paws::Model::Loader::Smithy;

my $smithy_path   = "$Bin/fixtures/tinyservice/tinyservice.smithy.json";

my $smithy_loader   = Paws::Model::Loader::Smithy->new;
is($smithy_loader->name, 'smithy', 'loader identifies as smithy');

my $svc = $smithy_loader->load($smithy_path);
isa_ok($svc, 'Paws::Model::IR::Service', 'load returns a Service');

subtest 'service metadata' => sub {
    is($svc->name,            'TinyService',           'sdkId mapped to name');
    is($svc->endpoint_prefix, 'tinyservice',           'endpoint_prefix mapped');
    is($svc->api_version,     '2024-01-01',            'api_version mapped');
    is($svc->protocol,        'json',                  'awsJson1_1 -> json protocol');
    is($svc->json_version,    '1.1',                   'json_version derived from protocol trait');
    is($svc->target_prefix,   'TinyService',           'targetPrefix from sdkId');
    like($svc->documentation, qr/synthetic service/,  'documentation mapped');
    is($svc->xml_namespace,
       'http://tinyservice.example.com/doc/2024-01-01/',
       'service-level smithy.api#xmlNamespace.uri lifted to IR');
};

subtest 'operation surface' => sub {
    is_deeply(
        [ $svc->operation_names ],
        [ qw(DeleteThing GetThing ListThings) ],
        'all operations enumerated',
    );

    my $list = $svc->operation('ListThings');
    isa_ok($list, 'Paws::Model::IR::Operation');
    is($list->http_method, 'POST',                'http_method from smithy.api#http');
    is($list->http_uri,    '/',                   'http_uri from smithy.api#http');
    is($list->input_shape, 'ListThingsRequest',   'input_shape (local part)');
    is($list->output_shape,'ListThingsResponse',  'output_shape (local part)');
    is_deeply($list->error_shapes, ['ThrottlingException'], 'error shape (local part)');

    my $get = $svc->operation('GetThing');
    is($get->http_method, 'GET',                  'GET method');
    is($get->http_uri,    '/things/{ThingId}',    'URI with placeholder');

    my $del = $svc->operation('DeleteThing');
    is($del->http_method, 'DELETE',               'DELETE method');
    is($del->http_status_code, 204,               'http code from smithy.api#http.code');
    ok($del->deprecated, 'deprecated trait mapped');
    ok($del->http_checksum_required,
       'aws.protocols#httpChecksum.requestChecksumRequired -> http_checksum_required');
    is($del->http_checksum_algorithm_member, 'ChecksumAlgorithm',
       'aws.protocols#httpChecksum.requestAlgorithmMember -> http_checksum_algorithm_member');

    ok(!$svc->operation('GetThing')->http_checksum_required,
       'operation without the trait defaults to http_checksum_required=0');
    is($svc->operation('GetThing')->http_checksum_algorithm_member, undef,
       'operation without the trait defaults to http_checksum_algorithm_member=undef');
};

subtest 'shape surface' => sub {
    my $thing = $svc->shape('Thing');
    isa_ok($thing, 'Paws::Model::IR::Shape');
    ok($thing->is_structure, 'Thing is a structure');
    is_deeply([ sort keys %{ $thing->members } ], [qw(Status ThingId ThingName)], 'members');
    is_deeply($thing->required_members, [qw(ThingId ThingName)], 'required (from per-member smithy.api#required)');
    is($thing->xml_namespace,
       'http://tinyservice.example.com/doc/2024-01-01/Thing',
       'per-shape smithy.api#xmlNamespace.uri lifted to IR');
    is($thing->xml_name, 'TinyThing',
       'per-shape smithy.api#xmlName lifted to IR');

    # Shapes without explicit xml traits get undef, not garbage.
    is($svc->shape('ListThingsRequest')->xml_namespace, undef,
       'shape without smithy.api#xmlNamespace has undef xml_namespace');
    is($svc->shape('ListThingsRequest')->xml_name, undef,
       'shape without smithy.api#xmlName has undef xml_name');

    my $status = $svc->shape('Status');
    is($status->type, 'string', 'enum normalised back to string');
    is_deeply([ sort @{ $status->enum_values } ], [qw(ACTIVE DELETED DISABLED)], 'enum_values');

    my $list = $svc->shape('ThingList');
    ok($list->is_list, 'ThingList is a list');
    is($list->list_member_shape, 'Thing', 'list element shape (local part)');

    my $resp = $svc->shape('GetThingResponse');
    isa_ok($resp, 'Paws::Model::IR::Shape');
};

subtest 'member traits map to IR locations' => sub {
    my $list_req = $svc->shape('ListThingsRequest');
    my $filter   = $list_req->members->{Filter};
    is($filter->location,     'querystring', 'smithy.api#httpQuery -> querystring');
    is($filter->locationName, 'filter',      'querystring location_name');

    my $get_req = $svc->shape('GetThingRequest');
    my $id      = $get_req->members->{ThingId};
    is($id->location,     'uri',     'smithy.api#httpLabel -> uri');
    is($id->locationName, 'ThingId', 'uri label name = member name');

    my $del_req = $svc->shape('DeleteThingRequest');
    my $etag    = $del_req->members->{ETag};
    is($etag->location,     'header',   'smithy.api#httpHeader -> header');
    is($etag->locationName, 'If-Match', 'header name from trait value');

    my $thing = $svc->shape('Thing');
    is($thing->members->{ThingName}->locationName, 'name',
        'smithy.api#jsonName carried as locationName (NameInRequest equivalent)');

    # Member-side smithy.api#xmlFlattened. The IR records it on the
    # member itself (in addition to whatever the target shape says);
    # the materialiser folds either source into a single per-attribute
    # flag in the SerDes side-table.
    my $list_resp = $svc->shape('ListThingsResponse');
    ok($list_resp->members->{Things}->flattened,
       'member-level smithy.api#xmlFlattened lifted to IR Member->flattened');
    is($list_resp->members->{Things}->locationName, 'TinyThing',
       'list member-level smithy.api#xmlName lifted to IR Member->locationName');
    ok(!$list_resp->members->{Count}->flattened,
       'non-list member defaults to flattened=0');
};

done_testing;

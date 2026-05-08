#!/usr/bin/env perl

# Unit tests for Paws::Model::Loader::Smithy.
#
# Loads a synthetic Smithy 2.0 AST under t/model/fixtures/tinyservice/
# and asserts the IR matches what the Botocore loader produces from
# its sibling service-2.json (modulo Smithy-only fields like enum
# representation differences).
#
# This is the IR-parity test the plan called for in PR14: services
# present in both formats should produce equivalent IR.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../../builder-lib";

use Paws::Model::IR;
use Paws::Model::Loader::Smithy;
use Paws::Model::Loader::Botocore;

my $smithy_path   = "$Bin/fixtures/tinyservice/tinyservice.smithy.json";
my $botocore_path = "$Bin/fixtures/tinyservice/2024-01-01/service-2.json";

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
};

subtest 'shape surface' => sub {
    my $thing = $svc->shape('Thing');
    isa_ok($thing, 'Paws::Model::IR::Shape');
    ok($thing->is_structure, 'Thing is a structure');
    is_deeply([ sort keys %{ $thing->members } ], [qw(Status ThingId ThingName)], 'members');
    is_deeply($thing->required_members, [qw(ThingId ThingName)], 'required (from per-member smithy.api#required)');

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
};

# IR parity vs the Botocore loader on the same service.
subtest 'IR parity with Botocore loader on the same service' => sub {
    my $boto = Paws::Model::Loader::Botocore->new->load($botocore_path);

    is($svc->endpoint_prefix, $boto->endpoint_prefix, 'endpoint_prefix matches');
    is($svc->protocol,        $boto->protocol,        'protocol matches');
    is($svc->api_version,     $boto->api_version,     'api_version matches');

    is_deeply(
        [ $svc->operation_names ],
        [ $boto->operation_names ],
        'same operations',
    );

    for my $op_name ($boto->operation_names) {
        my $s = $svc->operation($op_name);
        my $b = $boto->operation($op_name);
        is($s->http_method,  $b->http_method,  "$op_name: same http method");
        is($s->http_uri,     $b->http_uri,     "$op_name: same http uri");
        is($s->input_shape,  $b->input_shape,  "$op_name: same input shape");
        is($s->output_shape, $b->output_shape, "$op_name: same output shape");
    }

    # Member-level: pick the Filter parameter and verify locations match.
    is($svc->shape('ListThingsRequest')->members->{Filter}->location,
       $boto->shape('ListThingsRequest')->members->{Filter}->location,
       'Filter location parity (querystring)');
    is($svc->shape('DeleteThingRequest')->members->{ETag}->location,
       $boto->shape('DeleteThingRequest')->members->{ETag}->location,
       'ETag location parity (header)');
    is($svc->shape('Thing')->members->{ThingName}->locationName,
       $boto->shape('Thing')->members->{ThingName}->locationName,
       'ThingName locationName parity (name)');
};

done_testing;

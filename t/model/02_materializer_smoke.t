#!/usr/bin/env perl

# Smoke test for Paws::Model::Materializer.
#
# Loads the synthetic tinyservice fixture via Paws::Model::Loader::Smithy
# and asks Paws::Model::Materializer to build the corresponding Moo classes
# in memory. Verifies:
#
#   - the service class exists and responds to operations(),
#   - operation classes have the right _api_call/_api_method/_api_uri,
#   - shape classes have the right attributes with the right traits,
#
# This is the gate that PR10 (lazy default) will use to prove the
# materialised classes are equivalent to the on-disk ones.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../lib";
use lib "$Bin/../../builder-lib";
use lib "$Bin/../../lib";

use Paws::Model::Loader::Smithy;
use Paws::Model::Materializer;
use Paws::SerDes;

my $fixture = "$Bin/fixtures/tinyservice/tinyservice.smithy.json";
my $loader  = Paws::Model::Loader::Smithy->new;
my $svc_ir  = $loader->load($fixture);

# Rename the IR's service so we don't collide with anything in
# auto-lib/Paws/. Materialiser will build Paws::T9SmokeService::*.
my $renamed = Paws::Model::IR::Service->new(
    name              => 'T9SmokeService',
    full_name         => $svc_ir->full_name,
    endpoint_prefix   => $svc_ir->endpoint_prefix,
    signing_name      => $svc_ir->signing_name,
    api_version       => $svc_ir->api_version,
    protocol          => $svc_ir->protocol,
    json_version      => $svc_ir->json_version,
    target_prefix     => $svc_ir->target_prefix,
    signature_version => $svc_ir->signature_version,
    operations        => $svc_ir->operations,
    shapes            => $svc_ir->shapes,
);

my $mat = Paws::Model::Materializer->new(loader => $loader);
my $svc_pkg = $mat->materialize_service($renamed);
is($svc_pkg, 'Paws::T9SmokeService', 'service package returned');

subtest 'service class basics' => sub {
    can_ok($svc_pkg, qw(service version operations));
    is($svc_pkg->service, 'tinyservice', 'service identity');
    is($svc_pkg->version, '2024-01-01',  'version identity');
    is_deeply(
        [ sort $svc_pkg->operations ],
        [ qw(DeleteThing GetThing ListThings) ],
        'operations enumerated',
    );
};

subtest 'operation class metadata' => sub {
    my $op_pkg = 'Paws::T9SmokeService::ListThings';
    can_ok($op_pkg, '_api_call');
    is($op_pkg->_api_call,   'ListThings',          'api_call');
    is($op_pkg->_api_method, 'POST',                'method');
    is($op_pkg->_api_uri,    '/',                   'uri');
    is($op_pkg->_returns,    'Paws::T9SmokeService::ListThingsResponse',
        '_returns points at output shape package');

    my $get_pkg = 'Paws::T9SmokeService::GetThing';
    is($get_pkg->_api_method, 'GET',                 'GET');
    is($get_pkg->_api_uri,    '/things/{ThingId}',   'uri with placeholder');
};

subtest 'shape class with structure members' => sub {
    my $thing = 'Paws::T9SmokeService::Thing';
    can_ok($thing, qw(ThingId ThingName Status));
    my $serdes = Paws::SerDes->for($thing);
    ok($serdes->attributes->{ThingId}{is_required},   'ThingId required');
    ok($serdes->attributes->{ThingName}{is_required}, 'ThingName required');
    ok(!$serdes->attributes->{Status}{is_required},   'Status optional');
};

subtest 'member traits picked up from location' => sub {
    my $del_serdes = Paws::SerDes->for('Paws::T9SmokeService::DeleteThing');
    ok($del_serdes->trait_for('ETag', 'ParamInHeader'),
        'ETag has ParamInHeader trait');
    is($del_serdes->location_name_for('ETag'), 'If-Match', 'header_name carried through');

    my $get_serdes = Paws::SerDes->for('Paws::T9SmokeService::GetThing');
    ok($get_serdes->trait_for('ThingId', 'ParamInURI'),
        'ThingId has ParamInURI trait');
    is($get_serdes->location_name_for('ThingId'), 'ThingId', 'uri_name carried through');

    my $list_serdes = Paws::SerDes->for('Paws::T9SmokeService::ListThings');
    ok($list_serdes->trait_for('Filter', 'ParamInQuery'),
        'Filter has ParamInQuery trait');
    is($list_serdes->location_name_for('Filter'), 'filter', 'query_name carried through');
};

subtest 'NameInRequest applied for renamed body fields' => sub {
    my $thing_serdes = Paws::SerDes->for('Paws::T9SmokeService::Thing');
    ok($thing_serdes->trait_for('ThingName', 'NameInRequest'),
        'ThingName picked up NameInRequest because locationName="name"');
    is($thing_serdes->wire_key_for('ThingName'), 'name', 'request_name carried through');
};

subtest 'list and map shapes typed inline' => sub {
    my $list_serdes = Paws::SerDes->for('Paws::T9SmokeService::ListThingsResponse');
    my $type_str = $list_serdes->type_for('Things');
    like($type_str,
       qr/ArrayRef\[.*Paws::T9SmokeService::Thing/,
       'list typed as ArrayRef[StructureClass]');
};

# End-to-end: a materialised service produced through TestRequestCaller
# generates the same shape of request that an on-disk class would.
# This is the proof that the materialiser is a drop-in replacement for
# the AOT path.
subtest 'materialised service round-trips through the wire layer' => sub {
    require lib;
    lib->import("$Bin/../lib");
    require TestRequestCaller;
    require Paws;
    require Test::CustomCredentials;

    my $caller = TestRequestCaller->new;
    my $svc    = $svc_pkg->new(
        region      => 'us-east-1',
        caller      => $caller,
        credentials => Test::CustomCredentials->new,
    );
    # tinyservice uses the json (RPC) protocol: every request is a
    # POST to / with the operation name in X-Amz-Target and the
    # input as JSON in the body. URI substitution from
    # _api_uri='/things/{ThingId}' would only apply under rest-json.
    my $req = $svc->GetThing(ThingId => 'abc');
    isa_ok($req, 'Paws::Net::APIRequest', 'request prepared by wire layer');
    is($req->method, 'POST', 'JSON-RPC sends POST');
    is($req->uri,    '/',    'JSON-RPC sends to /');
    like(
        $req->header('X-Amz-Target'),
        qr/GetThing/,
        'X-Amz-Target carries op name',
    );
    like(
        $req->content,
        qr/"ThingId"\s*:\s*"abc"/,
        'JSON body contains the parameter',
    );
};

done_testing;

#!/usr/bin/env perl

# Moo + Type::Tiny backend smoke test.
#
# Mirrors t/model/02_materializer_smoke.t but uses Paws::Materializer::Moo
# instead of Paws::Materializer (Moose). The materialised classes are
# Moo, the SerDes side-table is populated directly (no Moose-meta
# introspection), and the wire layer works identically.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../lib";
use lib "$Bin/../../builder-lib";
use lib "$Bin/../../lib";

use Paws::Model::Loader::Botocore;
use Paws::Materializer::Moo;
use Paws::SerDes;

my $fixture = "$Bin/fixtures/tinyservice/2024-01-01/service-2.json";
my $loader  = Paws::Model::Loader::Botocore->new;
my $svc_ir  = $loader->load($fixture);

# Different namespace so we don't collide with the Moose backend test.
my $renamed = Paws::Model::IR::Service->new(
    name              => 'T9MooService',
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

my $mat = Paws::Materializer::Moo->new(loader => $loader);
my $svc_pkg = $mat->materialize_service($renamed);
is($svc_pkg, 'Paws::T9MooService', 'service package returned');

subtest 'Moo service class basics' => sub {
    can_ok($svc_pkg, qw(service version operations));
    is($svc_pkg->service, 'tinyservice', 'service identity');
    is($svc_pkg->version, '2024-01-01',  'version identity');
    is_deeply(
        [ sort $svc_pkg->operations ],
        [ qw(DeleteThing GetThing ListThings) ],
        'operations enumerated',
    );
    # NB: a Moo class doesn't have ->meta natively. The class can be
    # asked to inflate to Moose if anything calls ->meta on an instance,
    # but PR11 ensured the wire layer never does.
};

subtest 'Moo operation class metadata' => sub {
    my $op_pkg = 'Paws::T9MooService::ListThings';
    is($op_pkg->_api_call,   'ListThings',                       'api_call');
    is($op_pkg->_api_method, 'POST',                             'method');
    is($op_pkg->_api_uri,    '/',                                'uri');
    is($op_pkg->_returns,    'Paws::T9MooService::ListThingsResponse',
        '_returns points at output shape package');
};

subtest 'SerDes side-table populated directly (no meta introspection)' => sub {
    my $del_pkg = 'Paws::T9MooService::DeleteThing';
    my $serdes  = Paws::SerDes->for($del_pkg);
    is($serdes->trait_for('ETag', 'ParamInHeader'), 1, 'ETag is ParamInHeader');
    is($serdes->location_for('ETag'),   'header',   'ETag location');
    is($serdes->location_name_for('ETag'), 'If-Match','ETag header name');

    is($serdes->trait_for('ThingId', 'ParamInURI'), 1, 'ThingId is ParamInURI');
    is($serdes->location_name_for('ThingId'), 'ThingId', 'ThingId uri name');

    my $list_pkg = 'Paws::T9MooService::ListThings';
    my $list_sd  = Paws::SerDes->for($list_pkg);
    is($list_sd->trait_for('Filter', 'ParamInQuery'), 1, 'Filter is ParamInQuery');
    is($list_sd->location_name_for('Filter'), 'filter', 'Filter query name');
};

subtest 'NameInRequest applied for renamed body fields' => sub {
    my $thing = 'Paws::T9MooService::Thing';
    my $sd    = Paws::SerDes->for($thing);
    is($sd->trait_for('ThingName', 'NameInRequest'), 1, 'ThingName has NameInRequest');
    is($sd->wire_key_for('ThingName'), 'name',          'wire key is "name"');
};

subtest 'Moo class round-trips through the wire layer' => sub {
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
    my $req = $svc->GetThing(ThingId => 'abc');
    isa_ok($req, 'Paws::Net::APIRequest', 'request prepared by wire layer');
    is($req->method, 'POST',     'JSON-RPC sends POST');
    is($req->uri,    '/',        'JSON-RPC sends to /');
    like(
        $req->header('X-Amz-Target'),
        qr/GetThing/,
        'X-Amz-Target carries op name',
    );
    like(
        $req->content,
        qr/"ThingId"\s*:\s*"abc"/,
        'JSON body contains the parameter (Moo + Type::Tiny end-to-end)',
    );
};

done_testing;

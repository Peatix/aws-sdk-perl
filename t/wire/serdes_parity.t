#!/usr/bin/env perl

# Parity test for Paws::SerDes.
#
# For a representative shape from each protocol family (and each
# attribute trait), assert that the side-table answers match what
# the wire layer used to read directly via $obj->meta->...
#
# This is the gate that PR12 (Moo + Type::Tiny) must keep green: the
# Moo backend's installed side-tables must answer the same questions.

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;          # registers attribute trait packages
use Paws::SerDes;

# Cover one shape per protocol via the synthetic services from PR3/PR4.
use Paws::JsonParamsService::MethodReq;
use Paws::RestJsonParamsService::MethodReq;
use Paws::QueryParamsService::MethodReq;

subtest 'JSON-RPC MethodReq attributes' => sub {
    my $serdes = Paws::SerDes->for('Paws::JsonParamsService::MethodReq');

    # Underscore-prefixed internals must be excluded.
    my @atts = sort $serdes->serializable_attributes;
    is_deeply(
        \@atts,
        [ qw(Flag Items Name Number Object Renamed) ],
        'serializable attributes (no _-prefixed internals)',
    );

    # Plain Str without NameInRequest: wire key == attribute name.
    is($serdes->wire_key_for('Name'), 'Name', 'wire_key_for plain attribute');
    is($serdes->location_for('Name'), 'body', 'location_for plain attribute');
    is($serdes->trait_for('Name', 'NameInRequest'), 0, 'no NameInRequest trait');

    # NameInRequest renames.
    is($serdes->wire_key_for('Renamed'), 'renamed_on_wire', 'NameInRequest renames the wire key');
    is($serdes->trait_for('Renamed', 'NameInRequest'), 1, 'NameInRequest trait set');

    is($serdes->type_for('Items'), 'ArrayRef[Str]', 'list type carried');
    is($serdes->type_for('Object'), 'Paws::JsonParamsService::Object', 'instance type carried');
};

subtest 'RestJSON MethodReq trait routing' => sub {
    my $serdes = Paws::SerDes->for('Paws::RestJsonParamsService::MethodReq');

    is($serdes->location_for('Resource'),  'uri',         'ParamInURI -> uri');
    is($serdes->location_name_for('Resource'), 'resourceId', 'uri location name');
    is($serdes->trait_for('Resource', 'ParamInURI'), 1, 'ParamInURI trait set');

    is($serdes->location_for('Filter'),    'querystring', 'ParamInQuery -> querystring');
    is($serdes->location_name_for('Filter'), 'filter',    'querystring location name');

    is($serdes->location_for('Marker'),    'header',      'ParamInHeader -> header');
    is($serdes->location_name_for('Marker'), 'X-Marker',  'header location name');
};

subtest 'Query MethodReq carries NameInRequest correctly' => sub {
    my $serdes = Paws::SerDes->for('Paws::QueryParamsService::MethodReq');

    is($serdes->wire_key_for('Renamed'), 'RenamedOnWire', 'NameInRequest renames');
    is($serdes->wire_key_for('Name'),    'Name',          'plain attribute keeps name');
    is($serdes->type_for('Items'),       'ArrayRef[Str]', 'list type');
};

subtest 'is_str_to_native_map / is_str_to_obj_map flags' => sub {
    require Paws::JsonParamsService::MapOfArrayOfString;
    my $serdes_native = Paws::SerDes->for('Paws::JsonParamsService::MapOfArrayOfString');
    # The MapOfArrayOfString class composes Paws::API::StrToObjMapParser
    # in the existing fixture; the flag must reflect that.
    ok(
        $serdes_native->is_str_to_obj_map || $serdes_native->is_str_to_native_map,
        'map flag set on map shape',
    );
};

subtest 'caching: repeated calls return the same instance' => sub {
    my $a = Paws::SerDes->for('Paws::JsonParamsService::MethodReq');
    my $b = Paws::SerDes->for('Paws::JsonParamsService::MethodReq');
    is($a, $b, 'same SerDes instance returned per class');

    # Object form gives the same SerDes as the class form.
    require Test::CustomCredentials;
    require Paws;
    require Paws::JsonParamsService;
    my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });
    my $obj = Paws::JsonParamsService::MethodReq->new(Name => 'x');
    my $c   = Paws::SerDes->for($obj);
    is($c, $a, 'object form returns the class-keyed SerDes');
};

done_testing;

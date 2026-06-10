#!/usr/bin/env perl
# t/35_json_timestamp_serialization.t
#
# json / rest-json default timestamp format is `unixTimestamp`: epoch
# seconds encoded as a JSON *number*. The materialiser flattens Smithy
# `timestamp` shapes to the Str type (so callers accept either an epoch
# or a formatted string), and records is_timestamp in the SerDes
# side-table. The JSON callers must use that flag to emit a number
# rather than quoting the value -- otherwise AWS rejects the request
# ("STRING_VALUE can not be converted to milliseconds since epoch",
# observed live against X-Ray GetTraceSummaries / GetServiceGraph).

use strict;
use warnings;
use lib 't/lib';

use Test::More;
use Paws;
use Paws::SerDes;
use Paws::JsonParamsService;
use Paws::RestJsonParamsService;
use JSON::MaybeXS qw(encode_json);
use Scalar::Util qw(looks_like_number);

# A throwaway call class with a timestamp body member and a plain Str
# body member, registered directly into the SerDes side-table the way
# the materialiser would for a real `timestamp` shape.
{
  package Test::TimestampCall;
  use Moo;
  has StartTime => (is => 'ro');
  has Label     => (is => 'ro');
}

Paws::SerDes->register('Test::TimestampCall', [
  { name => 'StartTime', type => 'Str', wire_key => 'StartTime',
    location => 'body', is_timestamp => 1 },
  { name => 'Label',     type => 'Str', wire_key => 'Label',
    location => 'body' },
]);

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

for my $svc_name (qw(JsonParamsService RestJsonParamsService)) {
  my $svc = $aws->service($svc_name, region => 'fake_region');

  my $call = Test::TimestampCall->new(
    StartTime => 1700000000,
    Label     => '1700000000',
  );

  my $data = $svc->_to_jsoncaller_params($call);

  ok(looks_like_number($data->{StartTime}),
    "$svc_name: timestamp member serialises as a number");
  is($data->{Label}, '1700000000',
    "$svc_name: a plain Str member stays a string");

  my $json = encode_json($data);
  like($json, qr/"StartTime"\s*:\s*1700000000\b/,
    "$svc_name: JSON encodes the timestamp as a bare number");
  unlike($json, qr/"StartTime"\s*:\s*"1700000000"/,
    "$svc_name: JSON does not quote the timestamp");
}

# A non-numeric value (e.g. an already-formatted string) must pass
# through untouched rather than being mangled into a number.
{
  my $svc = $aws->service('RestJsonParamsService', region => 'fake_region');
  my $call = Test::TimestampCall->new(
    StartTime => '2023-11-14T22:13:20Z',
    Label     => 'x',
  );
  my $data = $svc->_to_jsoncaller_params($call);
  is($data->{StartTime}, '2023-11-14T22:13:20Z',
    'non-numeric timestamp value passes through unchanged');
}

done_testing;

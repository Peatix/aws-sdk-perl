#!/usr/bin/env perl

# Streaming-body S3 operations (PutObject, UploadPart) carry
# `smithy.api#httpPayload` on a member whose target shape (e.g.
# StreamingBlob) is marked with `smithy.api#streaming`. The
# correct wire behaviour is to bind the raw body bytes to that
# member; no XML wrapper, no Content-Type negotiation, no inner
# serialisation.
#
# The materialiser emits `sub _stream_param { '<member-name>' }`
# on those operation classes so the existing wire-layer
# `_stream_param` path in `Paws::Net::RestXmlCaller::prepare_request_for_call`
# runs.

use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use Test::More;
use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $s3 = Paws->service('S3', region => 'us-west-2');

subtest 'PutObject body is raw bytes (no XML wrapper)' => sub {
    my $req = $s3->PutObject(
        Bucket => 'test-bucket',
        Key    => 'test-key',
        Body   => 'hello world',
    );

    is($req->content, 'hello world',
        'request body equals the raw Body bytes, with no XML wrapping');
    is($req->header('content-length'), length('hello world'),
        'content-length header equals the body byte length');
};

subtest 'PutObject with empty body' => sub {
    my $req = $s3->PutObject(
        Bucket => 'test-bucket',
        Key    => 'test-key',
        Body   => '',
    );

    is($req->content, '',
        'empty Body is sent as an empty body');
    is($req->header('content-length'), 0,
        'content-length=0 for an empty body');
};

subtest 'UploadPart body is raw bytes' => sub {
    my $req = $s3->UploadPart(
        Bucket     => 'test-bucket',
        Key        => 'test-key',
        UploadId   => 'mpu-1',
        PartNumber => 1,
        Body       => 'X' x 1024,
    );

    is(length($req->content), 1024,
        'UploadPart body byte length equals the supplied Body length');
    is($req->content, 'X' x 1024,
        'UploadPart body content equals the supplied Body verbatim');
};

# Streaming operations should declare _stream_param so the wire
# layer's PutObject path doesn't change behaviour if a future PR
# stops walking @ISA at runtime.
subtest 'materialised classes carry _stream_param' => sub {
    for my $op (qw(PutObject UploadPart)) {
        my $class = "Paws::S3::$op";
        Paws->load_class($class);
        can_ok($class, '_stream_param');
        is($class->_stream_param, 'Body',
            "$class->_stream_param is 'Body'");
    }
};

done_testing;

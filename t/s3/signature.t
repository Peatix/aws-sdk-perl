#!/usr/bin/env perl

# Direct V4-signing assertions against the materialised Paws::S3.
#
# AWS Signature V4 for S3 requires the SHA-256 hash of the request
# payload to be present as the `X-Amz-Content-Sha256` header — it's
# part of the canonical request string. The materialiser composes
# `Paws::Net::V4Signature` for every `signatureVersion: v4` service
# (S3 included), so V4Signature must set the header explicitly
# rather than relying on upstream `Net::Amazon::Signature::V4`'s
# internal behaviour. That contract is what this test pins.

use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use Test::More;
use Digest::SHA qw(sha256_hex);

use Paws;
use TestRequestCaller;

sub make_s3_request {
    my ($op, $args, $credentials) = @_;
    $credentials //= 'Test::CustomCredentials';
    my $aws = Paws->new(config => {
        caller      => TestRequestCaller->new,
        credentials => $credentials,
        region      => 'eu-west-1',
    });
    my $s3 = $aws->service('S3');
    return $s3->$op(%$args);
}

# GET / no-body operation. The wire layer produces an empty body
# regardless of the materialiser's payload-handling state, so this
# is the most stable case to assert exact-value SHA-256 against.
{
    note 'ListObjects (GET, empty body) sets X-Amz-Content-Sha256 to SHA-256("")';
    my $req = make_s3_request(ListObjects => { Bucket => 'test-bucket' });

    ok defined $req->header('X-Amz-Content-Sha256'),
       'X-Amz-Content-Sha256 is set on GET requests';

    is $req->header('X-Amz-Content-Sha256'),
       sha256_hex(''),
       'X-Amz-Content-Sha256 equals SHA-256("") for an empty body';

    like $req->header('Authorization') // '',
         qr{\AAWS4-HMAC-SHA256 },
         'Authorization header starts with AWS4-HMAC-SHA256';

    like $req->header('Authorization') // '',
         qr{Credential=CustomAK/\d{8}/eu-west-1/s3/aws4_request},
         'Authorization credential scope is <date>/eu-west-1/s3/aws4_request';

    like $req->header('Authorization') // '',
         qr{SignedHeaders=[^,]*\bhost\b},
         'Authorization SignedHeaders includes host';

    like $req->header('Authorization') // '',
         qr{SignedHeaders=[^,]*\bx-amz-content-sha256\b},
         'Authorization SignedHeaders includes x-amz-content-sha256';

    ok defined $req->header('Date'),
       'Date header is set';
    ok defined $req->header('X-Amz-Date'),
       'X-Amz-Date header is set';
    ok defined $req->header('Host'),
       'Host header is set';
}

# Body-bearing operation. We don't care here what the wire layer
# decides to put in the body (today it's XML-wrapped because the
# materialiser doesn't yet emit `_stream_param`; a follow-up PR
# fixes that). The contract this test pins is "whatever the wire
# layer sent, V4Signature computed X-Amz-Content-Sha256 over that
# exact byte sequence". If V4Signature ever falls out of sync and
# signs over (say) the empty string while the body is non-empty,
# this assertion catches it.
{
    note 'PutObject X-Amz-Content-Sha256 matches the sha256 of the actual request body';
    my $req = make_s3_request(PutObject => {
        Bucket => 'test-bucket',
        Key    => 'test-key',
        Body   => 'hello',
    });

    is $req->header('X-Amz-Content-Sha256'),
       sha256_hex($req->content // ''),
       'X-Amz-Content-Sha256 hashes the bytes the request will actually send';
}

# Session-token credentials propagate.
{
    note 'Session-token credentials propagate to X-Amz-Security-Token';
    my $req = make_s3_request(
        PutObject => {
            Bucket => 'test-bucket',
            Key    => 'test-key',
            Body   => 'hello',
        },
        'Test::CustomCredentialsWithSession',
    );

    is $req->header('X-Amz-Security-Token'),
       'CustomST',
       'X-Amz-Security-Token equals the session token from the credential';

    is $req->header('X-Amz-Content-Sha256'),
       sha256_hex($req->content // ''),
       'X-Amz-Content-Sha256 is still set when credentials carry a session token';
}

done_testing;

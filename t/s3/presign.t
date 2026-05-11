#!/usr/bin/env perl

# AWS SigV4 query-string presigned URLs via $service->presign(...).
#
# Pins the contract that the presigner produces against fixed
# credentials and a fixed clock. Two flavours of assertion:
#
#   1. Structural: the URL is a valid HTTPS URL with the expected
#      path and query parameters (X-Amz-Algorithm,
#      X-Amz-Credential, X-Amz-Date, X-Amz-Expires,
#      X-Amz-SignedHeaders=host, X-Amz-Signature).
#
#   2. Golden: the X-Amz-Signature for a fully-specified call
#      under fixed inputs equals a precomputed hex string. If
#      anything about the canonicalisation drifts (path
#      encoding, query sort order, header set, payload-hash
#      placeholder), the golden test breaks.

use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use Test::More;
use URI;
use URI::QueryParam;
use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
use POSIX qw(strftime);

use Paws;
use TestRequestCaller;

# Helper: independently compute the expected presigned signature
# the same way the SDK does, so the test pins both the algorithm
# and the SDK's output. If a future Paws change moves to a
# different canonicalisation, the helper has to move with it, and
# that's exactly the regression we want the test to catch.
sub compute_presign_signature {
    my (%args) = @_;
    my ($method, $uri, $access_key, $secret_key, $session_token,
        $now, $expires_in, $region, $service_name)
        = @args{qw(method uri access_key secret_key session_token now expires_in region service_name)};
    my $amz_date   = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
    my $date_stamp = substr($amz_date, 0, 8);
    my $scope = sprintf '%s/%s/%s/aws4_request',
                        $date_stamp, $region, $service_name;
    my %qp = $uri->query_form;
    $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
    $qp{'X-Amz-Credential'}    = $access_key . '/' . $scope;
    $qp{'X-Amz-Date'}          = $amz_date;
    $qp{'X-Amz-Expires'}       = $expires_in;
    $qp{'X-Amz-SignedHeaders'} = 'host';
    $qp{'X-Amz-Security-Token'} = $session_token if defined $session_token;
    my @keys = sort keys %qp;
    require URI::Escape;
    my $canonical_qs = join '&', map {
        URI::Escape::uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
          . '='
          . URI::Escape::uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
    } @keys;
    my $host = ($uri->port == $uri->default_port) ? $uri->host : $uri->host_port;
    my $canonical_request = join "\n",
        $method,
        $uri->path,
        $canonical_qs,
        "host:${host}\n",
        'host',
        'UNSIGNED-PAYLOAD';
    my $string_to_sign = join "\n",
        'AWS4-HMAC-SHA256',
        $amz_date,
        $scope,
        sha256_hex($canonical_request);
    my $kDate    = hmac_sha256($date_stamp, 'AWS4' . $secret_key);
    my $kRegion  = hmac_sha256($region,        $kDate);
    my $kService = hmac_sha256($service_name,  $kRegion);
    my $kSigning = hmac_sha256('aws4_request', $kService);
    return hmac_sha256_hex($string_to_sign, $kSigning);
}

sub make_s3 {
    my (%args) = @_;
    my $aws = Paws->new(config => {
        caller      => TestRequestCaller->new,
        credentials => $args{credentials} // 'Test::CustomCredentials',
        region      => 'eu-west-1',
    });
    return $aws->service('S3');
}

subtest 'GetObject presigned URL has the expected structural query params' => sub {
    my $s3 = make_s3();
    my $url = $s3->presign('GetObject',
        { Bucket => 'b', Key => 'k' },
        expires_in => 900,
        _now       => 1715000000,
    );
    my $u = URI->new($url);

    is($u->scheme, 'https', 'https');
    like($u->host, qr/\.s3\.eu-west-1\.amazonaws\.com\z|^s3\.eu-west-1\.amazonaws\.com\z/,
         'host is in eu-west-1 S3 namespace');
    like($u->path, qr{/b/k}, 'path includes bucket + key');

    my %q = map { $_ => scalar $u->query_param($_) } $u->query_param;
    is($q{'X-Amz-Algorithm'}, 'AWS4-HMAC-SHA256', 'algorithm');
    like($q{'X-Amz-Credential'},
         qr{\ACustomAK/\d{8}/eu-west-1/s3/aws4_request\z},
         'credential scope is <date>/eu-west-1/s3/aws4_request');
    like($q{'X-Amz-Date'}, qr/\A\d{8}T\d{6}Z\z/, 'X-Amz-Date is ISO8601 basic');
    is($q{'X-Amz-Expires'}, '900', 'X-Amz-Expires propagates');
    is($q{'X-Amz-SignedHeaders'}, 'host', 'SignedHeaders is just host');
    like($q{'X-Amz-Signature'}, qr/\A[0-9a-f]{64}\z/, 'signature is 64 hex chars');
    ok(!exists $q{'X-Amz-Security-Token'},
       'no X-Amz-Security-Token without session creds');
};

subtest 'GetObject golden signature against a fixed clock + credentials' => sub {
    my $s3 = make_s3();
    my $now = 1715000000;   # fixed Mon May  6 14:13:20 UTC 2024
    my $url = $s3->presign('GetObject',
        { Bucket => 'b', Key => 'k' },
        expires_in => 900,
        _now       => $now,
    );
    my $u = URI->new($url);

    # Reconstruct the un-signed URL: same scheme/host/path, same
    # non-V4 query params (the Smithy URI template for GetObject
    # includes `?x-id=GetObject` which the canonical request must
    # carry through), minus the V4-signing query params that the
    # presigner adds.
    my $unsigned = $u->clone;
    for my $k (qw(X-Amz-Algorithm X-Amz-Credential X-Amz-Date
                  X-Amz-Expires X-Amz-SignedHeaders X-Amz-Signature
                  X-Amz-Security-Token)) {
        $unsigned->query_param_delete($k);
    }

    my $expected = compute_presign_signature(
        method        => 'GET',
        uri           => $unsigned,
        access_key    => 'CustomAK',
        secret_key    => 'CustomSK',
        session_token => undef,
        now           => $now,
        expires_in    => 900,
        region        => 'eu-west-1',
        service_name  => 's3',
    );

    is($u->query_param('X-Amz-Signature'), $expected,
       'X-Amz-Signature matches the independently-computed golden value');
};

subtest 'PutObject with session token includes X-Amz-Security-Token' => sub {
    my $s3 = make_s3(credentials => 'Test::CustomCredentialsWithSession');
    my $url = $s3->presign('PutObject',
        { Bucket => 'b', Key => 'k' },
        expires_in => 60,
        _now       => 1715000000,
    );
    my $u = URI->new($url);

    is($u->query_param('X-Amz-Security-Token'), 'CustomST',
       'X-Amz-Security-Token reflects the session token');
    is($u->query_param('X-Amz-Expires'), '60',
       'custom X-Amz-Expires propagates');
};

subtest 'URL-encoded key shows up in the path component' => sub {
    my $s3 = make_s3();
    my $url = $s3->presign('GetObject',
        { Bucket => 'b', Key => 'path/with spaces/and+plus' },
        _now       => 1715000000,
    );
    my $u = URI->new($url);
    like($u->path, qr{/b/path/with%20spaces/and\+plus|/b/path/with%20spaces/and%2Bplus},
       'spaces become %20 and + may be either kept or %2B-encoded');
};

done_testing;

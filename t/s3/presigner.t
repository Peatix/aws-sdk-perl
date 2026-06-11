#!/usr/bin/env perl

# Tests for Paws::S3::Presigner — standalone class-method-style
# pre-signed URL generation for S3.
#
# Covers:
#   - Structural correctness of generated URLs
#   - Golden signature verification against fixed clock/credentials
#   - All HTTP methods (GET, PUT, DELETE, HEAD)
#   - Virtual-hosted-style (default) and path-style (custom endpoint)
#   - URI encoding of object keys with special characters
#   - Session token inclusion
#   - Expiry bounds validation
#   - Additional query params and signed headers
#   - Parameter validation errors

use strict;
use warnings;

use Test::More;
use URI;
use URI::QueryParam;
use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
use POSIX qw(strftime);
use URI::Escape qw(uri_escape_utf8);

use lib 't/lib';

use Paws::Credential::Explicit;
use Paws::S3::Presigner;

my $FIXED_NOW = 1715000000;  # Mon May  6 14:13:20 UTC 2024

sub make_creds {
    return Paws::Credential::Explicit->new(
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
    );
}

sub make_creds_with_session {
    return Paws::Credential::Explicit->new(
        access_key    => 'AKIAIOSFODNN7EXAMPLE',
        secret_key    => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        session_token => 'FwoGZXIvYXdzEBAaDHPM7dkfLR4sTESTTOKEN',
    );
}

sub compute_expected_signature {
    my (%args) = @_;
    my $method       = $args{method};
    my $path         = $args{path};
    my $host         = $args{host};
    my $region       = $args{region};
    my $access_key   = $args{access_key};
    my $secret_key   = $args{secret_key};
    my $session_token = $args{session_token};
    my $now          = $args{now};
    my $expires_in   = $args{expires_in};
    my $extra_qp     = $args{extra_query_params} // {};
    my $extra_headers = $args{headers} // {};

    my $amz_date   = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
    my $date_stamp = substr($amz_date, 0, 8);
    my $scope      = join '/', $date_stamp, $region, 's3', 'aws4_request';

    my %lc_headers = (host => $host);
    for my $h (keys %$extra_headers) {
        $lc_headers{lc $h} = $extra_headers->{$h};
    }
    my @header_names = sort keys %lc_headers;

    my %qp = %$extra_qp;
    $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
    $qp{'X-Amz-Credential'}    = $access_key . '/' . $scope;
    $qp{'X-Amz-Date'}          = $amz_date;
    $qp{'X-Amz-Expires'}       = $expires_in;
    $qp{'X-Amz-SignedHeaders'} = join ';', @header_names;
    $qp{'X-Amz-Security-Token'} = $session_token if defined $session_token;

    my @keys = sort keys %qp;
    my $canonical_qs = join '&', map {
        uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
          . '='
          . uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
    } @keys;

    my $canonical_headers = join '', map { "$_:" . $lc_headers{$_} . "\n" } @header_names;
    my $signed_headers_str = join ';', @header_names;

    my $canonical_request = join "\n",
        $method,
        $path,
        $canonical_qs,
        $canonical_headers,
        $signed_headers_str,
        'UNSIGNED-PAYLOAD';

    my $string_to_sign = join "\n",
        'AWS4-HMAC-SHA256',
        $amz_date,
        $scope,
        sha256_hex($canonical_request);

    my $kDate    = hmac_sha256($date_stamp, 'AWS4' . $secret_key);
    my $kRegion  = hmac_sha256($region,        $kDate);
    my $kService = hmac_sha256('s3',           $kRegion);
    my $kSigning = hmac_sha256('aws4_request', $kService);
    return hmac_sha256_hex($string_to_sign, $kSigning);
}

subtest 'presign_get structural correctness' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'my-bucket',
        key         => 'path/to/object.pdf',
        expires_in  => 900,
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->scheme, 'https', 'scheme is https');
    is($u->host, 'my-bucket.s3.us-east-1.amazonaws.com',
       'virtual-hosted-style host');
    is($u->path, '/path/to/object.pdf', 'path includes key');

    my %q = map { $_ => scalar $u->query_param($_) } $u->query_param;
    is($q{'X-Amz-Algorithm'}, 'AWS4-HMAC-SHA256', 'algorithm');
    like($q{'X-Amz-Credential'},
         qr{\AAKIAIOSFODNN7EXAMPLE/\d{8}/us-east-1/s3/aws4_request\z},
         'credential scope');
    like($q{'X-Amz-Date'}, qr/\A\d{8}T\d{6}Z\z/, 'X-Amz-Date format');
    is($q{'X-Amz-Expires'}, '900', 'expires_in propagated');
    is($q{'X-Amz-SignedHeaders'}, 'host', 'signed headers is host');
    like($q{'X-Amz-Signature'}, qr/\A[0-9a-f]{64}\z/, 'signature is 64 hex chars');
    ok(!exists $q{'X-Amz-Security-Token'}, 'no security token without session');
};

subtest 'presign_get golden signature' => sub {
    my $creds = make_creds();
    my $url = Paws::S3::Presigner->presign_get(
        credentials => $creds,
        region      => 'us-east-1',
        bucket      => 'my-bucket',
        key         => 'path/to/object.pdf',
        expires_in  => 900,
        _now        => $FIXED_NOW,
    );

    my $expected_sig = compute_expected_signature(
        method     => 'GET',
        path       => '/path/to/object.pdf',
        host       => 'my-bucket.s3.us-east-1.amazonaws.com',
        region     => 'us-east-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 900,
    );

    my $u = URI->new($url);
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'golden signature matches independently computed value');
};

subtest 'presign_put returns PUT method URL' => sub {
    my $url = Paws::S3::Presigner->presign_put(
        credentials => make_creds(),
        region      => 'eu-west-1',
        bucket      => 'upload-bucket',
        key         => 'uploads/file.txt',
        expires_in  => 3600,
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->host, 'upload-bucket.s3.eu-west-1.amazonaws.com',
       'virtual-hosted-style for eu-west-1');
    is($u->path, '/uploads/file.txt', 'path is key');
    is($u->query_param('X-Amz-Expires'), '3600', 'custom expiry');

    my $expected_sig = compute_expected_signature(
        method     => 'PUT',
        path       => '/uploads/file.txt',
        host       => 'upload-bucket.s3.eu-west-1.amazonaws.com',
        region     => 'eu-west-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 3600,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'PUT golden signature');
};

subtest 'presign_delete' => sub {
    my $url = Paws::S3::Presigner->presign_delete(
        credentials => make_creds(),
        region      => 'ap-northeast-1',
        bucket      => 'cleanup',
        key         => 'old/file.txt',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->host, 'cleanup.s3.ap-northeast-1.amazonaws.com', 'host');
    is($u->path, '/old/file.txt', 'path');
    is($u->query_param('X-Amz-Expires'), '900', 'default expiry');

    my $expected_sig = compute_expected_signature(
        method     => 'DELETE',
        path       => '/old/file.txt',
        host       => 'cleanup.s3.ap-northeast-1.amazonaws.com',
        region     => 'ap-northeast-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 900,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'DELETE golden signature');
};

subtest 'presign_head' => sub {
    my $url = Paws::S3::Presigner->presign_head(
        credentials => make_creds(),
        region      => 'us-west-2',
        bucket      => 'assets',
        key         => 'img/photo.jpg',
        expires_in  => 60,
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->host, 'assets.s3.us-west-2.amazonaws.com', 'host');
    is($u->path, '/img/photo.jpg', 'path');
    is($u->query_param('X-Amz-Expires'), '60', 'short expiry');

    my $expected_sig = compute_expected_signature(
        method     => 'HEAD',
        path       => '/img/photo.jpg',
        host       => 'assets.s3.us-west-2.amazonaws.com',
        region     => 'us-west-2',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 60,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'HEAD golden signature');
};

subtest 'session token included in URL' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds_with_session(),
        region      => 'us-east-1',
        bucket      => 'mybucket',
        key         => 'key',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->query_param('X-Amz-Security-Token'),
       'FwoGZXIvYXdzEBAaDHPM7dkfLR4sTESTTOKEN',
       'session token present in query');

    my $expected_sig = compute_expected_signature(
        method        => 'GET',
        path          => '/key',
        host          => 'mybucket.s3.us-east-1.amazonaws.com',
        region        => 'us-east-1',
        access_key    => 'AKIAIOSFODNN7EXAMPLE',
        secret_key    => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        session_token => 'FwoGZXIvYXdzEBAaDHPM7dkfLR4sTESTTOKEN',
        now           => $FIXED_NOW,
        expires_in    => 900,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature includes session token in canonical request');
};

subtest 'special characters in key are URI-encoded' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'path/with spaces/file (1).txt',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    like($u->path, qr{/path/with%20spaces/file%20%281%29\.txt},
         'spaces and parens are percent-encoded, slashes preserved');
};

subtest 'key with unicode characters' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => "\x{65E5}\x{672C}\x{8A9E}/\x{30D5}\x{30A1}\x{30A4}\x{30EB}.txt",
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    like($u->path, qr{^/%E6%97%A5%E6%9C%AC%E8%AA%9E/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB\.txt$},
         'unicode key segments are UTF-8 percent-encoded');
};

subtest 'custom endpoint uses path-style' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'mybucket',
        key         => 'mykey',
        endpoint    => 'http://minio.local:9000',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->scheme, 'http', 'custom endpoint scheme preserved');
    is($u->host, 'minio.local', 'custom endpoint host');
    is($u->port, 9000, 'custom endpoint port');
    is($u->path, '/mybucket/mykey', 'path-style: bucket in path');

    my $expected_sig = compute_expected_signature(
        method     => 'GET',
        path       => '/mybucket/mykey',
        host       => 'minio.local:9000',
        region     => 'us-east-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 900,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'path-style golden signature');
};

subtest 'custom endpoint on default port omits port from host header' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'mybucket',
        key         => 'mykey',
        endpoint    => 'https://s3.custom.example.com',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->host, 's3.custom.example.com', 'host without port');
    is($u->path, '/mybucket/mykey', 'path-style');

    my $expected_sig = compute_expected_signature(
        method     => 'GET',
        path       => '/mybucket/mykey',
        host       => 's3.custom.example.com',
        region     => 'us-east-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 900,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature with default-port endpoint');
};

subtest 'extra query_params are included and signed' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials  => make_creds(),
        region       => 'us-east-1',
        bucket       => 'b',
        key          => 'k',
        query_params => {
            'response-content-disposition' => 'attachment; filename="download.pdf"',
            'response-content-type'        => 'application/pdf',
        },
        _now => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->query_param('response-content-disposition'),
       'attachment; filename="download.pdf"',
       'response-content-disposition included');
    is($u->query_param('response-content-type'),
       'application/pdf',
       'response-content-type included');

    my $expected_sig = compute_expected_signature(
        method           => 'GET',
        path             => '/k',
        host             => 'b.s3.us-east-1.amazonaws.com',
        region           => 'us-east-1',
        access_key       => 'AKIAIOSFODNN7EXAMPLE',
        secret_key       => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now              => $FIXED_NOW,
        expires_in       => 900,
        extra_query_params => {
            'response-content-disposition' => 'attachment; filename="download.pdf"',
            'response-content-type'        => 'application/pdf',
        },
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature covers extra query params');
};

subtest 'additional signed headers' => sub {
    my $url = Paws::S3::Presigner->presign_put(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'k',
        headers     => {
            'Content-Type' => 'image/png',
        },
        _now => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->query_param('X-Amz-SignedHeaders'), 'content-type;host',
       'additional header included in signed headers');

    my $expected_sig = compute_expected_signature(
        method     => 'PUT',
        path       => '/k',
        host       => 'b.s3.us-east-1.amazonaws.com',
        region     => 'us-east-1',
        access_key => 'AKIAIOSFODNN7EXAMPLE',
        secret_key => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        now        => $FIXED_NOW,
        expires_in => 900,
        headers    => { 'Content-Type' => 'image/png' },
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature covers additional signed headers');
};

subtest 'validation: missing required params' => sub {
    eval { Paws::S3::Presigner->presign_get(region => 'us-east-1', bucket => 'b', key => 'k') };
    like($@, qr/credentials is required/, 'missing credentials');

    eval { Paws::S3::Presigner->presign_get(credentials => make_creds(), bucket => 'b', key => 'k') };
    like($@, qr/region is required/, 'missing region');

    eval { Paws::S3::Presigner->presign_get(credentials => make_creds(), region => 'us-east-1', key => 'k') };
    like($@, qr/bucket is required/, 'missing bucket');

    eval { Paws::S3::Presigner->presign_get(credentials => make_creds(), region => 'us-east-1', bucket => 'b') };
    like($@, qr/key is required/, 'missing key');
};

subtest 'validation: invalid method' => sub {
    eval {
        Paws::S3::Presigner->presign(
            method      => 'PATCH',
            credentials => make_creds(),
            region      => 'us-east-1',
            bucket      => 'b',
            key         => 'k',
        );
    };
    like($@, qr/method must be one of/, 'PATCH rejected');
};

subtest 'validation: expires_in bounds' => sub {
    eval {
        Paws::S3::Presigner->presign_get(
            credentials => make_creds(),
            region      => 'us-east-1',
            bucket      => 'b',
            key         => 'k',
            expires_in  => 0,
        );
    };
    like($@, qr/expires_in must be between/, 'expires_in=0 rejected');

    eval {
        Paws::S3::Presigner->presign_get(
            credentials => make_creds(),
            region      => 'us-east-1',
            bucket      => 'b',
            key         => 'k',
            expires_in  => 604801,
        );
    };
    like($@, qr/expires_in must be between/, 'expires_in > 7 days rejected');
};

subtest 'validation: bad credentials object' => sub {
    eval {
        Paws::S3::Presigner->presign_get(
            credentials => bless({}, 'Not::A::Credential'),
            region      => 'us-east-1',
            bucket      => 'b',
            key         => 'k',
        );
    };
    like($@, qr/credentials must do the Paws::Credential role/, 'non-credential object rejected');
};

subtest 'key with only slashes' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'a/b/c/d',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->path, '/a/b/c/d', 'multi-segment key path preserved');
};

subtest 'key with leading slash is handled' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => '/leading/slash',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->path, '//leading/slash', 'leading slash preserved in key');
};

subtest 'generic presign method with explicit method param' => sub {
    my $url = Paws::S3::Presigner->presign(
        method      => 'GET',
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'k',
        _now        => $FIXED_NOW,
    );

    my $url_from_helper = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'k',
        _now        => $FIXED_NOW,
    );

    is($url, $url_from_helper, 'presign(method => GET) matches presign_get');
};

subtest 'maximum expiry (7 days) accepted' => sub {
    my $url = Paws::S3::Presigner->presign_get(
        credentials => make_creds(),
        region      => 'us-east-1',
        bucket      => 'b',
        key         => 'k',
        expires_in  => 604800,
        _now        => $FIXED_NOW,
    );

    my $u = URI->new($url);
    is($u->query_param('X-Amz-Expires'), '604800', 'max expiry accepted');
};

done_testing;

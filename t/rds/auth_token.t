#!/usr/bin/env perl

# RDS IAM authentication token generation via
# Paws::RDS::AuthToken->generate_db_auth_token(...).
#
# Pins the contract that the token generator produces against fixed
# credentials and a fixed clock. Three flavours of assertion:
#
#   1. Structural: the token is a valid host:port/?query string with
#      the expected query parameters (Action, DBUser, X-Amz-Algorithm,
#      X-Amz-Credential, X-Amz-Date, X-Amz-Expires,
#      X-Amz-SignedHeaders=host, X-Amz-Signature).
#
#   2. Golden: the X-Amz-Signature for a fully-specified call under
#      fixed inputs equals a precomputed hex string.
#
#   3. Behavioural: session tokens are included, required parameters
#      are validated, and the scheme is correctly stripped.

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use URI;
use URI::QueryParam;
use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
use POSIX qw(strftime);

use Paws::RDS::AuthToken;
use Paws::Credential::Explicit;

my $FIXED_NOW = 1715000000;   # Mon May  6 14:13:20 UTC 2024

sub make_credentials {
    my (%args) = @_;
    return Paws::Credential::Explicit->new(
        access_key    => $args{access_key}    // 'AKIAIOSFODNN7EXAMPLE',
        secret_key    => $args{secret_key}    // 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        (defined $args{session_token} ? (session_token => $args{session_token}) : ()),
    );
}

sub compute_expected_signature {
    my (%args) = @_;
    my ($access_key, $secret_key, $session_token,
        $hostname, $port, $db_user, $region, $now, $expires_in)
        = @args{qw(access_key secret_key session_token
                    hostname port db_user region now expires_in)};

    my $amz_date   = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
    my $date_stamp = substr($amz_date, 0, 8);
    my $scope = sprintf '%s/%s/rds-db/aws4_request',
                        $date_stamp, $region;

    my %qp = (
        Action => 'connect',
        DBUser => $db_user,
    );
    $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
    $qp{'X-Amz-Credential'}    = $access_key . '/' . $scope;
    $qp{'X-Amz-Date'}          = $amz_date;
    $qp{'X-Amz-Expires'}       = $expires_in;
    $qp{'X-Amz-SignedHeaders'} = 'host';
    $qp{'X-Amz-Security-Token'} = $session_token if defined $session_token;

    require URI::Escape;
    my @keys = sort keys %qp;
    my $canonical_qs = join '&', map {
        URI::Escape::uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
          . '='
          . URI::Escape::uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
    } @keys;

    my $host = "${hostname}:${port}";
    my $canonical_request = join "\n",
        'GET',
        '/',
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
    my $kService = hmac_sha256('rds-db',       $kRegion);
    my $kSigning = hmac_sha256('aws4_request', $kService);
    return hmac_sha256_hex($string_to_sign, $kSigning);
}

subtest 'structural: token has expected format and query params' => sub {
    my $creds = make_credentials();
    my $token = Paws::RDS::AuthToken->generate_db_auth_token(
        credentials => $creds,
        hostname    => 'mydb.123456789012.us-east-1.rds.amazonaws.com',
        port        => 5432,
        db_user     => 'iam_user',
        region      => 'us-east-1',
        _now        => $FIXED_NOW,
    );

    unlike($token, qr{^https?://}, 'token does not start with a URL scheme');

    my $u = URI->new("https://${token}");
    is($u->host, 'mydb.123456789012.us-east-1.rds.amazonaws.com', 'hostname');
    is($u->port, 5432, 'port');
    is($u->path, '/', 'path is /');

    my %q = map { $_ => scalar $u->query_param($_) } $u->query_param;
    is($q{Action}, 'connect', 'Action=connect');
    is($q{DBUser}, 'iam_user', 'DBUser matches');
    is($q{'X-Amz-Algorithm'}, 'AWS4-HMAC-SHA256', 'algorithm');
    like($q{'X-Amz-Credential'},
         qr{\AAKIAIOSFODNN7EXAMPLE/\d{8}/us-east-1/rds-db/aws4_request\z},
         'credential scope uses rds-db signing service');
    like($q{'X-Amz-Date'}, qr/\A\d{8}T\d{6}Z\z/, 'ISO8601 date');
    is($q{'X-Amz-Expires'}, '900', 'default expiry is 900');
    is($q{'X-Amz-SignedHeaders'}, 'host', 'only host is signed');
    like($q{'X-Amz-Signature'}, qr/\A[0-9a-f]{64}\z/, 'signature is 64 hex chars');
    ok(!exists $q{'X-Amz-Security-Token'},
       'no security token without session credentials');
};

subtest 'golden: signature matches independently computed value' => sub {
    my $access_key = 'AKIAIOSFODNN7EXAMPLE';
    my $secret_key = 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY';
    my $hostname   = 'mydb.123456789012.us-east-1.rds.amazonaws.com';
    my $port       = 5432;
    my $db_user    = 'iam_user';
    my $region     = 'us-east-1';

    my $creds = make_credentials(
        access_key => $access_key,
        secret_key => $secret_key,
    );
    my $token = Paws::RDS::AuthToken->generate_db_auth_token(
        credentials => $creds,
        hostname    => $hostname,
        port        => $port,
        db_user     => $db_user,
        region      => $region,
        _now        => $FIXED_NOW,
    );

    my $expected_sig = compute_expected_signature(
        access_key    => $access_key,
        secret_key    => $secret_key,
        session_token => undef,
        hostname      => $hostname,
        port          => $port,
        db_user       => $db_user,
        region        => $region,
        now           => $FIXED_NOW,
        expires_in    => 900,
    );

    my $u = URI->new("https://${token}");
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature matches the independently-computed golden value');
};

subtest 'golden: MySQL port 3306' => sub {
    my $access_key = 'AKIAIOSFODNN7EXAMPLE';
    my $secret_key = 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY';
    my $hostname   = 'mysql.cluster-abc123.eu-west-1.rds.amazonaws.com';
    my $port       = 3306;
    my $db_user    = 'admin';
    my $region     = 'eu-west-1';

    my $creds = make_credentials(
        access_key => $access_key,
        secret_key => $secret_key,
    );
    my $token = Paws::RDS::AuthToken->generate_db_auth_token(
        credentials => $creds,
        hostname    => $hostname,
        port        => $port,
        db_user     => $db_user,
        region      => $region,
        _now        => $FIXED_NOW,
    );

    my $expected_sig = compute_expected_signature(
        access_key    => $access_key,
        secret_key    => $secret_key,
        session_token => undef,
        hostname      => $hostname,
        port          => $port,
        db_user       => $db_user,
        region        => $region,
        now           => $FIXED_NOW,
        expires_in    => 900,
    );

    my $u = URI->new("https://${token}");
    is($u->host, $hostname, 'hostname');
    is($u->port, $port, 'port');
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature matches for MySQL endpoint');
};

subtest 'session token is included when present' => sub {
    my $creds = make_credentials(
        access_key    => 'AKIAIOSFODNN7EXAMPLE',
        secret_key    => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        session_token => 'FwoGZXIvYXdzEBYaDNMN+example+session+token',
    );
    my $token = Paws::RDS::AuthToken->generate_db_auth_token(
        credentials => $creds,
        hostname    => 'mydb.123456789012.us-east-1.rds.amazonaws.com',
        port        => 5432,
        db_user     => 'iam_user',
        region      => 'us-east-1',
        _now        => $FIXED_NOW,
    );

    my $u = URI->new("https://${token}");
    is($u->query_param('X-Amz-Security-Token'),
       'FwoGZXIvYXdzEBYaDNMN+example+session+token',
       'session token is present in the token');

    my $expected_sig = compute_expected_signature(
        access_key    => 'AKIAIOSFODNN7EXAMPLE',
        secret_key    => 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
        session_token => 'FwoGZXIvYXdzEBYaDNMN+example+session+token',
        hostname      => 'mydb.123456789012.us-east-1.rds.amazonaws.com',
        port          => 5432,
        db_user       => 'iam_user',
        region        => 'us-east-1',
        now           => $FIXED_NOW,
        expires_in    => 900,
    );
    is($u->query_param('X-Amz-Signature'), $expected_sig,
       'signature accounts for the session token');
};

subtest 'custom expires_in is honoured' => sub {
    my $creds = make_credentials();
    my $token = Paws::RDS::AuthToken->generate_db_auth_token(
        credentials => $creds,
        hostname    => 'mydb.123456789012.us-east-1.rds.amazonaws.com',
        port        => 5432,
        db_user     => 'iam_user',
        region      => 'us-east-1',
        expires_in  => 450,
        _now        => $FIXED_NOW,
    );

    my $u = URI->new("https://${token}");
    is($u->query_param('X-Amz-Expires'), '450',
       'custom expires_in propagates');
};

subtest 'required parameters are validated' => sub {
    my $creds = make_credentials();
    my %base = (
        credentials => $creds,
        hostname    => 'mydb.example.com',
        port        => 5432,
        db_user     => 'admin',
        region      => 'us-east-1',
    );

    for my $param (qw(credentials hostname port db_user region)) {
        my %args = %base;
        delete $args{$param};
        eval { Paws::RDS::AuthToken->generate_db_auth_token(%args) };
        like($@, qr/$param is required|credentials must do/,
             "missing $param is rejected");
    }
};

subtest 'credentials must do Paws::Credential role' => sub {
    eval {
        Paws::RDS::AuthToken->generate_db_auth_token(
            credentials => bless({}, 'NotACredential'),
            hostname    => 'mydb.example.com',
            port        => 5432,
            db_user     => 'admin',
            region      => 'us-east-1',
        );
    };
    like($@, qr/credentials must do the Paws::Credential role/,
         'non-Paws::Credential object is rejected');
};

done_testing;

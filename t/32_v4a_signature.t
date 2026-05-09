#!/usr/bin/env perl

# Pin SigV4A signing against AWS-published canonical test vectors.
#
# Vectors come from awslabs/aws-c-auth's signing test suite:
#   https://github.com/awslabs/aws-c-auth/tree/main/tests/aws-signing-test-suite/v4a
#
# We bake the vectors into this file (rather than fetching at test time)
# so the test stays self-contained and offline-capable.
#
# What we assert:
#   1. Deterministic key derivation: the ECDSA P-256 public-key
#      coordinates derived from a known IAM access-key pair match the
#      coordinates the upstream suite computes.
#   2. Canonical-request and string-to-sign byte-for-byte equality
#      against a known input request.
#   3. Cross-implementation signature verification: the upstream
#      header-signed-request signature verifies under the key our
#      implementation derives, AND a signature we produce verifies
#      with the same key (round-trip).
#   4. The Moose role wired onto a service object emits an Authorization
#      header that verifies under the derived public key.

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Digest::SHA qw(sha256 sha256_hex);

BEGIN {
  eval {
    require Crypt::PK::ECC;
    require Crypt::Mac::HMAC;
    1;
  } or plan skip_all => 'CryptX not installed; SigV4A signing tests skipped';
}

use Paws::Net::V4ASignature;

my $access_key = 'AKIDEXAMPLE';
my $secret_key = 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY';

subtest 'derive ECDSA P-256 key from IAM access-key pair' => sub {
  my $pk = Paws::Net::V4ASignature::_derive_priv_key($access_key, $secret_key);
  isa_ok $pk, 'Crypt::PK::ECC';

  my $hash = $pk->key2hash;
  is lc($hash->{pub_x}),
     'b6618f6a65740a99e650b33b6b4b5bd0d43b176d721a3edfea7e7d2d56d936b1',
     'derived public X matches aws-c-auth get-vanilla vector';
  is lc($hash->{pub_y}),
     '865ed22a7eadc9c5cb9d2cbaca1b3699139fedc5043dc6661864218330c8e518',
     'derived public Y matches aws-c-auth get-vanilla vector';
};

subtest 'canonical request and string-to-sign match get-vanilla' => sub {
  require HTTP::Request;
  my $req = HTTP::Request->new(GET => 'https://example.amazonaws.com/');
  $req->header(Host             => 'example.amazonaws.com');
  $req->header('X-Amz-Date'     => '20150830T123600Z');
  $req->header('X-Amz-Region-Set'=> 'us-east-1');

  no warnings 'once';
  *V4ASigTestStub::signing_name   = sub { 'service' };
  *V4ASigTestStub::_no_escape_uri = sub { 0 };
  my $self = bless {}, 'V4ASigTestStub';

  my ($creq, $signed_headers) =
    Paws::Net::V4ASignature::_v4a_canonical_request($self, $req);

  my $expected_creq = join("\n",
    'GET',
    '/',
    '',
    'host:example.amazonaws.com',
    'x-amz-date:20150830T123600Z',
    'x-amz-region-set:us-east-1',
    '',
    'host;x-amz-date;x-amz-region-set',
    'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
  );
  is $creq, $expected_creq, 'canonical request matches vector';
  is $signed_headers, 'host;x-amz-date;x-amz-region-set',
     'signed headers list matches vector';

  my $sts = join("\n",
    'AWS4-ECDSA-P256-SHA256',
    '20150830T123600Z',
    '20150830/service/aws4_request',
    sha256_hex($creq),
  );
  my $expected_sts = join("\n",
    'AWS4-ECDSA-P256-SHA256',
    '20150830T123600Z',
    '20150830/service/aws4_request',
    'cf59db423e841c8b7e3444158185aa261b724a5c27cbe762676f3eed19f4dc02',
  );
  is $sts, $expected_sts, 'string-to-sign matches vector';
};

subtest 'cross-verify the upstream signature' => sub {
  # Upstream header-signed-request signature for the same canonical
  # request and credentials. ECDSA signatures are non-deterministic
  # so we can't compare bytes, but we can verify it under the same
  # derived key.
  my $upstream_sig_hex =
    '3046022100fddaaf816a31e30d04973875b13bc27b98da10907a3a1872fd5819a221334abc' .
    '022100de2ee81d83b54f31efc82834de07e6cd4d5c6f25bfa08e0f29a15bb0977c343e';

  my $pk = Paws::Net::V4ASignature::_derive_priv_key($access_key, $secret_key);
  my $sts = join("\n",
    'AWS4-ECDSA-P256-SHA256',
    '20150830T123600Z',
    '20150830/service/aws4_request',
    'cf59db423e841c8b7e3444158185aa261b724a5c27cbe762676f3eed19f4dc02',
  );

  my $sig_der = pack('H*', $upstream_sig_hex);
  ok $pk->verify_hash($sig_der, sha256($sts), 'SHA256'),
     'upstream signature verifies under the derived key';

  my $our_sig = $pk->sign_hash(sha256($sts), 'SHA256');
  ok $pk->verify_hash($our_sig, sha256($sts), 'SHA256'),
     'self-produced signature round-trips through verify';
};

subtest 'session token participates in canonical headers' => sub {
  require HTTP::Request;
  my $req = HTTP::Request->new(GET => 'https://example.amazonaws.com/');
  $req->header(Host             => 'example.amazonaws.com');
  $req->header('X-Amz-Date'     => '20150830T123600Z');
  $req->header('X-Amz-Region-Set'=> 'us-east-1');
  $req->header('X-Amz-Security-Token' =>
    '6e86291e8372ff2a2260956d9b8aae1d763fbf315fa00fa31553b73ebf194267');

  my $self = bless {}, 'V4ASigTestStub';

  my ($creq, $signed_headers) =
    Paws::Net::V4ASignature::_v4a_canonical_request($self, $req);

  is $signed_headers,
     'host;x-amz-date;x-amz-region-set;x-amz-security-token',
     'session token included in signed headers';
  like $creq,
       qr/x-amz-security-token:6e86291e8372ff2a2260956d9b8aae1d763fbf315fa00fa31553b73ebf194267/,
       'session token included in canonical headers';
};

subtest 'sign() emits a verifiable Authorization header' => sub {
  # Build a minimal Moose object that composes the role plus the
  # endpoint-resolver dependencies sign() reaches for, so we can
  # exercise the full role rather than just the helpers.
  package Paws::Net::V4ASignature::TestService;
    use Moose;
    use URI;
    has region   => (is => 'ro', isa => 'Str',    default => sub { 'us-east-1' });
    has endpoint => (is => 'ro', isa => 'Object', lazy => 1, default => sub {
      URI->new('https://example.amazonaws.com/')
    });
    sub _region_for_signature { 'us-east-1' }
    sub service               { 'service' }
    sub signing_name          { 'service' }
    has credentials => (is => 'ro', isa => 'Object');
    with 'Paws::Net::V4ASignature';
    no Moose;

  package Paws::Net::V4ASignature::TestCreds;
    sub new { my ($c, %a) = @_; bless { %a }, $c }
    sub access_key    { $_[0]->{access_key} }
    sub secret_key    { $_[0]->{secret_key} }
    sub session_token { $_[0]->{session_token} }
    sub refresh       { $_[0] }

  package main;
  require HTTP::Request;
  my $svc = Paws::Net::V4ASignature::TestService->new(
    credentials => Paws::Net::V4ASignature::TestCreds->new(
      access_key => $access_key,
      secret_key => $secret_key,
    ),
  );

  my $req = HTTP::Request->new(GET => 'https://example.amazonaws.com/');
  $req->header('X-Amz-Date' => '20150830T123600Z');
  $svc->sign($req);

  my $auth = $req->header('Authorization');
  like $auth, qr{^AWS4-ECDSA-P256-SHA256 },
       'algorithm prefix in Authorization header';
  like $auth, qr{Credential=AKIDEXAMPLE/20150830/service/aws4_request},
       'credential scope omits region (SigV4A)';
  like $auth, qr{SignedHeaders=host;x-amz-date;x-amz-region-set},
       'signed headers includes region-set, not region';
  like $auth, qr{Signature=[0-9a-f]+},
       'hex-encoded signature present';

  # Verify the emitted signature using the derived public key.
  my ($sig_hex) = $auth =~ /Signature=([0-9a-f]+)/;
  my ($shdrs)   = $auth =~ /SignedHeaders=([^,]+)/;

  my $pk = Paws::Net::V4ASignature::_derive_priv_key($access_key, $secret_key);

  # Reconstruct canonical request from the signed headers list, in
  # order, plus the body hash. SigV4A canonical request format is the
  # same shape as SigV4: method / path / query / headers / signed
  # header list / payload hash.
  my @sh = split /;/, $shdrs;
  my $canonical_headers = '';
  for my $h (@sh) {
    my $val = $req->header($h);
    $canonical_headers .= "$h:$val\n";
  }
  my $payload_hash = sha256_hex('');
  my $creq = join("\n",
    'GET',
    '/',
    '',
    $canonical_headers,
    $shdrs,
    $payload_hash,
  );
  my $sts = join("\n",
    'AWS4-ECDSA-P256-SHA256',
    '20150830T123600Z',
    '20150830/service/aws4_request',
    sha256_hex($creq),
  );
  ok $pk->verify_hash(pack('H*', $sig_hex), sha256($sts), 'SHA256'),
     'emitted Authorization signature verifies under derived public key';
};

done_testing;

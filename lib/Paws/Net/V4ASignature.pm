package Paws::Net::V4ASignature;
  # AWS Signature Version 4A (asymmetric, ECDSA-P256-SHA256). Used by
  # services that need a single signature valid across regions, e.g.
  # CloudFront KeyValueStore, S3 Multi-Region Access Points, EventBridge
  # global endpoints, SES v2 global endpoints. AWS exposes SigV4A
  # primarily through endpoint-rule-set authSchemes rather than
  # service-level signatureVersion metadata, so the AOT generator only
  # composes this role when the model declares signatureVersion=v4a
  # directly.
  #
  # Spec references:
  #   https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv-create-signed-request.html
  #   https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_sigv-signing-elements.html
  # (the SigV4A sections describe the AWS4-ECDSA-P256-SHA256 algorithm,
  # the X-Amz-Region-Set header, and the credential-scope shape that
  # omits the region).

  use Moose::Role;
  use Carp qw(croak);
  use POSIX qw(strftime);
  use Digest::SHA qw(sha256 sha256_hex);
  use URI::Escape qw(uri_escape uri_unescape);

  requires 'service';

  sub BUILD {
    my $self = shift;
    # Match V4Signature: force endpoint + region resolution at
    # construction time so user errors surface at $paws->service('...')
    # rather than at first method call. SigV4A doesn't put the region
    # in the credential scope, but we still need _region_for_signature
    # to pick the correct host (which is what endpoint resolution
    # depends on) and to default the X-Amz-Region-Set header for
    # callers that don't override it.
    $self->endpoint;
    $self->_region_for_signature;
  }

  has signing_region_set => (
    is      => 'ro',
    isa     => 'Str',
    lazy    => 1,
    # Wildcard is the conventional default for SigV4A clients: it
    # tells AWS the signature is valid in any region the resource is
    # advertised in. CloudFront KeyValueStore and S3 MRAP both use '*'.
    # Callers can override on the per-service object if they need a
    # narrower set, e.g. signing_region_set => 'us-east-1,us-west-2'.
    default => sub { '*' },
  );

  sub sign {
    my ($self, $request, $creds) = @_;

    $creds ||= $self->credentials->refresh;

    my $now  = $request->header('X-Amz-Date') // strftime('%Y%m%dT%H%M%SZ', gmtime);
    my $date = substr($now, 0, 8);

    $request->header('X-Amz-Date' => $now);
    $request->header(
      'Host' => $self->endpoint->default_port == $self->endpoint->port
                  ? $self->endpoint->host
                  : $self->endpoint->host_port,
    );
    $request->header('X-Amz-Region-Set' => $self->signing_region_set);
    if ($creds->session_token) {
      $request->header('X-Amz-Security-Token' => $creds->session_token);
    }

    my $service_name = $self->can('signing_name') ? $self->signing_name : $self->service;

    my ($canonical_request, $signed_headers_str) =
      $self->_v4a_canonical_request($request);

    my $credential_scope = "$date/$service_name/aws4_request";
    my $string_to_sign = join("\n",
      'AWS4-ECDSA-P256-SHA256',
      $now,
      $credential_scope,
      sha256_hex($canonical_request),
    );

    my $priv_key = Paws::Net::V4ASignature::_derive_priv_key(
      $creds->access_key, $creds->secret_key,
    );

    my $sig_der = $priv_key->sign_hash(sha256($string_to_sign), 'SHA256');
    my $signature_hex = unpack('H*', $sig_der);

    my $auth = sprintf(
      'AWS4-ECDSA-P256-SHA256 Credential=%s/%s, SignedHeaders=%s, Signature=%s',
      $creds->access_key,
      $credential_scope,
      $signed_headers_str,
      $signature_hex,
    );
    $request->header('Authorization' => $auth);

    return $request;
  }

  sub _v4a_canonical_request {
    my ($self, $req) = @_;

    my $method = $req->method;

    my ($uri_path, $query_string) =
      ($req->uri =~ m@([^?]*)\?(.*)$@) ? ($1, $2) : ($req->uri, '');

    $uri_path =~ s@^https?://[^/]*/?@/@;
    $uri_path = _simplify_uri($uri_path, $self->_no_escape_uri);
    $query_string = _sort_query_string($query_string);

    # The payload hash always goes on the last line of the canonical
    # request. We *don't* set X-Amz-Content-Sha256 unless the caller
    # already provided it: a few services (S3) require it, but the
    # generic SigV4A spec and the aws-c-auth test vectors don't, and
    # adding it would force it into the SignedHeaders list and break
    # signatures verified against canonical references.
    my $payload_hash = $req->header('x-amz-content-sha256')
      // sha256_hex($req->content // '');

    my @sorted_headers = sort { $a cmp $b } map { lc } $req->headers->header_field_names;

    my $canonical_headers = join('',
      map {
        sprintf("%s:%s\x0a",
          lc,
          join(',', sort { $a cmp $b } _trim_whitespace($req->header($_))),
        )
      } @sorted_headers
    );

    my $signed_headers_str = join(';', map { lc } @sorted_headers);

    my $canonical_request = join("\x0a",
      $method,
      $uri_path,
      $query_string,
      $canonical_headers,
      $signed_headers_str,
      $payload_hash,
    );

    return ($canonical_request, $signed_headers_str);
  }

  sub _no_escape_uri {
    my $self = shift;
    # S3 and S3-derived signing names skip the second URI escape pass,
    # matching the SigV4 escape rule. Other services double-escape.
    my $name = $self->can('signing_name') ? $self->signing_name : $self->service;
    return ($name && lc($name) eq 's3') ? 1 : 0;
  }

  sub _simplify_uri {
    my ($orig_uri, $no_escape) = @_;
    my @parts = split /\//, $orig_uri;
    my @simple_parts;
    for my $part (@parts) {
      next if $part eq '' || $part eq '.';
      if ($part eq '..') {
        pop @simple_parts;
      } elsif ($no_escape) {
        push @simple_parts, $part;
      } else {
        push @simple_parts, uri_escape($part);
      }
    }
    my $simple_uri = '/' . join('/', @simple_parts);
    $simple_uri .= '/' if $orig_uri =~ m@/$@ && $simple_uri !~ m@/$@;
    return $simple_uri;
  }

  sub _sort_query_string {
    return '' unless $_[0];
    my @params;
    for my $param (split /&/, $_[0]) {
      my ($key, $value) =
        map { tr/+/ /; uri_escape(uri_unescape($_)) }
        split /=/, $param, 2;
      push @params, [$key, defined $value ? $value : ''];
    }
    return join('&',
      map { join('=', @$_) }
      sort { ($a->[0] cmp $b->[0]) || ($a->[1] cmp $b->[1]) }
      @params,
    );
  }

  sub _trim_whitespace {
    return map { my $s = $_; $s =~ s/^\s*//; $s =~ s/\s*$//; $s } @_;
  }

  # Below: the SigV4A key derivation. Standalone subs (not Moose
  # methods) so they're cheap and re-callable from tests.

  # P-256 curve order n, in hex. Source: SEC 2 / NIST FIPS 186-4
  # Appendix D.1.2.3.
  our $P256_N_HEX =
    'FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551';

  # Derive a deterministic ECDSA P-256 private key from an IAM access
  # key pair, using the SigV4A KDF defined in the AWS docs. Returns a
  # Crypt::PK::ECC instance loaded with the private key (and its
  # implied public key).
  #
  # Algorithm (NIST SP 800-108 KDF in counter mode, single-iteration
  # because P-256's 256-bit key fits in one HMAC-SHA256 block):
  #
  #   inputKey = "AWS4A" || secretKey
  #   for counter in 0x01..0xFF:
  #     fixedInput = "AWS4-ECDSA-P256-SHA256" || 0x00
  #                  || access_key || counter
  #                  || int32_be(256)
  #     candidate = HMAC-SHA256(inputKey, int32_be(1) || fixedInput)
  #     if candidate < (n-2): d = candidate + 1; break
  #   priv_key = ECDSA private key with scalar d on P-256
  sub _derive_priv_key {
    my ($access_key, $secret_key) = @_;

    require Crypt::PK::ECC;
    require Crypt::Mac::HMAC;
    require Math::BigInt;

    my $input_key = 'AWS4A' . $secret_key;
    my $label     = 'AWS4-ECDSA-P256-SHA256';
    my $bit_len   = 256;

    my $n_minus_two = Math::BigInt->from_hex($P256_N_HEX) - Math::BigInt->bone() - Math::BigInt->bone();

    my $d_bytes;
    for (my $counter = 1; $counter <= 0xFF; $counter++) {
      my $context     = $access_key . chr($counter);
      my $fixed_input = $label . "\x00" . $context . pack('N', $bit_len);
      my $candidate   = Crypt::Mac::HMAC::hmac('SHA256', $input_key, pack('N', 1) . $fixed_input);
      # candidate is 32 bytes from HMAC-SHA256; the spec says compare
      # against n-2 as a constant-time byte compare. We don't need
      # constant-time here (we're not exposed to a side-channel
      # attacker over the network for key derivation).
      my $cand_int = Math::BigInt->from_hex(unpack('H*', $candidate));
      if ($cand_int->bcmp($n_minus_two) == -1) {
        my $d_int = $cand_int + Math::BigInt->bone();
        # Re-pad to 32 bytes for the EC key constructor.
        my $hex = $d_int->to_hex;
        $hex = ('0' x (64 - length($hex))) . $hex if length($hex) < 64;
        $d_bytes = pack('H*', $hex);
        last;
      }
    }
    croak 'V4ASignature: failed to derive an ECDSA P-256 private key from the supplied credentials'
      unless defined $d_bytes;

    my $pk = Crypt::PK::ECC->new;
    # Crypt::PK::ECC accepts a hashref with 'curve_name' and
    # private 'k' (the scalar). The matching public key is computed
    # from k * G internally.
    $pk->import_key({
      curve_name => 'secp256r1',
      k          => unpack('H*', $d_bytes),
    });
    return $pk;
  }

1;

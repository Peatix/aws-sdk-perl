# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::API::Caller;
  use Moose::Role;
  use Paws;
  use Paws::Net::APIRequest;
  use Paws::API::Response;
  use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
  use POSIX qw(strftime);
  use URI;
  use URI::Escape qw(uri_escape_utf8);

  has caller => (is => 'ro', required => 1);

  has credentials => (
    is => 'ro',
    does => 'Paws::Credential',
    required => 1,
  );

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    Paws->new_with_coercions($class, %params);
  }

  sub to_hash {
    my ($self, $params) = @_;

    return Paws->to_hash($params);
  }

  # Compute a query-string V4 presigned URL for an operation on this
  # service. Mirrors the AWS SigV4 query-parameter signing flow used
  # by every AWS SDK to produce browser-shareable URLs for a single
  # request that don't need an Authorization header.
  #
  # Usage:
  #
  #   my $url = $s3->presign('GetObject',
  #       { Bucket => 'b', Key => 'k' },
  #       expires_in => 900,   # seconds; default 900, max 604800
  #   );
  #
  # Returns the full URL as a string. Hitting the URL with a plain
  # HTTP GET (no extra headers) within the expiry window is what AWS
  # accepts.
  #
  # Available on every service that composes Paws::API::Caller +
  # Paws::Net::V4Signature (or compatible). Services that use other
  # signers (e.g. SigV4A, BEARER) are out of scope; calling presign
  # on them dies on the missing `_region_for_signature` method.
  sub presign {
      my ($self, $op_name, $args, %opts) = @_;

      my $expires_in = $opts{expires_in} // 900;
      my $now        = $opts{_now}       // time;
      $args //= {};

      my $service_class = ref($self) || $self;
      my $op_class      = "${service_class}::${op_name}";
      Paws->load_class($op_class);

      my $call    = $self->new_with_coercions($op_class, %$args);
      my $request = $self->prepare_request_for_call($call);

      my $uri       = URI->new($request->url);
      my $creds     = $self->credentials->refresh;
      my $amz_date  = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
      my $date_stamp = substr($amz_date, 0, 8);
      my $region    = $self->_region_for_signature;
      my $signing_name = $self->can('signing_name')
                          ? $self->signing_name : $self->service;
      my $scope     = sprintf '%s/%s/%s/aws4_request',
                              $date_stamp, $region, $signing_name;

      my %qp = $uri->query_form;
      $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
      $qp{'X-Amz-Credential'}    = $creds->access_key . '/' . $scope;
      $qp{'X-Amz-Date'}          = $amz_date;
      $qp{'X-Amz-Expires'}       = $expires_in;
      $qp{'X-Amz-SignedHeaders'} = 'host';
      $qp{'X-Amz-Security-Token'} = $creds->session_token
          if $creds->session_token;

      # Canonical query string per RFC 3986 + the AWS SigV4
      # quirks ('!' / '*' / etc. encoded; '/' kept verbatim in the
      # path but encoded in the query).
      my @keys = sort keys %qp;
      my $canonical_qs = join '&', map {
          uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
            . '='
            . uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
      } @keys;

      my $canonical_uri     = $uri->path;
      my $host              = ($uri->port == $uri->default_port)
                                ? $uri->host
                                : $uri->host_port;
      my $canonical_headers = "host:${host}\n";
      my $signed_headers    = 'host';
      my $payload_hash      = 'UNSIGNED-PAYLOAD';

      my $canonical_request = join "\n",
          $request->method,
          $canonical_uri,
          $canonical_qs,
          $canonical_headers,
          $signed_headers,
          $payload_hash;

      my $string_to_sign = join "\n",
          'AWS4-HMAC-SHA256',
          $amz_date,
          $scope,
          sha256_hex($canonical_request);

      my $kDate    = hmac_sha256($date_stamp, 'AWS4' . $creds->secret_key);
      my $kRegion  = hmac_sha256($region,        $kDate);
      my $kService = hmac_sha256($signing_name,  $kRegion);
      my $kSigning = hmac_sha256('aws4_request', $kService);
      my $signature = hmac_sha256_hex($string_to_sign, $kSigning);

      $qp{'X-Amz-Signature'} = $signature;
      $uri->query_form(\%qp);
      return $uri->as_string;
  }

  sub response_to_object {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

    # PR11: same as ref($call_object), without the MOP round-trip.
    $call_object = ref($call_object) || $call_object;

    my $returns = (defined $call_object->_returns) && ($call_object->_returns ne 'Paws::API::Response');
    my $ret_class = $returns ? $call_object->_returns : 'Paws::API::Response';
    Paws->load_class($ret_class);
 
    my $unserialized_struct;

    if ($ret_class->can('_stream_param')) {
      $unserialized_struct = {}
    } else {
      if (not defined $content or $content eq '') {
        $unserialized_struct = {}
      } else {
        if ($ret_class->can('_payload')) {
          $unserialized_struct = {$ret_class->_payload => $content};
        }
        else {
          $unserialized_struct = eval { $self->unserialize_response( $content ) };
        }
        if ($@){
          return Paws::Exception->new(
            message => $@,
            code => 'InvalidContent',
            request_id => '', #$request_id,
            http_status => $http_status,
          );
        }
      }
    }

    my $request_id = $headers->{'x-amz-request-id'} 
                      || $headers->{'x-amzn-requestid'}
                      || $unserialized_struct->{'requestId'} 
                      || $unserialized_struct->{'RequestId'} 
                      || $unserialized_struct->{'RequestID'}
                      || $unserialized_struct->{ ResponseMetadata }->{ RequestId };
 
    if ($call_object->_result_key){
      $unserialized_struct = $unserialized_struct->{ $call_object->_result_key };
    }

    $unserialized_struct->{ _request_id } = $request_id;
      
    if ($returns){
      if ($ret_class->can('_stream_param')) {
        $unserialized_struct->{ $ret_class->_stream_param } = $content
      }

      foreach my $key (keys %$headers){
        $unserialized_struct->{lc $key} = $headers->{$key};
      }

      my $o_result = $self->new_from_result_struct($call_object->_returns, $unserialized_struct);
      return $o_result;
    } else {
      return Paws::API::Response->new(
        _request_id => $request_id,
      );
    }
  }

1;

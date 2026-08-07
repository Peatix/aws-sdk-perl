package Paws::S3::Presigner;

use strict;
use warnings;

use Carp qw(croak);
use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
use POSIX qw(strftime);
use Scalar::Util qw(blessed);
use URI;
use URI::Escape qw(uri_escape_utf8);

our $VERSION = '1.0.0';

my $SIGNING_SERVICE = 's3';
my $DEFAULT_EXPIRY  = 900;
my $MAX_EXPIRY      = 604800;

my %VALID_METHODS = map { $_ => 1 } qw(GET PUT DELETE HEAD);

sub presign_get {
    my ($class, %args) = @_;
    return $class->presign(method => 'GET', %args);
}

sub presign_put {
    my ($class, %args) = @_;
    return $class->presign(method => 'PUT', %args);
}

sub presign_delete {
    my ($class, %args) = @_;
    return $class->presign(method => 'DELETE', %args);
}

sub presign_head {
    my ($class, %args) = @_;
    return $class->presign(method => 'HEAD', %args);
}

sub presign {
    my ($class_or_first, %args) = @_;

    if (blessed($class_or_first) || (!ref($class_or_first) && $class_or_first eq __PACKAGE__)) {
        # called as Paws::S3::Presigner->presign(...)
    } else {
        croak 'presign must be called as a class method on Paws::S3::Presigner';
    }

    my $method      = uc($args{method}      // croak 'method is required');
    my $bucket      = $args{bucket}         // croak 'bucket is required';
    my $key         = $args{key}            // croak 'key is required';
    my $region      = $args{region}         // croak 'region is required';
    my $credentials = $args{credentials}    // croak 'credentials is required';

    croak "method must be one of: GET, PUT, DELETE, HEAD"
        unless $VALID_METHODS{$method};

    croak 'credentials must do the Paws::Credential role'
        unless blessed($credentials)
            && $credentials->can('does')
            && $credentials->does('Paws::Credential');

    my $expires_in = $args{expires_in} // $DEFAULT_EXPIRY;
    croak "expires_in must be between 1 and $MAX_EXPIRY seconds"
        unless $expires_in >= 1 && $expires_in <= $MAX_EXPIRY;

    my $now        = $args{_now}       // time;
    my $endpoint   = $args{endpoint};
    my $extra_query_params = $args{query_params} // {};
    croak 'query_params must be a hashref'
        unless ref($extra_query_params) eq 'HASH';

    my $signed_headers     = $args{headers} // {};
    croak 'headers must be a hashref'
        unless ref($signed_headers) eq 'HASH';

    my $creds = $credentials->refresh;

    my $host;
    my $base_url;
    if (defined $endpoint) {
        my $ep_uri = URI->new($endpoint);
        $host = ($ep_uri->port == $ep_uri->default_port)
                  ? $ep_uri->host
                  : $ep_uri->host_port;
        $base_url = $endpoint;
    } else {
        $host = "${bucket}.s3.${region}.amazonaws.com";
        $base_url = "https://${host}";
    }

    my $canonical_path = _encode_key($key, defined $endpoint);
    if (defined $endpoint) {
        $canonical_path = "/${bucket}${canonical_path}";
    }

    my $uri = URI->new($base_url . $canonical_path);

    my $amz_date   = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
    my $date_stamp = substr($amz_date, 0, 8);
    my $scope      = join '/', $date_stamp, $region, $SIGNING_SERVICE, 'aws4_request';

    my %qp = %$extra_query_params;
    $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
    $qp{'X-Amz-Credential'}    = $creds->access_key . '/' . $scope;
    $qp{'X-Amz-Date'}          = $amz_date;
    $qp{'X-Amz-Expires'}       = $expires_in;

    my %lc_headers;
    for my $h (keys %$signed_headers) {
        $lc_headers{lc $h} = $signed_headers->{$h};
    }
    $lc_headers{'host'} = $host;

    my @header_names = sort keys %lc_headers;
    $qp{'X-Amz-SignedHeaders'} = join ';', @header_names;

    $qp{'X-Amz-Security-Token'} = $creds->session_token
        if $creds->session_token;

    my @keys = sort keys %qp;
    my $canonical_qs = join '&', map {
        uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
          . '='
          . uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
    } @keys;

    my $canonical_headers = join '', map { "$_:" . $lc_headers{$_} . "\n" } @header_names;
    my $signed_headers_str = join ';', @header_names;
    my $payload_hash       = 'UNSIGNED-PAYLOAD';

    my $canonical_request = join "\n",
        $method,
        $canonical_path,
        $canonical_qs,
        $canonical_headers,
        $signed_headers_str,
        $payload_hash;

    my $string_to_sign = join "\n",
        'AWS4-HMAC-SHA256',
        $amz_date,
        $scope,
        sha256_hex($canonical_request);

    my $kDate    = hmac_sha256($date_stamp, 'AWS4' . $creds->secret_key);
    my $kRegion  = hmac_sha256($region,        $kDate);
    my $kService = hmac_sha256($SIGNING_SERVICE, $kRegion);
    my $kSigning = hmac_sha256('aws4_request', $kService);
    my $signature = hmac_sha256_hex($string_to_sign, $kSigning);

    $qp{'X-Amz-Signature'} = $signature;
    $uri->query_form(\%qp);
    return $uri->as_string;
}

sub _encode_key {
    my ($key, $is_path_style) = @_;
    my @segments = split m{/}, $key, -1;
    my $encoded = join '/', map {
        uri_escape_utf8($_, q[^A-Za-z0-9\-_.~])
    } @segments;
    return '/' . $encoded;
}

1;

=encoding UTF-8

=head1 NAME

Paws::S3::Presigner - Generate S3 pre-signed URLs

=head1 SYNOPSIS

  use Paws;
  use Paws::S3::Presigner;

  my $paws = Paws->new(config => { region => 'ap-northeast-1' });

  # Pre-signed GET URL (download)
  my $url = Paws::S3::Presigner->presign_get(
      credentials => $paws->config->credentials,
      region      => 'ap-northeast-1',
      bucket      => 'my-bucket',
      key         => 'path/to/object.pdf',
      expires_in  => 900,  # optional, default 900 seconds
  );

  # Pre-signed PUT URL (upload)
  my $put_url = Paws::S3::Presigner->presign_put(
      credentials => $paws->config->credentials,
      region      => 'ap-northeast-1',
      bucket      => 'my-bucket',
      key         => 'uploads/file.txt',
      expires_in  => 3600,
  );

  # Pre-signed DELETE URL
  my $del_url = Paws::S3::Presigner->presign_delete(
      credentials => $paws->config->credentials,
      region      => 'ap-northeast-1',
      bucket      => 'my-bucket',
      key         => 'old/file.txt',
  );

  # Pre-signed HEAD URL (metadata check)
  my $head_url = Paws::S3::Presigner->presign_head(
      credentials => $paws->config->credentials,
      region      => 'ap-northeast-1',
      bucket      => 'my-bucket',
      key         => 'path/to/object.pdf',
  );

  # Generic method (specify HTTP method explicitly)
  my $url = Paws::S3::Presigner->presign(
      method      => 'GET',
      credentials => $paws->config->credentials,
      region      => 'us-east-1',
      bucket      => 'my-bucket',
      key         => 'key',
  );

=head1 DESCRIPTION

Generates pre-signed URLs for Amazon S3 objects using AWS Signature
Version 4 query-string authentication. The returned URLs can be shared
with clients that do not have AWS credentials; an HTTP request to the
URL within the expiry window authenticates against S3 without requiring
an C<Authorization> header.

This is the Perl equivalent of:

=over 4

=item * Python (boto3): C<s3_client.generate_presigned_url()>

=item * JavaScript: C<@aws-sdk/s3-request-presigner> C<getSignedUrl()>

=item * Go: C<s3.NewPresignClient().PresignGetObject()>

=item * Ruby: C<< Aws::S3::Presigner.new.presigned_url() >>

=back

URLs use virtual-hosted-style addressing by default
(C<https://{bucket}.s3.{region}.amazonaws.com/{key}>). For
S3-compatible services (MinIO, R2, DigitalOcean Spaces), pass the
C<endpoint> parameter to use path-style addressing instead.

=head1 METHODS

=head2 presign_get

  my $url = Paws::S3::Presigner->presign_get(
      credentials => $creds,
      region      => $region,
      bucket      => $bucket,
      key         => $key,
      expires_in  => 900,
  );

Generate a pre-signed URL for downloading (GET) an object.

=head2 presign_put

  my $url = Paws::S3::Presigner->presign_put(
      credentials => $creds,
      region      => $region,
      bucket      => $bucket,
      key         => $key,
      expires_in  => 3600,
  );

Generate a pre-signed URL for uploading (PUT) an object.

=head2 presign_delete

  my $url = Paws::S3::Presigner->presign_delete(
      credentials => $creds,
      region      => $region,
      bucket      => $bucket,
      key         => $key,
  );

Generate a pre-signed URL for deleting (DELETE) an object.

=head2 presign_head

  my $url = Paws::S3::Presigner->presign_head(
      credentials => $creds,
      region      => $region,
      bucket      => $bucket,
      key         => $key,
  );

Generate a pre-signed URL for retrieving object metadata (HEAD).

=head2 presign

  my $url = Paws::S3::Presigner->presign(
      method      => 'GET',
      credentials => $creds,
      region      => $region,
      bucket      => $bucket,
      key         => $key,
      expires_in  => 900,
  );

Generic pre-sign method. The C<method> parameter must be one of
C<GET>, C<PUT>, C<DELETE>, or C<HEAD>.

=head3 Required parameters

=over 4

=item B<method>

The HTTP method for the pre-signed request. One of C<GET>, C<PUT>,
C<DELETE>, C<HEAD>.

=item B<credentials>

An object that does the L<Paws::Credential> role. Typically obtained
from C<< $paws->config->credentials >> or constructed directly via
L<Paws::Credential::Explicit>, L<Paws::Credential::ProviderChain>, etc.

=item B<region>

The AWS region of the S3 bucket, e.g. C<ap-northeast-1>.

=item B<bucket>

The name of the S3 bucket.

=item B<key>

The object key (path) within the bucket.

=back

=head3 Optional parameters

=over 4

=item B<expires_in>

URL validity in seconds. Defaults to C<900> (15 minutes). Maximum is
C<604800> (7 days), per the AWS SigV4 specification.

=item B<endpoint>

Custom endpoint URL for S3-compatible services. When provided, uses
path-style addressing (C<{endpoint}/{bucket}/{key}>) instead of
virtual-hosted-style. Example: C<http://minio.local:9000>.

=item B<query_params>

A hashref of additional query parameters to include in the signed URL.
Useful for response header overrides such as
C<response-content-disposition> or C<response-content-type>.

=item B<headers>

A hashref of additional headers to sign. These headers must be sent
by the client when using the pre-signed URL. Useful for enforcing
C<Content-Type> on PUT uploads.

=back

=head1 SEE ALSO

L<https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html>

L<Paws::API::Caller> - the C<presign> instance method on materialised
service clients (provides the same signing logic tied to a full service
client instance).

=cut

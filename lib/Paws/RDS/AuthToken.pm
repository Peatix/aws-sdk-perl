package Paws::RDS::AuthToken;

use strict;
use warnings;

use Carp qw(croak);
use Digest::SHA qw(sha256_hex hmac_sha256 hmac_sha256_hex);
use POSIX qw(strftime);
use Scalar::Util qw(blessed);
use URI;
use URI::Escape qw(uri_escape_utf8);

our $VERSION = '1.2.0';

my $SIGNING_SERVICE = 'rds-db';
my $DEFAULT_EXPIRY  = 900;

sub generate_db_auth_token {
    my ($class_or_first, %args) = @_;

    if (blessed($class_or_first) || (!ref($class_or_first) && $class_or_first eq __PACKAGE__)) {
        # called as Paws::RDS::AuthToken->generate_db_auth_token(...)
    } else {
        croak 'generate_db_auth_token must be called as a class method on Paws::RDS::AuthToken';
    }

    my $hostname    = $args{hostname}    // croak 'hostname is required';
    my $port        = $args{port}        // croak 'port is required';
    my $db_user     = $args{db_user}     // croak 'db_user is required';
    my $region      = $args{region}      // croak 'region is required';
    my $credentials = $args{credentials} // croak 'credentials is required';

    croak 'credentials must do the Paws::Credential role'
        unless blessed($credentials)
            && $credentials->can('does')
            && $credentials->does('Paws::Credential');

    my $expires_in = $args{expires_in} // $DEFAULT_EXPIRY;
    my $now        = $args{_now}       // time;

    my $creds = $credentials->refresh;

    my $uri = URI->new("https://${hostname}:${port}/");
    $uri->query_form(
        Action => 'connect',
        DBUser => $db_user,
    );

    my $amz_date   = strftime('%Y%m%dT%H%M%SZ', gmtime $now);
    my $date_stamp = substr($amz_date, 0, 8);
    my $scope      = join '/', $date_stamp, $region, $SIGNING_SERVICE, 'aws4_request';

    my %qp = $uri->query_form;
    $qp{'X-Amz-Algorithm'}     = 'AWS4-HMAC-SHA256';
    $qp{'X-Amz-Credential'}    = $creds->access_key . '/' . $scope;
    $qp{'X-Amz-Date'}          = $amz_date;
    $qp{'X-Amz-Expires'}       = $expires_in;
    $qp{'X-Amz-SignedHeaders'} = 'host';
    $qp{'X-Amz-Security-Token'} = $creds->session_token
        if $creds->session_token;

    my @keys = sort keys %qp;
    my $canonical_qs = join '&', map {
        uri_escape_utf8($_,        q[^A-Za-z0-9\-_.~])
          . '='
          . uri_escape_utf8($qp{$_}, q[^A-Za-z0-9\-_.~])
    } @keys;

    my $host              = "${hostname}:${port}";
    my $canonical_headers = "host:${host}\n";
    my $signed_headers    = 'host';
    my $payload_hash      = 'UNSIGNED-PAYLOAD';

    my $canonical_request = join "\n",
        'GET',
        '/',
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
    my $kService = hmac_sha256($SIGNING_SERVICE, $kRegion);
    my $kSigning = hmac_sha256('aws4_request', $kService);
    my $signature = hmac_sha256_hex($string_to_sign, $kSigning);

    $qp{'X-Amz-Signature'} = $signature;
    $uri->query_form(\%qp);

    my $presigned_url = $uri->as_string;
    $presigned_url =~ s{^https://}{};

    return $presigned_url;
}

1;

=encoding UTF-8

=head1 NAME

Paws::RDS::AuthToken - Generate RDS IAM authentication tokens

=head1 SYNOPSIS

  use Paws;
  use Paws::RDS::AuthToken;

  my $paws = Paws->new(config => { region => 'us-east-1' });

  my $token = Paws::RDS::AuthToken->generate_db_auth_token(
      credentials => $paws->config->credentials,
      region      => 'us-east-1',
      hostname    => 'mydb.123456789012.us-east-1.rds.amazonaws.com',
      port        => 5432,
      db_user     => 'iam_user',
  );

  # Use $token as the password when connecting to the database
  # e.g. with DBI:
  #   my $dbh = DBI->connect(
  #       "dbi:Pg:host=$hostname;port=5432;dbname=mydb",
  #       'iam_user',
  #       $token,
  #       { ... },
  #   );

=head1 DESCRIPTION

Generates an IAM authentication token for connecting to an Amazon RDS
database instance. The token is a SigV4-presigned URL (with the scheme
stripped) that the RDS service validates in place of a password.

This is the Perl equivalent of C<boto3>'s
C<rds_client.generate_db_auth_token()>, the Go SDK's
C<rdsutils.BuildAuthToken()>, and the JavaScript SDK's
C<Signer.getAuthToken()>.

Tokens are valid for 15 minutes by default. The database instance must
have IAM database authentication enabled, and the connecting IAM
principal must have the C<rds-db:connect> permission for the target
database user.

=head1 METHODS

=head2 generate_db_auth_token

  my $token = Paws::RDS::AuthToken->generate_db_auth_token(
      credentials => $credential_provider,
      region      => $region,
      hostname    => $hostname,
      port        => $port,
      db_user     => $db_user,
      expires_in  => 900,           # optional, default 900 seconds
  );

=head3 Required parameters

=over 4

=item B<credentials>

An object that does the L<Paws::Credential> role. Typically obtained
from C<< $paws->config->credentials >> or constructed directly via
L<Paws::Credential::Explicit>, L<Paws::Credential::ProviderChain>, etc.

=item B<region>

The AWS region of the RDS instance, e.g. C<us-east-1>.

=item B<hostname>

The endpoint hostname of the RDS instance, e.g.
C<mydb.123456789012.us-east-1.rds.amazonaws.com>.

=item B<port>

The port number the database listens on (e.g. C<5432> for PostgreSQL,
C<3306> for MySQL).

=item B<db_user>

The database user name to authenticate as. This user must be configured
for IAM authentication in the database.

=back

=head3 Optional parameters

=over 4

=item B<expires_in>

Token validity in seconds. Defaults to C<900> (15 minutes). AWS
enforces a maximum of 900 seconds for RDS IAM auth tokens.

=back

=head3 Return value

A string token suitable for use as a database password.

=head1 SEE ALSO

L<https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html>

=cut

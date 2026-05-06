package Paws::Credential::ECSContainerProfile;
  use JSON::MaybeXS;
  use Moose;
  use DateTime::Format::ISO8601;
  use URI;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  has container_local_uri => (
    is => 'ro',
    isa => 'Str|Undef',
    default => sub {
      $ENV{ AWS_CONTAINER_CREDENTIALS_RELATIVE_URI }
    }
  );

  has container_full_uri => (
    is => 'ro',
    isa => 'Str|Undef',
    default => sub {
      $ENV{ AWS_CONTAINER_CREDENTIALS_FULL_URI }
    }
  );

  has authorization_token => (
    is => 'ro',
    isa => 'Str|Undef',
    lazy => 1,
    default => sub {
      if (defined $ENV{ AWS_CONTAINER_AUTHORIZATION_TOKEN }) {
        return $ENV{ AWS_CONTAINER_AUTHORIZATION_TOKEN };
      }
      if (defined $ENV{ AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE }) {
        my $file = $ENV{ AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE };
        open my $fh, '<', $file
          or die "Cannot read authorization token file=$file: $!";
        my $token = do { local $/; <$fh> };
        close $fh;
        chomp $token;
        return $token;
      }
      return undef;
    }
  );

  has metadata_url => (
    is => 'ro',
    isa => 'Str|Undef',
    lazy => 1,
    default => sub {
      my $self = shift;

      if (defined $self->container_local_uri) {
        my $url = URI->new("http://169.254.170.2");
        $url->path($self->container_local_uri);
        return $url->as_string;
      }

      if (defined $self->container_full_uri) {
        $self->_validate_full_uri($self->container_full_uri);
        return $self->container_full_uri;
      }

      return undef;
    }
  );

  has timeout => (is => 'ro', isa => 'Int', default => 1);

  has ua => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      use HTTP::Tiny;
      HTTP::Tiny->new(
        agent => 'AWS Perl SDK',
        timeout => $self->timeout,
      );
    }
  );

  has credentials => (is => 'rw', isa => 'Paws::Credential::Explicit|Undef');

  has expiration => (
    is => 'rw',
    isa => 'Int',
    default => sub { 0 }
  );

  around are_set => sub {
    my ($orig, $self) = @_;
    return 0 if (not defined $self->container_local_uri and not defined $self->container_full_uri);
    return $self->$orig;
  };

  sub _validate_full_uri {
    my ($self, $uri_string) = @_;
    my $uri = URI->new($uri_string);
    my $scheme = lc($uri->scheme // '');

    return if $scheme eq 'https';

    if ($scheme eq 'http') {
      my $host = $uri->host;
      return if $host eq '127.0.0.1';
      return if $host eq '::1';
      return if $host eq '[::1]';
      # ECS link-local range
      return if $host =~ /\A169\.254\.17[0-5]\.\d{1,3}\z/;
      die "Refusing to fetch credentials from HTTP endpoint host=$host; "
        . "only loopback addresses and the ECS link-local range (169.254.170.0-169.254.175.255) are allowed over HTTP";
    }

    die "Unsupported URI scheme scheme=$scheme for container credentials full URI";
  }

  sub refresh {
    my $self = shift;

    if ( $self->credentials && $self->expiration - 240 >= time ) {
      return $self->credentials;
    }

    if ( ! $self->metadata_url ) {
      return;
    }

    my $ua = $self->ua;
    my $options = {};

    if (defined $self->container_full_uri && !defined $self->container_local_uri) {
      my $auth = $self->authorization_token;
      if (defined $auth) {
        $options->{headers} = { 'Authorization' => $auth };
      }
    }

    my $r = $ua->get($self->metadata_url, $options);
    return unless $r->{success};
    return unless $r->{content};

    my $json = eval { decode_json($r->{content}) };
    if ($@) { die "Error in JSON from metadata URL" }

    $self->credentials(Paws::Credential::Explicit->new(
      access_key => $json->{AccessKeyId},
      secret_key => $json->{SecretAccessKey},
      session_token => $json->{Token},
    ));
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($json->{Expiration})->epoch);

    return $self->credentials;
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::ECSContainerProfile

=head1 SYNOPSIS

  use Paws::Credential::ECSContainerProfile;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::ECSContainerProfile->new(
      metadata_url => 'http://localhost:8000/security-credentials',
      timeout => 5,
    )
  });

=head1 DESCRIPTION

The ECSContainerProfile credential provider retrieves AWS credentials from containers running on
AWS ECS (or similar environments like App Runner, EKS Pod Identity, and CodeBuild).

Two resolution modes are supported:

=over 4

=item Relative URI

When the C<AWS_CONTAINER_CREDENTIALS_RELATIVE_URI> environment variable is set, the path is
appended to C<http://169.254.170.2> (the standard ECS credentials endpoint). This is the
default mode for ECS tasks with a task IAM role.

=item Full URI

When the C<AWS_CONTAINER_CREDENTIALS_FULL_URI> environment variable is set, the full URL is
used directly. For security, C<http://> URLs are restricted to loopback addresses
(C<127.0.0.1>, C<::1>) and the ECS link-local range (C<169.254.170.0/21>). C<https://> URLs
are always allowed.

=back

If both environment variables are set, the relative URI takes precedence.

=head2 container_local_uri: Str|Undef

Defaults to C<$ENV{AWS_CONTAINER_CREDENTIALS_RELATIVE_URI}>. A relative path appended
to the ECS metadata endpoint.

=head2 container_full_uri: Str|Undef

Defaults to C<$ENV{AWS_CONTAINER_CREDENTIALS_FULL_URI}>. A full URL from which to
retrieve credentials. Only used if C<container_local_uri> is not set.

=head2 authorization_token: Str|Undef

An optional authorization token sent in the C<Authorization> header when making requests to
the full URI endpoint. Resolved from C<$ENV{AWS_CONTAINER_AUTHORIZATION_TOKEN}> or read from
the file at C<$ENV{AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE}>. Only used with the full URI mode.

=head2 metadata_url: Str|Undef

The resolved URL where credentials will be retrieved. Computed from either C<container_local_uri>
or C<container_full_uri>. Should not normally need to be overridden.

=head2 timeout: Int

Number of seconds to wait before timing out a connection to the metadata service. It defaults to 1 second, as
the metadata service is almost local, and very fast responding. Note that if set too high, and the metadata
service is not present (not running on an AWS instance), the connection has to time out.

=head2 ua

A user agent that has a C<get> method. Defaults to HTTP::Tiny.

=cut

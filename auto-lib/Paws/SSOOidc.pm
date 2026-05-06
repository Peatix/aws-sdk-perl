package Paws::SSOOidc;
  use Moose;
  sub service { 'oidc' }
  sub signing_name { 'sso-oauth' }
  sub version { '2019-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::CreateToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTokenWithIAM {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::CreateTokenWithIAM', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::RegisterClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeviceAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::StartDeviceAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateToken CreateTokenWithIAM RegisterClient StartDeviceAuthorization / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc - Perl Interface to AWS AWS SSO OIDC

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOOidc');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

IAM Identity Center OpenID Connect (OIDC) is a web service that enables
a client (such as CLI or a native application) to register with IAM
Identity Center. The service also enables the client to fetch the
userE<rsquo>s access token upon successful authentication and
authorization with IAM Identity Center.

B<API namespaces>

IAM Identity Center uses the C<sso> and C<identitystore> API
namespaces. IAM Identity Center OpenID Connect uses the C<sso-oidc>
namespace.

B<Considerations for using this guide>

Before you begin using this guide, we recommend that you first review
the following important information about how the IAM Identity Center
OIDC service works.

=over

=item *

The IAM Identity Center OIDC service currently implements only the
portions of the OAuth 2.0 Device Authorization Grant standard
(https://tools.ietf.org/html/rfc8628
(https://tools.ietf.org/html/rfc8628)) that are necessary to enable
single sign-on authentication with the CLI.

=item *

With older versions of the CLI, the service only emits OIDC access
tokens, so to obtain a new token, users must explicitly
re-authenticate. To access the OIDC flow that supports token refresh
and doesnE<rsquo>t require re-authentication, update to the latest CLI
version (1.27.10 for CLI V1 and 2.9.0 for CLI V2) with support for OIDC
token refresh and configurable IAM Identity Center session durations.
For more information, see Configure Amazon Web Services access portal
session duration
(https://docs.aws.amazon.com/singlesignon/latest/userguide/configure-user-session.html).

=item *

The access tokens provided by this service grant access to all Amazon
Web Services account entitlements assigned to an IAM Identity Center
user, not just a particular application.

=item *

The documentation in this guide does not describe the mechanism to
convert the access token into Amazon Web Services Auth
(E<ldquo>sigv4E<rdquo>) credentials for use with IAM-protected Amazon
Web Services service endpoints. For more information, see
GetRoleCredentials
(https://docs.aws.amazon.com/singlesignon/latest/PortalAPIReference/API_GetRoleCredentials.html)
in the I<IAM Identity Center Portal API Reference Guide>.

=back

For general information about IAM Identity Center, see What is IAM
Identity Center?
(https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
in the I<IAM Identity Center User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateToken

=over

=item ClientId => Str

=item ClientSecret => Str

=item GrantType => Str

=item [Code => Str]

=item [CodeVerifier => Str]

=item [DeviceCode => Str]

=item [RedirectUri => Str]

=item [RefreshToken => Str]

=item [Scope => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SSOOidc::CreateToken>

Returns: a L<Paws::SSOOidc::CreateTokenResponse> instance

Creates and returns access and refresh tokens for clients that are
authenticated using client secrets. The access token can be used to
fetch short-lived credentials for the assigned AWS accounts or to
access application APIs using C<bearer> authentication.


=head2 CreateTokenWithIAM

=over

=item ClientId => Str

=item GrantType => Str

=item [Assertion => Str]

=item [Code => Str]

=item [CodeVerifier => Str]

=item [RedirectUri => Str]

=item [RefreshToken => Str]

=item [RequestedTokenType => Str]

=item [Scope => ArrayRef[Str|Undef]]

=item [SubjectToken => Str]

=item [SubjectTokenType => Str]


=back

Each argument is described in detail in: L<Paws::SSOOidc::CreateTokenWithIAM>

Returns: a L<Paws::SSOOidc::CreateTokenWithIAMResponse> instance

Creates and returns access and refresh tokens for clients and
applications that are authenticated using IAM entities. The access
token can be used to fetch short-lived credentials for the assigned
Amazon Web Services accounts or to access application APIs using
C<bearer> authentication.


=head2 RegisterClient

=over

=item ClientName => Str

=item ClientType => Str

=item [EntitledApplicationArn => Str]

=item [GrantTypes => ArrayRef[Str|Undef]]

=item [IssuerUrl => Str]

=item [RedirectUris => ArrayRef[Str|Undef]]

=item [Scopes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SSOOidc::RegisterClient>

Returns: a L<Paws::SSOOidc::RegisterClientResponse> instance

Registers a public client with IAM Identity Center. This allows clients
to perform authorization using the authorization code grant with Proof
Key for Code Exchange (PKCE) or the device code grant.


=head2 StartDeviceAuthorization

=over

=item ClientId => Str

=item ClientSecret => Str

=item StartUrl => Str


=back

Each argument is described in detail in: L<Paws::SSOOidc::StartDeviceAuthorization>

Returns: a L<Paws::SSOOidc::StartDeviceAuthorizationResponse> instance

Initiates device authorization by requesting a pair of verification
codes from the authorization service.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


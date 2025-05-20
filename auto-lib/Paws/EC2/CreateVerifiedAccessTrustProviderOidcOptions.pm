package Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions;
  use Moose;
  has AuthorizationEndpoint => (is => 'ro', isa => 'Str');
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has Issuer => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has TokenEndpoint => (is => 'ro', isa => 'Str');
  has UserInfoEndpoint => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions object:

  $service_obj->Method(Att1 => { AuthorizationEndpoint => $value, ..., UserInfoEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateVerifiedAccessTrustProviderOidcOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AuthorizationEndpoint => Str

The OIDC authorization endpoint.


=head2 ClientId => Str

The client identifier.


=head2 ClientSecret => Str

The client secret.


=head2 Issuer => Str

The OIDC issuer.


=head2 Scope => Str

OpenID Connect (OIDC) scopes are used by an application during
authentication to authorize access to a user's details. Each scope
returns a specific set of user attributes.


=head2 TokenEndpoint => Str

The OIDC token endpoint.


=head2 UserInfoEndpoint => Str

The OIDC user info endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

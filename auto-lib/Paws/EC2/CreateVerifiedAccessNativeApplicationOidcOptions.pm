package Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions;
  use Moose;
  has AuthorizationEndpoint => (is => 'ro', isa => 'Str');
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has Issuer => (is => 'ro', isa => 'Str');
  has PublicSigningKeyEndpoint => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has TokenEndpoint => (is => 'ro', isa => 'Str');
  has UserInfoEndpoint => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions object:

  $service_obj->Method(Att1 => { AuthorizationEndpoint => $value, ..., UserInfoEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateVerifiedAccessNativeApplicationOidcOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AuthorizationEndpoint => Str

The authorization endpoint of the IdP.


=head2 ClientId => Str

The OAuth 2.0 client identifier.


=head2 ClientSecret => Str

The OAuth 2.0 client secret.


=head2 Issuer => Str

The OIDC issuer identifier of the IdP.


=head2 PublicSigningKeyEndpoint => Str

The public signing key endpoint.


=head2 Scope => Str

The set of user claims to be requested from the IdP.


=head2 TokenEndpoint => Str

The token endpoint of the IdP.


=head2 UserInfoEndpoint => Str

The user info endpoint of the IdP.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

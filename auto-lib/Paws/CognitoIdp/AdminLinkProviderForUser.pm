
package Paws::CognitoIdp::AdminLinkProviderForUser;
  use Moose;
  has DestinationUser => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderUserIdentifierType', required => 1);
  has SourceUser => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderUserIdentifierType', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminLinkProviderForUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminLinkProviderForUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminLinkProviderForUser - Arguments for method AdminLinkProviderForUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminLinkProviderForUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminLinkProviderForUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminLinkProviderForUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminLinkProviderForUserResponse =
      $cognito -idp->AdminLinkProviderForUser(
      DestinationUser => {
        ProviderAttributeName  => 'MyStringType',    # max: 131072; OPTIONAL
        ProviderAttributeValue => 'MyStringType',    # max: 131072; OPTIONAL
        ProviderName => 'MyProviderNameType',        # min: 1, max: 32; OPTIONAL
      },
      SourceUser => {
        ProviderAttributeName  => 'MyStringType',    # max: 131072; OPTIONAL
        ProviderAttributeValue => 'MyStringType',    # max: 131072; OPTIONAL
        ProviderName => 'MyProviderNameType',        # min: 1, max: 32; OPTIONAL
      },
      UserPoolId => 'MyStringType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

The existing user in the user pool that you want to assign to the
external IdP user account. This user can be a local (Username +
Password) Amazon Cognito user pools user or a federated user (for
example, a SAML or Facebook user). If the user doesn't exist, Amazon
Cognito generates an exception. Amazon Cognito returns this user when
the new user (with the linked IdP attribute) signs in.

For a native username + password user, the C<ProviderAttributeValue>
for the C<DestinationUser> should be the username in the user pool. For
a federated user, it should be the provider-specific C<user_id>.

The C<ProviderAttributeName> of the C<DestinationUser> is ignored.

The C<ProviderName> should be set to C<Cognito> for users in Cognito
user pools.

All attributes in the DestinationUser profile must be mutable. If you
have assigned the user any immutable custom attributes, the operation
won't succeed.



=head2 B<REQUIRED> SourceUser => L<Paws::CognitoIdp::ProviderUserIdentifierType>

An external IdP account for a user who doesn't exist yet in the user
pool. This user must be a federated user (for example, a SAML or
Facebook user), not another native user.

If the C<SourceUser> is using a federated social IdP, such as Facebook,
Google, or Login with Amazon, you must set the C<ProviderAttributeName>
to C<Cognito_Subject>. For social IdPs, the C<ProviderName> will be
C<Facebook>, C<Google>, or C<LoginWithAmazon>, and Amazon Cognito will
automatically parse the Facebook, Google, and Login with Amazon tokens
for C<id>, C<sub>, and C<user_id>, respectively. The
C<ProviderAttributeValue> for the user must be the same value as the
C<id>, C<sub>, or C<user_id> value found in the social IdP token.

For OIDC, the C<ProviderAttributeName> can be any mapped value from a
claim in the ID token, or that your app retrieves from the C<userInfo>
endpoint. For SAML, the C<ProviderAttributeName> can be any mapped
value from a claim in the SAML assertion.

The following additional considerations apply to C<SourceUser> for OIDC
and SAML providers.

=over

=item *

You must map the claim to a user pool attribute in your IdP
configuration, and set the user pool attribute name as the value of
C<ProviderAttributeName> in your C<AdminLinkProviderForUser> request.
For example, C<email>.

=item *

When you set C<ProviderAttributeName> to C<Cognito_Subject>, Amazon
Cognito will automatically parse the default unique identifier found in
the subject from the IdP token.

=back




=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to link a federated identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminLinkProviderForUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


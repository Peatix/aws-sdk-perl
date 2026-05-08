
package Paws::CognitoIdp::CreateUserPoolDomain;
  use Moose;
  has CustomDomainConfig => (is => 'ro', isa => 'Paws::CognitoIdp::CustomDomainConfigType');
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has ManagedLoginVersion => (is => 'ro', isa => 'Int');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPoolDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolDomain - Arguments for method CreateUserPoolDomain on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolDomain on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateUserPoolDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolDomain.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateUserPoolDomainResponse = $cognito -idp->CreateUserPoolDomain(
      Domain             => 'MyDomainType',
      UserPoolId         => 'MyUserPoolIdType',
      CustomDomainConfig => {
        CertificateArn => 'MyArnType',    # min: 20, max: 2048

      },    # OPTIONAL
      ManagedLoginVersion => 1,    # OPTIONAL
    );

    # Results:
    my $CloudFrontDomain = $CreateUserPoolDomainResponse->CloudFrontDomain;
    my $ManagedLoginVersion =
      $CreateUserPoolDomainResponse->ManagedLoginVersion;

    # Returns a L<Paws::CognitoIdp::CreateUserPoolDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

The configuration for a custom domain. Configures your domain with an
Certificate Manager certificate in the C<us-east-1> Region.

Provide this parameter only if you want to use a custom domain
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html)
for your user pool. Otherwise, you can omit this parameter and use a
prefix domain
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain-prefix.html)
instead.

When you create a custom domain, the passkey RP ID defaults to the
custom domain. If you had a prefix domain active, this will cause
passkey integration for your prefix domain to stop working due to a
mismatch in RP ID. To keep the prefix domain passkey integration
working, you can explicitly set RP ID to the prefix domain.



=head2 B<REQUIRED> Domain => Str

The domain string. For custom domains, this is the fully-qualified
domain name, such as C<auth.example.com>. For prefix domains, this is
the prefix alone, such as C<myprefix>. A prefix value of C<myprefix>
for a user pool in the C<us-east-1> Region results in a domain of
C<myprefix.auth.us-east-1.amazoncognito.com>.



=head2 ManagedLoginVersion => Int

The version of managed login branding that you want to apply to your
domain. A value of C<1> indicates hosted UI (classic) and a version of
C<2> indicates managed login.

Managed login requires that your user pool be configured for any
feature plan
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html)
other than C<Lite>.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to add a domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolDomain in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


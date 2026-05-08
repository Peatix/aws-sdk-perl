
package Paws::CognitoIdp::UpdateUserPoolDomain;
  use Moose;
  has CustomDomainConfig => (is => 'ro', isa => 'Paws::CognitoIdp::CustomDomainConfigType');
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has ManagedLoginVersion => (is => 'ro', isa => 'Int');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPoolDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolDomain - Arguments for method UpdateUserPoolDomain on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPoolDomain on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method UpdateUserPoolDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPoolDomain.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $UpdateUserPoolDomainResponse = $cognito -idp->UpdateUserPoolDomain(
      Domain             => 'MyDomainType',
      UserPoolId         => 'MyUserPoolIdType',
      CustomDomainConfig => {
        CertificateArn => 'MyArnType',    # min: 20, max: 2048

      },    # OPTIONAL
      ManagedLoginVersion => 1,    # OPTIONAL
    );

    # Results:
    my $CloudFrontDomain = $UpdateUserPoolDomainResponse->CloudFrontDomain;
    my $ManagedLoginVersion =
      $UpdateUserPoolDomainResponse->ManagedLoginVersion;

    # Returns a L<Paws::CognitoIdp::UpdateUserPoolDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

The configuration for a custom domain that hosts managed login for your
application. In an C<UpdateUserPoolDomain> request, this parameter
specifies an SSL certificate for the managed login hosted webserver.
The certificate must be an ACM ARN in C<us-east-1>.

When you create a custom domain, the passkey RP ID defaults to the
custom domain. If you had a prefix domain active, this will cause
passkey integration for your prefix domain to stop working due to a
mismatch in RP ID. To keep the prefix domain passkey integration
working, you can explicitly set RP ID to the prefix domain.



=head2 B<REQUIRED> Domain => Str

The name of the domain that you want to update. For custom domains,
this is the fully-qualified domain name, for example
C<auth.example.com>. For prefix domains, this is the prefix alone, such
as C<myprefix>.



=head2 ManagedLoginVersion => Int

A version number that indicates the state of managed login for your
domain. Version C<1> is hosted UI (classic). Version C<2> is the newer
managed login with the branding designer. For more information, see
Managed login
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html).



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool that is associated with the domain you're
updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPoolDomain in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


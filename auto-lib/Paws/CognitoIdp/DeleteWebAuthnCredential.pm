
package Paws::CognitoIdp::DeleteWebAuthnCredential;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has CredentialId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWebAuthnCredential');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DeleteWebAuthnCredentialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DeleteWebAuthnCredential - Arguments for method DeleteWebAuthnCredential on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebAuthnCredential on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DeleteWebAuthnCredential.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebAuthnCredential.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DeleteWebAuthnCredentialResponse =
      $cognito -idp->DeleteWebAuthnCredential(
      AccessToken  => 'MyTokenModelType',
      CredentialId => 'MyStringType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.



=head2 B<REQUIRED> CredentialId => Str

The unique identifier of the passkey that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebAuthnCredential in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


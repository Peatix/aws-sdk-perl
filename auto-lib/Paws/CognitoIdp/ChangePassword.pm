
package Paws::CognitoIdp::ChangePassword;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has PreviousPassword => (is => 'ro', isa => 'Str');
  has ProposedPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ChangePasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ChangePassword - Arguments for method ChangePassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangePassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ChangePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangePassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ChangePasswordResponse = $cognito -idp->ChangePassword(
      AccessToken      => 'MyTokenModelType',
      ProposedPassword => 'MyPasswordType',
      PreviousPassword => 'MyPasswordType',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the user whose
password you want to change.



=head2 PreviousPassword => Str

The user's previous password. Required if the user has a password. If
the user has no password and only signs in with passwordless
authentication options, you can omit this parameter.



=head2 B<REQUIRED> ProposedPassword => Str

A new password that you prompted the user to enter in your application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangePassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


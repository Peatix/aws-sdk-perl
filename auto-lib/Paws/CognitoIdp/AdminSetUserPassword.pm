
package Paws::CognitoIdp::AdminSetUserPassword;
  use Moose;
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has Permanent => (is => 'ro', isa => 'Bool');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminSetUserPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminSetUserPasswordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminSetUserPassword - Arguments for method AdminSetUserPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminSetUserPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminSetUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminSetUserPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminSetUserPasswordResponse = $cognito -idp->AdminSetUserPassword(
      Password   => 'MyPasswordType',
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',
      Permanent  => 1,                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Password => Str

The new temporary or permanent password that you want to set for the
user. You can't remove the password for a user who already has a
password so that they can only sign in with passwordless methods. In
this scenario, you must create a new user without a password.



=head2 Permanent => Bool

Set to C<true> to set a password that the user can immediately sign in
with. Set to C<false> to set a temporary password that the user must
change on their next sign-in.



=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to set the user's password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminSetUserPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


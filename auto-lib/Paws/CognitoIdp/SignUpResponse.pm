
package Paws::CognitoIdp::SignUpResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');
  has Session => (is => 'ro', isa => 'Str');
  has UserConfirmed => (is => 'ro', isa => 'Bool', required => 1);
  has UserSub => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUpResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

In user pools that automatically verify and confirm new users, Amazon
Cognito sends users a message with a code or link that confirms
ownership of the phone number or email address that they entered. The
C<CodeDeliveryDetails> object is information about the delivery
destination for that link or code.


=head2 Session => Str

A session Id that you can pass to C<ConfirmSignUp> when you want to
immediately sign in your user with the C<USER_AUTH> flow after they
complete sign-up.


=head2 B<REQUIRED> UserConfirmed => Bool

Indicates whether the user was automatically confirmed. You can
auto-confirm users with a pre sign-up Lambda trigger
(https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html).


=head2 B<REQUIRED> UserSub => Str

The unique identifier of the new user, for example
C<a1b2c3d4-5678-90ab-cdef-EXAMPLE11111>.


=head2 _request_id => Str


=cut

1;
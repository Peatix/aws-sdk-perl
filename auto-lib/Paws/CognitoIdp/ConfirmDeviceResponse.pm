
package Paws::CognitoIdp::ConfirmDeviceResponse;
  use Moose;
  has UserConfirmationNecessary => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmDeviceResponse

=head1 ATTRIBUTES


=head2 UserConfirmationNecessary => Bool

When C<true>, your user must confirm that they want to remember the
device. Prompt the user for an answer.

When C<false>, immediately sets the device as remembered and eligible
for device authentication.

You can configure your user pool to always remember devices, in which
case this response is C<false>, or to allow users to opt in, in which
case this response is C<true>. Configure this option under I<Device
tracking> in the I<Sign-in> menu of your user pool.


=head2 _request_id => Str


=cut

1;
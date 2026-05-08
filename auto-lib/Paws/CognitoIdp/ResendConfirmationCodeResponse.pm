
package Paws::CognitoIdp::ResendConfirmationCodeResponse;
  use Moose;
  has CodeDeliveryDetails => (is => 'ro', isa => 'Paws::CognitoIdp::CodeDeliveryDetailsType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ResendConfirmationCodeResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => L<Paws::CognitoIdp::CodeDeliveryDetailsType>

Information about the phone number or email address that Amazon Cognito
sent the confirmation code to.


=head2 _request_id => Str


=cut

1;
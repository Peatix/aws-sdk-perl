
package Paws::CognitoIdp::UpdateUserAttributesResponse;
  use Moose;
  has CodeDeliveryDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::CodeDeliveryDetailsType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserAttributesResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetailsList => ArrayRef[L<Paws::CognitoIdp::CodeDeliveryDetailsType>]

When the attribute-update request includes an email address or phone
number attribute, Amazon Cognito sends a message to users with a code
that confirms ownership of the new value that they entered. The
C<CodeDeliveryDetails> object is information about the delivery
destination for that link or code. This behavior happens in user pools
configured to automatically verify changes to those attributes. For
more information, see Verifying when users change their email or phone
number
(https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#verifying-when-users-change-their-email-or-phone-number).


=head2 _request_id => Str


=cut

1;
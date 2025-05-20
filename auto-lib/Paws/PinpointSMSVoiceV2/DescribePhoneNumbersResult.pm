
package Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::PhoneNumberInformation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribePhoneNumbersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 PhoneNumbers => ArrayRef[L<Paws::PinpointSMSVoiceV2::PhoneNumberInformation>]

An array of PhoneNumberInformation objects that contain the details for
the requested phone numbers.


=head2 _request_id => Str


=cut

1;
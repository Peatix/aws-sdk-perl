
package Paws::PinpointSMSVoiceV2::DescribeSenderIdsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SenderIds => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::SenderIdInformation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeSenderIdsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 SenderIds => ArrayRef[L<Paws::PinpointSMSVoiceV2::SenderIdInformation>]

An array of SernderIdInformation objects that contain the details for
the requested SenderIds.


=head2 _request_id => Str


=cut

1;
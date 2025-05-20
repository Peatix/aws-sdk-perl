
package Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OptOutLists => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::OptOutListInformation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeOptOutListsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 OptOutLists => ArrayRef[L<Paws::PinpointSMSVoiceV2::OptOutListInformation>]

An array of OptOutListInformation objects that contain the details for
the requested OptOutLists.


=head2 _request_id => Str


=cut

1;
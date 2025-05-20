
package Paws::PinpointSMSVoiceV2::DescribeSpendLimitsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SpendLimits => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::SpendLimit]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeSpendLimitsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 SpendLimits => ArrayRef[L<Paws::PinpointSMSVoiceV2::SpendLimit>]

An array of SpendLimit objects that contain the details for the
requested spend limits.


=head2 _request_id => Str


=cut

1;
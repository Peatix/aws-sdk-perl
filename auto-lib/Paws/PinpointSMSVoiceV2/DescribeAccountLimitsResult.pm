
package Paws::PinpointSMSVoiceV2::DescribeAccountLimitsResult;
  use Moose;
  has AccountLimits => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::AccountLimit]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeAccountLimitsResult

=head1 ATTRIBUTES


=head2 AccountLimits => ArrayRef[L<Paws::PinpointSMSVoiceV2::AccountLimit>]

An array of AccountLimit objects that show the current spend limits.


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 _request_id => Str


=cut

1;
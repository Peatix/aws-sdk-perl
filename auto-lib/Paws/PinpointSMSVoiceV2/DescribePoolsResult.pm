
package Paws::PinpointSMSVoiceV2::DescribePoolsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Pools => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::PoolInformation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribePoolsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. If this
field is empty then there are no more results.


=head2 Pools => ArrayRef[L<Paws::PinpointSMSVoiceV2::PoolInformation>]

An array of PoolInformation objects that contain the details for the
requested pools.


=head2 _request_id => Str


=cut

1;
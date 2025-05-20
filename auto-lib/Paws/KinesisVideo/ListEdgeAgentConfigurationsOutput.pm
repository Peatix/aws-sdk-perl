
package Paws::KinesisVideo::ListEdgeAgentConfigurationsOutput;
  use Moose;
  has EdgeConfigs => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::ListEdgeAgentConfigurationsEdgeConfig]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListEdgeAgentConfigurationsOutput

=head1 ATTRIBUTES


=head2 EdgeConfigs => ArrayRef[L<Paws::KinesisVideo::ListEdgeAgentConfigurationsEdgeConfig>]

A description of a single stream's edge configuration.


=head2 NextToken => Str

If the response is truncated, the call returns this element with a
given token. To get the next batch of edge configurations, use this
token in your next request.


=head2 _request_id => Str


=cut


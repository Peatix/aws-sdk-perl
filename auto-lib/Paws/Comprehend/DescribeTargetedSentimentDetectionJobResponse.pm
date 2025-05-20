
package Paws::Comprehend::DescribeTargetedSentimentDetectionJobResponse;
  use Moose;
  has TargetedSentimentDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::TargetedSentimentDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeTargetedSentimentDetectionJobResponse

=head1 ATTRIBUTES


=head2 TargetedSentimentDetectionJobProperties => L<Paws::Comprehend::TargetedSentimentDetectionJobProperties>

An object that contains the properties associated with a targeted
sentiment detection job.


=head2 _request_id => Str


=cut

1;
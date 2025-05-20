
package Paws::Comprehend::ListTargetedSentimentDetectionJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetedSentimentDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::TargetedSentimentDetectionJobProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListTargetedSentimentDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 TargetedSentimentDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::TargetedSentimentDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;
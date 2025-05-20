
package Paws::Rekognition::ListMediaAnalysisJobsResponse;
  use Moose;
  has MediaAnalysisJobs => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::MediaAnalysisJobDescription]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListMediaAnalysisJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MediaAnalysisJobs => ArrayRef[L<Paws::Rekognition::MediaAnalysisJobDescription>]

Contains a list of all media analysis jobs.


=head2 NextToken => Str

Pagination token, if the previous response was incomplete.


=head2 _request_id => Str


=cut

1;
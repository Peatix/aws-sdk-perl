
package Paws::ComputeOptimizer::ExportIdleRecommendationsResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' );
  has S3Destination => (is => 'ro', isa => 'Paws::ComputeOptimizer::S3Destination', traits => ['NameInRequest'], request_name => 's3Destination' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::ExportIdleRecommendationsResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identification number of the export job.

To view the status of an export job, use the
DescribeRecommendationExportJobs action and specify the job ID.


=head2 S3Destination => L<Paws::ComputeOptimizer::S3Destination>




=head2 _request_id => Str


=cut

1;
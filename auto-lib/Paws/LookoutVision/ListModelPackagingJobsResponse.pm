
package Paws::LookoutVision::ListModelPackagingJobsResponse;
  use Moose;
  has ModelPackagingJobs => (is => 'ro', isa => 'ArrayRef[Paws::LookoutVision::ModelPackagingJobMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListModelPackagingJobsResponse

=head1 ATTRIBUTES


=head2 ModelPackagingJobs => ArrayRef[L<Paws::LookoutVision::ModelPackagingJobMetadata>]

A list of the model packaging jobs created for the specified Amazon
Lookout for Vision project.


=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Lookout for Vision returns a pagination token in
the response. You can use this pagination token to retrieve the next
set of results.


=head2 _request_id => Str


=cut


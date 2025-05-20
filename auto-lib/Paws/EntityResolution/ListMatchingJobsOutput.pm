
package Paws::EntityResolution::ListMatchingJobsOutput;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::JobSummary]', traits => ['NameInRequest'], request_name => 'jobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListMatchingJobsOutput

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::EntityResolution::JobSummary>]

A list of C<JobSummary> objects, each of which contain the ID, status,
start time, and end time of a job.


=head2 NextToken => Str

The pagination token from the previous API call.


=head2 _request_id => Str


=cut


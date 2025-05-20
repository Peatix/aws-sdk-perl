
package Paws::Personalize::ListDataDeletionJobsResponse;
  use Moose;
  has DataDeletionJobs => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DataDeletionJobSummary]', traits => ['NameInRequest'], request_name => 'dataDeletionJobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDataDeletionJobsResponse

=head1 ATTRIBUTES


=head2 DataDeletionJobs => ArrayRef[L<Paws::Personalize::DataDeletionJobSummary>]

The list of data deletion jobs.


=head2 NextToken => Str

A token for getting the next set of data deletion jobs (if they exist).


=head2 _request_id => Str


=cut

1;

package Paws::Personalize::ListBatchSegmentJobsResponse;
  use Moose;
  has BatchSegmentJobs => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::BatchSegmentJobSummary]', traits => ['NameInRequest'], request_name => 'batchSegmentJobs' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListBatchSegmentJobsResponse

=head1 ATTRIBUTES


=head2 BatchSegmentJobs => ArrayRef[L<Paws::Personalize::BatchSegmentJobSummary>]

A list containing information on each job that is returned.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;
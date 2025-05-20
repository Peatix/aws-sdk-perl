
package Paws::DataZone::ListJobRunsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::JobRunSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListJobRunsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::JobRunSummary>]

The results of the ListJobRuns action.


=head2 NextToken => Str

When the number of job runs is greater than the default value for the
MaxResults parameter, or if you explicitly specify a value for
MaxResults that is less than the number of job runs, the response
includes a pagination token named NextToken. You can specify this
NextToken value in a subsequent call to ListJobRuns to list the next
set of job runs.


=head2 _request_id => Str


=cut


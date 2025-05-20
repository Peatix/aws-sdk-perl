
package Paws::AppTest::ListTestRunsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestRuns => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestRunSummary]', traits => ['NameInRequest'], request_name => 'testRuns', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRunsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token from the previous request to retrieve the next page of
results.


=head2 B<REQUIRED> TestRuns => ArrayRef[L<Paws::AppTest::TestRunSummary>]

The test runs of the response query.


=head2 _request_id => Str


=cut


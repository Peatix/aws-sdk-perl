
package Paws::AppTest::ListTestRunTestCasesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestRunTestCases => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestCaseRunSummary]', traits => ['NameInRequest'], request_name => 'testRunTestCases', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRunTestCasesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token from a previous request to retrieve the next page of results.


=head2 B<REQUIRED> TestRunTestCases => ArrayRef[L<Paws::AppTest::TestCaseRunSummary>]

The test run of the test cases.


=head2 _request_id => Str


=cut


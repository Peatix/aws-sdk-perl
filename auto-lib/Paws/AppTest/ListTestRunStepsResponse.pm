
package Paws::AppTest::ListTestRunStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestRunSteps => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestRunStepSummary]', traits => ['NameInRequest'], request_name => 'testRunSteps', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRunStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token from a previous request to retrieve the next page of results.


=head2 B<REQUIRED> TestRunSteps => ArrayRef[L<Paws::AppTest::TestRunStepSummary>]

The test run steps of the response query.


=head2 _request_id => Str


=cut


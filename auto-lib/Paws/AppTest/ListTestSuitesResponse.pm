
package Paws::AppTest::ListTestSuitesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestSuites => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestSuiteSummary]', traits => ['NameInRequest'], request_name => 'testSuites', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestSuitesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token from a previous request to retrieve the next page of test
suites results.


=head2 B<REQUIRED> TestSuites => ArrayRef[L<Paws::AppTest::TestSuiteSummary>]

The test suites returned with the response query.


=head2 _request_id => Str


=cut


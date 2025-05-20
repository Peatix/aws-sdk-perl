
package Paws::AppTest::ListTestCasesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestCases => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::TestCaseSummary]', traits => ['NameInRequest'], request_name => 'testCases', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestCasesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token in test cases.


=head2 B<REQUIRED> TestCases => ArrayRef[L<Paws::AppTest::TestCaseSummary>]

The test cases in an application.


=head2 _request_id => Str


=cut


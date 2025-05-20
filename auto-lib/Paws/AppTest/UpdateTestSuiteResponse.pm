
package Paws::AppTest::UpdateTestSuiteResponse;
  use Moose;
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteId', required => 1);
  has TestSuiteVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testSuiteVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::UpdateTestSuiteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSuiteId => Str

The test suite ID of the test suite.


=head2 TestSuiteVersion => Int

The test suite version of the test suite.


=head2 _request_id => Str


=cut


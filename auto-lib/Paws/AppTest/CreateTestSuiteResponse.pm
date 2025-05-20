
package Paws::AppTest::CreateTestSuiteResponse;
  use Moose;
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteId', required => 1);
  has TestSuiteVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testSuiteVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::CreateTestSuiteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSuiteId => Str

The suite ID of the test suite.


=head2 B<REQUIRED> TestSuiteVersion => Int

The suite version of the test suite.


=head2 _request_id => Str


=cut


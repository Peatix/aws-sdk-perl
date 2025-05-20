
package Paws::AppTest::UpdateTestCaseResponse;
  use Moose;
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testCaseId', required => 1);
  has TestCaseVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testCaseVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::UpdateTestCaseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestCaseId => Str

The test case ID of the test case.


=head2 B<REQUIRED> TestCaseVersion => Int

The test case version of the test case.


=head2 _request_id => Str


=cut


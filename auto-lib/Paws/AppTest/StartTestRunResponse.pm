
package Paws::AppTest::StartTestRunResponse;
  use Moose;
  has TestRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testRunId', required => 1);
  has TestRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testRunStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::StartTestRunResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestRunId => Str

The test run ID of the test run.


=head2 B<REQUIRED> TestRunStatus => Str

The test run status of the test run.

Valid values are: C<"Success">, C<"Running">, C<"Failed">, C<"Deleting">
=head2 _request_id => Str


=cut


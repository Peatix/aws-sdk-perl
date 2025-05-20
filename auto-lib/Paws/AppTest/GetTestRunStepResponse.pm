
package Paws::AppTest::GetTestRunStepResponse;
  use Moose;
  has AfterStep => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'afterStep');
  has BeforeStep => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'beforeStep');
  has RunEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runEndTime');
  has RunStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runStartTime', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has StepName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepName', required => 1);
  has StepRunSummary => (is => 'ro', isa => 'Paws::AppTest::StepRunSummary', traits => ['NameInRequest'], request_name => 'stepRunSummary');
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testCaseId');
  has TestCaseVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testCaseVersion');
  has TestRunId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testRunId', required => 1);
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteId');
  has TestSuiteVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'testSuiteVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestRunStepResponse

=head1 ATTRIBUTES


=head2 AfterStep => Bool

The after steps of the test run step.


=head2 BeforeStep => Bool

The before steps of the test run step.


=head2 RunEndTime => Str

The run end time of the test run step.


=head2 B<REQUIRED> RunStartTime => Str

The run start time of the test run step.


=head2 B<REQUIRED> Status => Str

The status of the test run step.

Valid values are: C<"Success">, C<"Failed">, C<"Running">
=head2 StatusReason => Str

The status reason of the test run step.


=head2 B<REQUIRED> StepName => Str

The step name of the test run step.


=head2 StepRunSummary => L<Paws::AppTest::StepRunSummary>

The step run summary of the test run step.


=head2 TestCaseId => Str

The test case ID of the test run step.


=head2 TestCaseVersion => Int

The test case version of the test run step.


=head2 B<REQUIRED> TestRunId => Str

The test run ID of the test run step.


=head2 TestSuiteId => Str

The test suite ID of the test run step.


=head2 TestSuiteVersion => Int

The test suite version of the test run step.


=head2 _request_id => Str


=cut


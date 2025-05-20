
package Paws::AppTest::GetTestRunStep;
  use Moose;
  has StepName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stepName', required => 1);
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'testCaseId');
  has TestRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testRunId', required => 1);
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'testSuiteId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestRunStep');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testruns/{testRunId}/steps/{stepName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::GetTestRunStepResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestRunStep - Arguments for method GetTestRunStep on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestRunStep on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method GetTestRunStep.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestRunStep.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $GetTestRunStepResponse = $apptest->GetTestRunStep(
      StepName    => 'MyResourceName',
      TestRunId   => 'MyIdentifier',
      TestCaseId  => 'MyIdentifier',     # OPTIONAL
      TestSuiteId => 'MyIdentifier',     # OPTIONAL
    );

    # Results:
    my $AfterStep        = $GetTestRunStepResponse->AfterStep;
    my $BeforeStep       = $GetTestRunStepResponse->BeforeStep;
    my $RunEndTime       = $GetTestRunStepResponse->RunEndTime;
    my $RunStartTime     = $GetTestRunStepResponse->RunStartTime;
    my $Status           = $GetTestRunStepResponse->Status;
    my $StatusReason     = $GetTestRunStepResponse->StatusReason;
    my $StepName         = $GetTestRunStepResponse->StepName;
    my $StepRunSummary   = $GetTestRunStepResponse->StepRunSummary;
    my $TestCaseId       = $GetTestRunStepResponse->TestCaseId;
    my $TestCaseVersion  = $GetTestRunStepResponse->TestCaseVersion;
    my $TestRunId        = $GetTestRunStepResponse->TestRunId;
    my $TestSuiteId      = $GetTestRunStepResponse->TestSuiteId;
    my $TestSuiteVersion = $GetTestRunStepResponse->TestSuiteVersion;

    # Returns a L<Paws::AppTest::GetTestRunStepResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/GetTestRunStep>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StepName => Str

The step name of the test run step.



=head2 TestCaseId => Str

The test case ID of a test run step.



=head2 B<REQUIRED> TestRunId => Str

The test run ID of the test run step.



=head2 TestSuiteId => Str

The test suite ID of a test run step.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestRunStep in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


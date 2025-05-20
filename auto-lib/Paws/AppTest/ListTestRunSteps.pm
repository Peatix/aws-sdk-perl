
package Paws::AppTest::ListTestRunSteps;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'testCaseId');
  has TestRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testRunId', required => 1);
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'testSuiteId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestRunSteps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testruns/{testRunId}/steps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::ListTestRunStepsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRunSteps - Arguments for method ListTestRunSteps on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestRunSteps on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method ListTestRunSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestRunSteps.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $ListTestRunStepsResponse = $apptest->ListTestRunSteps(
      TestRunId   => 'MyIdentifier',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      TestCaseId  => 'MyIdentifier',    # OPTIONAL
      TestSuiteId => 'MyIdentifier',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTestRunStepsResponse->NextToken;
    my $TestRunSteps = $ListTestRunStepsResponse->TestRunSteps;

    # Returns a L<Paws::AppTest::ListTestRunStepsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/ListTestRunSteps>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test run steps to return in one page of results.



=head2 NextToken => Str

The token from a previous step to retrieve the next page of results.



=head2 TestCaseId => Str

The test case ID of the test run steps.



=head2 B<REQUIRED> TestRunId => Str

The test run ID of the test run steps.



=head2 TestSuiteId => Str

The test suite ID of the test run steps.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestRunSteps in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


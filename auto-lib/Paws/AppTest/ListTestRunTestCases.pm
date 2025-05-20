
package Paws::AppTest::ListTestRunTestCases;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TestRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testRunId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestRunTestCases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testruns/{testRunId}/testcases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::ListTestRunTestCasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRunTestCases - Arguments for method ListTestRunTestCases on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestRunTestCases on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method ListTestRunTestCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestRunTestCases.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $ListTestRunTestCasesResponse = $apptest->ListTestRunTestCases(
      TestRunId  => 'MyIdentifier',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListTestRunTestCasesResponse->NextToken;
    my $TestRunTestCases = $ListTestRunTestCasesResponse->TestRunTestCases;

    # Returns a L<Paws::AppTest::ListTestRunTestCasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/ListTestRunTestCases>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test run test cases to return in one page of
results.



=head2 NextToken => Str

The token from a previous request to retrieve the next page of results.



=head2 B<REQUIRED> TestRunId => Str

The test run ID of the test cases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestRunTestCases in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


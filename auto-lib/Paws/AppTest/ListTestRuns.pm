
package Paws::AppTest::ListTestRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TestRunIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'testrunIds');
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'testSuiteId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testruns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::ListTestRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestRuns - Arguments for method ListTestRuns on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestRuns on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method ListTestRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestRuns.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $ListTestRunsResponse = $apptest->ListTestRuns(
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyNextToken',              # OPTIONAL
      TestRunIds  => [ 'MyIdentifier', ... ],    # OPTIONAL
      TestSuiteId => 'MyIdentifier',             # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTestRunsResponse->NextToken;
    my $TestRuns  = $ListTestRunsResponse->TestRuns;

    # Returns a L<Paws::AppTest::ListTestRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/ListTestRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test runs to return in one page of results.



=head2 NextToken => Str

The token from the previous request to retrieve the next page of test
run results.



=head2 TestRunIds => ArrayRef[Str|Undef]

The test run IDs of the test runs.



=head2 TestSuiteId => Str

The test suite ID of the test runs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestRuns in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::AppTest::ListTestSuites;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TestSuiteIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'testSuiteIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestSuites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsuites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::ListTestSuitesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestSuites - Arguments for method ListTestSuites on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestSuites on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method ListTestSuites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestSuites.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $ListTestSuitesResponse = $apptest->ListTestSuites(
      MaxResults   => 1,                          # OPTIONAL
      NextToken    => 'MyNextToken',              # OPTIONAL
      TestSuiteIds => [ 'MyIdentifier', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListTestSuitesResponse->NextToken;
    my $TestSuites = $ListTestSuitesResponse->TestSuites;

    # Returns a L<Paws::AppTest::ListTestSuitesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/ListTestSuites>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of test suites to return in one page of results.



=head2 NextToken => Str

The token from a previous request to retrieve the next page of results.



=head2 TestSuiteIds => ArrayRef[Str|Undef]

The suite ID of the test suites.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestSuites in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


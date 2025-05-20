
package Paws::AppTest::GetTestSuite;
  use Moose;
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSuiteId', required => 1);
  has TestSuiteVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'testSuiteVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestSuite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsuites/{testSuiteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::GetTestSuiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestSuite - Arguments for method GetTestSuite on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestSuite on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method GetTestSuite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestSuite.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $GetTestSuiteResponse = $apptest->GetTestSuite(
      TestSuiteId      => 'MyIdentifier',
      TestSuiteVersion => 1,                # OPTIONAL
    );

    # Results:
    my $AfterSteps       = $GetTestSuiteResponse->AfterSteps;
    my $BeforeSteps      = $GetTestSuiteResponse->BeforeSteps;
    my $CreationTime     = $GetTestSuiteResponse->CreationTime;
    my $Description      = $GetTestSuiteResponse->Description;
    my $LastUpdateTime   = $GetTestSuiteResponse->LastUpdateTime;
    my $LatestVersion    = $GetTestSuiteResponse->LatestVersion;
    my $Name             = $GetTestSuiteResponse->Name;
    my $Status           = $GetTestSuiteResponse->Status;
    my $StatusReason     = $GetTestSuiteResponse->StatusReason;
    my $Tags             = $GetTestSuiteResponse->Tags;
    my $TestCases        = $GetTestSuiteResponse->TestCases;
    my $TestSuiteArn     = $GetTestSuiteResponse->TestSuiteArn;
    my $TestSuiteId      = $GetTestSuiteResponse->TestSuiteId;
    my $TestSuiteVersion = $GetTestSuiteResponse->TestSuiteVersion;

    # Returns a L<Paws::AppTest::GetTestSuiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/GetTestSuite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSuiteId => Str

The ID of the test suite.



=head2 TestSuiteVersion => Int

The version of the test suite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestSuite in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::AppTest::GetTestCase;
  use Moose;
  has TestCaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testCaseId', required => 1);
  has TestCaseVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'testCaseVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testcases/{testCaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::GetTestCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestCase - Arguments for method GetTestCase on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestCase on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method GetTestCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestCase.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $GetTestCaseResponse = $apptest->GetTestCase(
      TestCaseId      => 'MyIdentifier',
      TestCaseVersion => 1,                # OPTIONAL
    );

    # Results:
    my $CreationTime    = $GetTestCaseResponse->CreationTime;
    my $Description     = $GetTestCaseResponse->Description;
    my $LastUpdateTime  = $GetTestCaseResponse->LastUpdateTime;
    my $LatestVersion   = $GetTestCaseResponse->LatestVersion;
    my $Name            = $GetTestCaseResponse->Name;
    my $Status          = $GetTestCaseResponse->Status;
    my $StatusReason    = $GetTestCaseResponse->StatusReason;
    my $Steps           = $GetTestCaseResponse->Steps;
    my $Tags            = $GetTestCaseResponse->Tags;
    my $TestCaseArn     = $GetTestCaseResponse->TestCaseArn;
    my $TestCaseId      = $GetTestCaseResponse->TestCaseId;
    my $TestCaseVersion = $GetTestCaseResponse->TestCaseVersion;

    # Returns a L<Paws::AppTest::GetTestCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/GetTestCase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestCaseId => Str

The request test ID of the test case.



=head2 TestCaseVersion => Int

The test case version of the test case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestCase in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


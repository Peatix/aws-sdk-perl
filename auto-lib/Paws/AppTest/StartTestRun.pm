
package Paws::AppTest::StartTestRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testConfigurationId');
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSuiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTestRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testrun');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::StartTestRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::StartTestRun - Arguments for method StartTestRun on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTestRun on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method StartTestRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTestRun.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $StartTestRunResponse = $apptest->StartTestRun(
      TestSuiteId => 'MyIdentifier',
      ClientToken => 'MyIdempotencyTokenString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TestConfigurationId => 'MyIdentifier',    # OPTIONAL
    );

    # Results:
    my $TestRunId     = $StartTestRunResponse->TestRunId;
    my $TestRunStatus = $StartTestRunResponse->TestRunStatus;

    # Returns a L<Paws::AppTest::StartTestRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/StartTestRun>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token of the test run.



=head2 Tags => L<Paws::AppTest::TagMap>

The tags of the test run.



=head2 TestConfigurationId => Str

The configuration ID of the test run.



=head2 B<REQUIRED> TestSuiteId => Str

The test suite ID of the test run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTestRun in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::AppTest::GetTestConfiguration;
  use Moose;
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testConfigurationId', required => 1);
  has TestConfigurationVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'testConfigurationVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testconfigurations/{testConfigurationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::GetTestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::GetTestConfiguration - Arguments for method GetTestConfiguration on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTestConfiguration on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method GetTestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTestConfiguration.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $GetTestConfigurationResponse = $apptest->GetTestConfiguration(
      TestConfigurationId      => 'MyIdentifier',
      TestConfigurationVersion => 1,                # OPTIONAL
    );

    # Results:
    my $CreationTime    = $GetTestConfigurationResponse->CreationTime;
    my $Description     = $GetTestConfigurationResponse->Description;
    my $LastUpdateTime  = $GetTestConfigurationResponse->LastUpdateTime;
    my $LatestVersion   = $GetTestConfigurationResponse->LatestVersion;
    my $Name            = $GetTestConfigurationResponse->Name;
    my $Properties      = $GetTestConfigurationResponse->Properties;
    my $Resources       = $GetTestConfigurationResponse->Resources;
    my $ServiceSettings = $GetTestConfigurationResponse->ServiceSettings;
    my $Status          = $GetTestConfigurationResponse->Status;
    my $StatusReason    = $GetTestConfigurationResponse->StatusReason;
    my $Tags            = $GetTestConfigurationResponse->Tags;
    my $TestConfigurationArn =
      $GetTestConfigurationResponse->TestConfigurationArn;
    my $TestConfigurationId =
      $GetTestConfigurationResponse->TestConfigurationId;
    my $TestConfigurationVersion =
      $GetTestConfigurationResponse->TestConfigurationVersion;

    # Returns a L<Paws::AppTest::GetTestConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/GetTestConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestConfigurationId => Str

The request test configuration ID.



=head2 TestConfigurationVersion => Int

The test configuration version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTestConfiguration in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


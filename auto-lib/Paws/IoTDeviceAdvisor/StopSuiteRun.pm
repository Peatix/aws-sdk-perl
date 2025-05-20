
package Paws::IoTDeviceAdvisor::StopSuiteRun;
  use Moose;
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteDefinitionId', required => 1);
  has SuiteRunId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteRunId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopSuiteRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::StopSuiteRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::StopSuiteRun - Arguments for method StopSuiteRun on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopSuiteRun on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method StopSuiteRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopSuiteRun.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $StopSuiteRunResponse = $api . iotdeviceadvisor->StopSuiteRun(
      SuiteDefinitionId => 'MyUUID',
      SuiteRunId        => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/StopSuiteRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuiteDefinitionId => Str

Suite definition ID of the test suite run to be stopped.



=head2 B<REQUIRED> SuiteRunId => Str

Suite run ID of the test suite run to be stopped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopSuiteRun in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


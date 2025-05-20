
package Paws::IoTDeviceAdvisor::UpdateSuiteDefinition;
  use Moose;
  has SuiteDefinitionConfiguration => (is => 'ro', isa => 'Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration', traits => ['NameInRequest'], request_name => 'suiteDefinitionConfiguration', required => 1);
  has SuiteDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'suiteDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSuiteDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions/{suiteDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::UpdateSuiteDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::UpdateSuiteDefinition - Arguments for method UpdateSuiteDefinition on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSuiteDefinition on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method UpdateSuiteDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSuiteDefinition.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $UpdateSuiteDefinitionResponse =
      $api . iotdeviceadvisor->UpdateSuiteDefinition(
      SuiteDefinitionConfiguration => {
        DevicePermissionRoleArn => 'MyAmazonResourceName',  # min: 20, max: 2048
        RootGroup               => 'MyRootGroup',           # max: 2048
        SuiteDefinitionName     => 'MySuiteDefinitionName', # min: 1, max: 256
        Devices                 => [
          {
            CertificateArn => 'MyAmazonResourceName',    # min: 20, max: 2048
            DeviceRoleArn  => 'MyAmazonResourceName',    # min: 20, max: 2048
            ThingArn       => 'MyAmazonResourceName',    # min: 20, max: 2048
          },
          ...
        ],    # max: 2; OPTIONAL
        IntendedForQualification => 1,             # OPTIONAL
        IsLongDurationTest       => 1,             # OPTIONAL
        Protocol                 => 'MqttV3_1_1'
        , # values: MqttV3_1_1, MqttV5, MqttV3_1_1_OverWebSocket, MqttV5_OverWebSocket; OPTIONAL
      },
      SuiteDefinitionId => 'MyUUID',

      );

    # Results:
    my $CreatedAt          = $UpdateSuiteDefinitionResponse->CreatedAt;
    my $LastUpdatedAt      = $UpdateSuiteDefinitionResponse->LastUpdatedAt;
    my $SuiteDefinitionArn = $UpdateSuiteDefinitionResponse->SuiteDefinitionArn;
    my $SuiteDefinitionId  = $UpdateSuiteDefinitionResponse->SuiteDefinitionId;
    my $SuiteDefinitionName =
      $UpdateSuiteDefinitionResponse->SuiteDefinitionName;
    my $SuiteDefinitionVersion =
      $UpdateSuiteDefinitionResponse->SuiteDefinitionVersion;

    # Returns a L<Paws::IoTDeviceAdvisor::UpdateSuiteDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/UpdateSuiteDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SuiteDefinitionConfiguration => L<Paws::IoTDeviceAdvisor::SuiteDefinitionConfiguration>

Updates a Device Advisor test suite with suite definition
configuration.



=head2 B<REQUIRED> SuiteDefinitionId => Str

Suite definition ID of the test suite to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSuiteDefinition in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


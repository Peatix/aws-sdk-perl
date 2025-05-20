
package Paws::IoTManagedIntegrations::UpdateManagedThing;
  use Moose;
  has Brand => (is => 'ro', isa => 'Str');
  has Capabilities => (is => 'ro', isa => 'Str');
  has CapabilityReport => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::CapabilityReport');
  has Classification => (is => 'ro', isa => 'Str');
  has CredentialLockerId => (is => 'ro', isa => 'Str');
  has HubNetworkMode => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has MetaData => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::MetaData');
  has Model => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateManagedThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::UpdateManagedThing - Arguments for method UpdateManagedThing on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateManagedThing on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method UpdateManagedThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateManagedThing.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    $api . iotmanagedintegrations->UpdateManagedThing(
      Identifier       => 'MyManagedThingId',
      Brand            => 'MyBrand',            # OPTIONAL
      Capabilities     => 'MyCapabilities',     # OPTIONAL
      CapabilityReport => {
        Endpoints => [
          {
            Capabilities => [
              {
                Actions => [
                  'MyActionName', ...    # min: 1, max: 128
                ],    # max: 100
                Events => [
                  'MyEventName', ...    # min: 1, max: 128
                ],    # max: 100
                Id         => 'MySchemaVersionedId',    # min: 1, max: 128
                Name       => 'MyCapabilityName',       # min: 1, max: 128
                Properties => [
                  'MyPropertyName', ...                 # min: 1, max: 128
                ],    # max: 100
                Version => 'MyCapabilityVersion',    # min: 1, max: 64

              },
              ...
            ],    # max: 50
            DeviceTypes => [
              'MyDeviceType', ...    # max: 256
            ],    # max: 50
            Id => 'MyEndpointId',    # min: 1, max: 64

          },
          ...
        ],    # max: 50
        Version => 'MyCapabilityReportVersion',    # min: 1, max: 10
        NodeId  => 'MyNodeId',                     # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      Classification     => 'MyClassification',        # OPTIONAL
      CredentialLockerId => 'MyCredentialLockerId',    # OPTIONAL
      HubNetworkMode     => 'STANDARD',                # OPTIONAL
      MetaData           => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 128, value: max: 800
      },    # OPTIONAL
      Model        => 'MyModel',           # OPTIONAL
      Name         => 'MyName',            # OPTIONAL
      Owner        => 'MyOwner',           # OPTIONAL
      SerialNumber => 'MySerialNumber',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/UpdateManagedThing>

=head1 ATTRIBUTES


=head2 Brand => Str

The brand of the device.



=head2 Capabilities => Str

The capabilities of the device such as light bulb.



=head2 CapabilityReport => L<Paws::IoTManagedIntegrations::CapabilityReport>

A report of the capabilities for the managed thing.



=head2 Classification => Str

The classification of the managed thing such as light bulb or
thermostat.



=head2 CredentialLockerId => Str

The identifier of the credential for the managed thing.



=head2 HubNetworkMode => Str

The network mode for the hub-connected device.

Valid values are: C<"STANDARD">, C<"NETWORK_WIDE_EXCLUSION">

=head2 B<REQUIRED> Identifier => Str

The id of the managed thing.



=head2 MetaData => L<Paws::IoTManagedIntegrations::MetaData>

The metadata for the managed thing.



=head2 Model => Str

The model of the device.



=head2 Name => Str

The name of the managed thing representing the physical device.



=head2 Owner => Str

Owner of the device, usually an indication of whom the device belongs
to. This value should not contain personal identifiable information.



=head2 SerialNumber => Str

The serial number of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateManagedThing in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


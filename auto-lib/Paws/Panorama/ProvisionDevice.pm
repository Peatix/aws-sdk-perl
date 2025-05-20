
package Paws::Panorama::ProvisionDevice;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NetworkingConfiguration => (is => 'ro', isa => 'Paws::Panorama::NetworkPayload');
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ProvisionDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ProvisionDevice - Arguments for method ProvisionDevice on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionDevice on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ProvisionDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionDevice.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ProvisionDeviceResponse = $panorama->ProvisionDevice(
      Name                    => 'MyDeviceName',
      Description             => 'MyDescription',    # OPTIONAL
      NetworkingConfiguration => {
        Ethernet0 => {
          ConnectionType         => 'STATIC_IP',     # values: STATIC_IP, DHCP
          StaticIpConnectionInfo => {
            DefaultGateway => 'MyDefaultGateway',    # min: 1, max: 255
            Dns            => [
              'MyDns', ...                           # min: 1, max: 255
            ],
            IpAddress => 'MyIpAddress',              # min: 1, max: 255
            Mask      => 'MyMask',                   # min: 1, max: 255

          },    # OPTIONAL
        },    # OPTIONAL
        Ethernet1 => {
          ConnectionType         => 'STATIC_IP',    # values: STATIC_IP, DHCP
          StaticIpConnectionInfo => {
            DefaultGateway => 'MyDefaultGateway',    # min: 1, max: 255
            Dns            => [
              'MyDns', ...                           # min: 1, max: 255
            ],
            IpAddress => 'MyIpAddress',              # min: 1, max: 255
            Mask      => 'MyMask',                   # min: 1, max: 255

          },    # OPTIONAL
        },    # OPTIONAL
        Ntp => {
          NtpServers => [
            'MyIpAddressOrServerName', ...    # min: 1, max: 255
          ],    # max: 5

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $ProvisionDeviceResponse->Arn;
    my $Certificates = $ProvisionDeviceResponse->Certificates;
    my $DeviceId     = $ProvisionDeviceResponse->DeviceId;
    my $IotThingName = $ProvisionDeviceResponse->IotThingName;
    my $Status       = $ProvisionDeviceResponse->Status;

    # Returns a L<Paws::Panorama::ProvisionDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ProvisionDevice>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the device.



=head2 B<REQUIRED> Name => Str

A name for the device.



=head2 NetworkingConfiguration => L<Paws::Panorama::NetworkPayload>

A networking configuration for the device.



=head2 Tags => L<Paws::Panorama::TagMap>

Tags for the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionDevice in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


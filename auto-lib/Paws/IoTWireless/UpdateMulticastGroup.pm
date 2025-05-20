
package Paws::IoTWireless::UpdateMulticastGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANMulticast');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMulticastGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/multicast-groups/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateMulticastGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateMulticastGroup - Arguments for method UpdateMulticastGroup on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMulticastGroup on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateMulticastGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMulticastGroup.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateMulticastGroupResponse = $api . iotwireless->UpdateMulticastGroup(
      Id          => 'MyMulticastGroupId',
      Description => 'MyDescription',        # OPTIONAL
      LoRaWAN     => {
        DlClass => 'ClassB',    # values: ClassB, ClassCmax: 256; OPTIONAL
        ParticipatingGateways => {
          GatewayList => [
            'MyWirelessGatewayId', ...    # max: 256
          ],    # max: 20; OPTIONAL
          TransmissionInterval => 1,    # max: 60000; OPTIONAL
        },    # OPTIONAL
        RfRegion => 'EU868'
        , # values: EU868, US915, AU915, AS923-1, AS923-2, AS923-3, AS923-4, EU433, CN470, CN779, RU864, KR920, IN865; OPTIONAL
      },    # OPTIONAL
      Name => 'MyMulticastGroupName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateMulticastGroup>

=head1 ATTRIBUTES


=head2 Description => Str





=head2 B<REQUIRED> Id => Str





=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticast>





=head2 Name => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMulticastGroup in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


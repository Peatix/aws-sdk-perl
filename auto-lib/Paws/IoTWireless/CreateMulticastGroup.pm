
package Paws::IoTWireless::CreateMulticastGroup;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANMulticast', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMulticastGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/multicast-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateMulticastGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateMulticastGroup - Arguments for method CreateMulticastGroup on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMulticastGroup on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateMulticastGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMulticastGroup.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateMulticastGroupResponse = $api . iotwireless->CreateMulticastGroup(
      LoRaWAN => {
        DlClass => 'ClassB',    # values: ClassB, ClassCmax: 256; OPTIONAL
        ParticipatingGateways => {
          GatewayList => [
            'MyWirelessGatewayId', ...    # max: 256
          ],    # max: 20; OPTIONAL
          TransmissionInterval => 1,    # max: 60000; OPTIONAL
        },    # OPTIONAL
        RfRegion => 'EU868'
        , # values: EU868, US915, AU915, AS923-1, AS923-2, AS923-3, AS923-4, EU433, CN470, CN779, RU864, KR920, IN865; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyDescription',           # OPTIONAL
      Name               => 'MyMulticastGroupName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateMulticastGroupResponse->Arn;
    my $Id  = $CreateMulticastGroupResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateMulticastGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateMulticastGroup>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. The client token
is used to implement idempotency. It ensures that the request completes
no more than one time. If you retry a request with the same token and
the same parameters, the request will complete successfully. However,
if you try to create a new resource using the same token but different
parameters, an HTTP 409 conflict occurs. If you omit this value, AWS
SDKs will automatically generate a unique client request. For more
information about idempotency, see Ensuring idempotency in Amazon EC2
API requests
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

The description of the multicast group.



=head2 B<REQUIRED> LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticast>





=head2 Name => Str





=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMulticastGroup in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


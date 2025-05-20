
package Paws::IoTWireless::GetResourceEventConfiguration;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);
  has IdentifierType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identifierType', required => 1);
  has PartnerType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'partnerType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceEventConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-configurations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetResourceEventConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourceEventConfiguration - Arguments for method GetResourceEventConfiguration on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceEventConfiguration on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetResourceEventConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceEventConfiguration.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetResourceEventConfigurationResponse =
      $api . iotwireless->GetResourceEventConfiguration(
      Identifier     => 'MyIdentifier',
      IdentifierType => 'PartnerAccountId',
      PartnerType    => 'Sidewalk',           # OPTIONAL
      );

    # Results:
    my $ConnectionStatus =
      $GetResourceEventConfigurationResponse->ConnectionStatus;
    my $DeviceRegistrationState =
      $GetResourceEventConfigurationResponse->DeviceRegistrationState;
    my $Join = $GetResourceEventConfigurationResponse->Join;
    my $MessageDeliveryStatus =
      $GetResourceEventConfigurationResponse->MessageDeliveryStatus;
    my $Proximity = $GetResourceEventConfigurationResponse->Proximity;

 # Returns a L<Paws::IoTWireless::GetResourceEventConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetResourceEventConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

Resource identifier to opt in for event messaging.



=head2 B<REQUIRED> IdentifierType => Str

Identifier type of the particular resource identifier for event
configuration.

Valid values are: C<"PartnerAccountId">, C<"DevEui">, C<"FuotaTaskId">, C<"GatewayEui">, C<"WirelessDeviceId">, C<"WirelessGatewayId">

=head2 PartnerType => Str

Partner type of the resource if the identifier type is
C<PartnerAccountId>.

Valid values are: C<"Sidewalk">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceEventConfiguration in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


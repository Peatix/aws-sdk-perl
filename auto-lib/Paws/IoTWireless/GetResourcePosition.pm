
package Paws::IoTWireless::GetResourcePosition;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-positions/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetResourcePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourcePosition - Arguments for method GetResourcePosition on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePosition on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetResourcePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePosition.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetResourcePositionResponse = $api . iotwireless->GetResourcePosition(
      ResourceIdentifier => 'MyPositionResourceIdentifier',
      ResourceType       => 'WirelessDevice',

    );

    # Results:
    my $GeoJsonPayload = $GetResourcePositionResponse->GeoJsonPayload;

    # Returns a L<Paws::IoTWireless::GetResourcePositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetResourcePosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier of the resource for which position information is
retrieved. It can be the wireless device ID or the wireless gateway ID,
depending on the resource type.



=head2 B<REQUIRED> ResourceType => Str

The type of resource for which position information is retrieved, which
can be a wireless device or a wireless gateway.

Valid values are: C<"WirelessDevice">, C<"WirelessGateway">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePosition in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


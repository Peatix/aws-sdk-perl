
package Paws::IoTWireless::UpdateResourcePosition;
  use Moose;
  has GeoJsonPayload => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GeoJsonPayload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourcePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-positions/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateResourcePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateResourcePosition - Arguments for method UpdateResourcePosition on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourcePosition on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateResourcePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourcePosition.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateResourcePositionResponse =
      $api . iotwireless->UpdateResourcePosition(
      ResourceIdentifier => 'MyPositionResourceIdentifier',
      ResourceType       => 'WirelessDevice',
      GeoJsonPayload     => 'BlobGeoJsonPayload',             # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateResourcePosition>

=head1 ATTRIBUTES


=head2 GeoJsonPayload => Str

The position information of the resource, displayed as a JSON payload.
The payload uses the GeoJSON format, which a format that's used to
encode geographic data structures. For more information, see GeoJSON
(https://geojson.org/).



=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier of the resource for which position information is
updated. It can be the wireless device ID or the wireless gateway ID,
depending on the resource type.



=head2 B<REQUIRED> ResourceType => Str

The type of resource for which position information is updated, which
can be a wireless device or a wireless gateway.

Valid values are: C<"WirelessDevice">, C<"WirelessGateway">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourcePosition in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


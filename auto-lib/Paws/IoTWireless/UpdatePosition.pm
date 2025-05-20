
package Paws::IoTWireless::UpdatePosition;
  use Moose;
  has Position => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/positions/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdatePositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdatePosition - Arguments for method UpdatePosition on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePosition on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdatePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePosition.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdatePositionResponse = $api . iotwireless->UpdatePosition(
      Position           => [ 1.0, ... ],
      ResourceIdentifier => 'MyPositionResourceIdentifier',
      ResourceType       => 'WirelessDevice',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdatePosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Position => ArrayRef[Num]

The position information of the resource.



=head2 B<REQUIRED> ResourceIdentifier => Str

Resource identifier of the resource for which position is updated.



=head2 B<REQUIRED> ResourceType => Str

Resource type of the resource for which position is updated.

Valid values are: C<"WirelessDevice">, C<"WirelessGateway">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePosition in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


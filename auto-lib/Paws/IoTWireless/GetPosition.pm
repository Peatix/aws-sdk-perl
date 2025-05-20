
package Paws::IoTWireless::GetPosition;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/positions/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetPositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPosition - Arguments for method GetPosition on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPosition on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetPosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPosition.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetPositionResponse = $api . iotwireless->GetPosition(
      ResourceIdentifier => 'MyPositionResourceIdentifier',
      ResourceType       => 'WirelessDevice',

    );

    # Results:
    my $Accuracy       = $GetPositionResponse->Accuracy;
    my $Position       = $GetPositionResponse->Position;
    my $SolverProvider = $GetPositionResponse->SolverProvider;
    my $SolverType     = $GetPositionResponse->SolverType;
    my $SolverVersion  = $GetPositionResponse->SolverVersion;
    my $Timestamp      = $GetPositionResponse->Timestamp;

    # Returns a L<Paws::IoTWireless::GetPositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetPosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

Resource identifier used to retrieve the position information.



=head2 B<REQUIRED> ResourceType => Str

Resource type of the resource for which position information is
retrieved.

Valid values are: C<"WirelessDevice">, C<"WirelessGateway">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPosition in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


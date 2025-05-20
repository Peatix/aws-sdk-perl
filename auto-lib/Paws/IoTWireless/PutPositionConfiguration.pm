
package Paws::IoTWireless::PutPositionConfiguration;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);
  has Solvers => (is => 'ro', isa => 'Paws::IoTWireless::PositionSolverConfigurations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPositionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/position-configurations/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::PutPositionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::PutPositionConfiguration - Arguments for method PutPositionConfiguration on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPositionConfiguration on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method PutPositionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPositionConfiguration.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $PutPositionConfigurationResponse =
      $api . iotwireless->PutPositionConfiguration(
      ResourceIdentifier => 'MyPositionResourceIdentifier',
      ResourceType       => 'WirelessDevice',
      Destination        => 'MyDestinationName',              # OPTIONAL
      Solvers            => {
        SemtechGnss => {
          Fec    => 'ROSE',       # values: ROSE, NONE
          Status => 'Enabled',    # values: Enabled, Disabled

        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/PutPositionConfiguration>

=head1 ATTRIBUTES


=head2 Destination => Str

The position data destination that describes the AWS IoT rule that
processes the device's position data for use by AWS IoT Core for
LoRaWAN.



=head2 B<REQUIRED> ResourceIdentifier => Str

Resource identifier used to update the position configuration.



=head2 B<REQUIRED> ResourceType => Str

Resource type of the resource for which you want to update the position
configuration.

Valid values are: C<"WirelessDevice">, C<"WirelessGateway">

=head2 Solvers => L<Paws::IoTWireless::PositionSolverConfigurations>

The positioning solvers used to update the position configuration of
the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPositionConfiguration in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


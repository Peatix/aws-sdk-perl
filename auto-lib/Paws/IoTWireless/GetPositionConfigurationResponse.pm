
package Paws::IoTWireless::GetPositionConfigurationResponse;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has Solvers => (is => 'ro', isa => 'Paws::IoTWireless::PositionSolverDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPositionConfigurationResponse

=head1 ATTRIBUTES


=head2 Destination => Str

The position data destination that describes the AWS IoT rule that
processes the device's position data for use by AWS IoT Core for
LoRaWAN.


=head2 Solvers => L<Paws::IoTWireless::PositionSolverDetails>

The wrapper for the solver configuration details object.


=head2 _request_id => Str


=cut


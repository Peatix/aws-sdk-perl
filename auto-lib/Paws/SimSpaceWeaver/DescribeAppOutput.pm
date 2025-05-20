
package Paws::SimSpaceWeaver::DescribeAppOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has EndpointInfo => (is => 'ro', isa => 'Paws::SimSpaceWeaver::SimulationAppEndpointInfo');
  has LaunchOverrides => (is => 'ro', isa => 'Paws::SimSpaceWeaver::LaunchOverrides');
  has Name => (is => 'ro', isa => 'Str');
  has Simulation => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TargetStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::DescribeAppOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description of the app.


=head2 Domain => Str

The name of the domain of the app.


=head2 EndpointInfo => L<Paws::SimSpaceWeaver::SimulationAppEndpointInfo>

Information about the network endpoint for the custom app. You can use
the endpoint to connect to the custom app.


=head2 LaunchOverrides => L<Paws::SimSpaceWeaver::LaunchOverrides>




=head2 Name => Str

The name of the app.


=head2 Simulation => Str

The name of the simulation of the app.


=head2 Status => Str

The current lifecycle state of the custom app.

Valid values are: C<"STARTING">, C<"STARTED">, C<"STOPPING">, C<"STOPPED">, C<"ERROR">, C<"UNKNOWN">
=head2 TargetStatus => Str

The desired lifecycle state of the custom app.

Valid values are: C<"UNKNOWN">, C<"STARTED">, C<"STOPPED">
=head2 _request_id => Str


=cut


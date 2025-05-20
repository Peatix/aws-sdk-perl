
package Paws::SimSpaceWeaver::StartAppOutput;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Simulation => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::StartAppOutput

=head1 ATTRIBUTES


=head2 Domain => Str

The name of the domain of the app.


=head2 Name => Str

The name of the app.


=head2 Simulation => Str

The name of the simulation of the app.


=head2 _request_id => Str


=cut



package Paws::SimSpaceWeaver::StartSimulationOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::StartSimulationOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation. For more information
about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.


=head2 CreationTime => Str

The time when the simulation was created, expressed as the number of
seconds and milliseconds in UTC since the Unix epoch (0:0:0.000,
January 1, 1970).


=head2 ExecutionId => Str

A universally unique identifier (UUID) for this simulation.


=head2 _request_id => Str


=cut


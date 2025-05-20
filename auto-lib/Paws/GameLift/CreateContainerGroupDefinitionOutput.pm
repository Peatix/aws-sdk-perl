
package Paws::GameLift::CreateContainerGroupDefinitionOutput;
  use Moose;
  has ContainerGroupDefinition => (is => 'ro', isa => 'Paws::GameLift::ContainerGroupDefinition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateContainerGroupDefinitionOutput

=head1 ATTRIBUTES


=head2 ContainerGroupDefinition => L<Paws::GameLift::ContainerGroupDefinition>

The properties of the new container group definition resource. You can
use this resource to create a container fleet.


=head2 _request_id => Str


=cut

1;
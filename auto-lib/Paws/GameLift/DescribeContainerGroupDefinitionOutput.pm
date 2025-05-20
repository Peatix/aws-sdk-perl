
package Paws::GameLift::DescribeContainerGroupDefinitionOutput;
  use Moose;
  has ContainerGroupDefinition => (is => 'ro', isa => 'Paws::GameLift::ContainerGroupDefinition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeContainerGroupDefinitionOutput

=head1 ATTRIBUTES


=head2 ContainerGroupDefinition => L<Paws::GameLift::ContainerGroupDefinition>

The properties of the requested container group definition resource.


=head2 _request_id => Str


=cut

1;
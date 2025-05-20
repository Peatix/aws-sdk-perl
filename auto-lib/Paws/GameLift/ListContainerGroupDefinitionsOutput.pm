
package Paws::GameLift::ListContainerGroupDefinitionsOutput;
  use Moose;
  has ContainerGroupDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ContainerGroupDefinition]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListContainerGroupDefinitionsOutput

=head1 ATTRIBUTES


=head2 ContainerGroupDefinitions => ArrayRef[L<Paws::GameLift::ContainerGroupDefinition>]

A result set of container group definitions that match the request.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;
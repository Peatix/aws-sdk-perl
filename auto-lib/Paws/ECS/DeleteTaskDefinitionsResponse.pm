
package Paws::ECS::DeleteTaskDefinitionsResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has TaskDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::ECS::TaskDefinition]', traits => ['NameInRequest'], request_name => 'taskDefinitions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteTaskDefinitionsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 TaskDefinitions => ArrayRef[L<Paws::ECS::TaskDefinition>]

The list of deleted task definitions.


=head2 _request_id => Str


=cut

1;
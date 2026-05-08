
package Paws::StepFunctions::DescribeStateMachineAliasOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::RoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration' );
  has StateMachineAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineAliasArn' );
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineAliasOutput

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date the state machine alias was created.


=head2 Description => Str

A description of the alias.


=head2 Name => Str

The name of the state machine alias.


=head2 RoutingConfiguration => ArrayRef[L<Paws::StepFunctions::RoutingConfigurationListItem>]

The routing configuration of the alias.


=head2 StateMachineAliasArn => Str

The Amazon Resource Name (ARN) of the state machine alias.


=head2 UpdateDate => Str

The date the state machine alias was last updated.

For a newly created state machine, this is the same as the creation
date.


=head2 _request_id => Str


=cut

1;
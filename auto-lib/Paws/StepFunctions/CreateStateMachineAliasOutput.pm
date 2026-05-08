
package Paws::StepFunctions::CreateStateMachineAliasOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);
  has StateMachineAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineAliasArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachineAliasOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine alias was created.


=head2 B<REQUIRED> StateMachineAliasArn => Str

The Amazon Resource Name (ARN) that identifies the created state
machine alias.


=head2 _request_id => Str


=cut

1;
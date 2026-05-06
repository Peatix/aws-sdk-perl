
package Paws::StepFunctions::UpdateStateMachineOutput;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' );
  has StateMachineVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineVersionArn' );
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachineOutput

=head1 ATTRIBUTES


=head2 RevisionId => Str

The revision identifier for the updated state machine.


=head2 StateMachineVersionArn => Str

The Amazon Resource Name (ARN) of the published state machine version.

If the C<publish> parameter isn't set to C<true>, this field returns
null.


=head2 B<REQUIRED> UpdateDate => Str

The date and time the state machine was updated.


=head2 _request_id => Str


=cut

1;
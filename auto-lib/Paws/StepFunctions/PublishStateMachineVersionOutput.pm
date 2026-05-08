
package Paws::StepFunctions::PublishStateMachineVersionOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);
  has StateMachineVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineVersionArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::PublishStateMachineVersionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the version was created.


=head2 B<REQUIRED> StateMachineVersionArn => Str

The Amazon Resource Name (ARN) (ARN) that identifies the state machine
version.


=head2 _request_id => Str


=cut

1;

package Paws::StepFunctions::CreateStateMachineOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has StateMachineVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineVersionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine is created.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the created state
machine.


=head2 StateMachineVersionArn => Str

The Amazon Resource Name (ARN) that identifies the created state
machine version. If you do not set the C<publish> parameter to C<true>,
this field returns null value.


=head2 _request_id => Str


=cut

1;
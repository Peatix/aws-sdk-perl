
package Paws::StepFunctions::DescribeStateMachineForExecutionOutput;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration' );
  has Label => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'label' );
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::LoggingConfiguration', traits => ['NameInRequest'], request_name => 'loggingConfiguration' );
  has MapRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapRunArn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has TracingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::TracingConfiguration', traits => ['NameInRequest'], request_name => 'tracingConfiguration' );
  has UpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDate' , required => 1);
  has VariableReferences => (is => 'ro', isa => 'Paws::StepFunctions::VariableReferences', traits => ['NameInRequest'], request_name => 'variableReferences' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineForExecutionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).


=head2 EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>

Settings to configure server-side encryption.


=head2 Label => Str

A user-defined or an auto-generated string that identifies a C<Map>
state. This eld is returned only if the C<executionArn> is a child
workflow execution that was started by a Distributed Map state.


=head2 LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>




=head2 MapRunArn => Str

The Amazon Resource Name (ARN) of the Map Run that started the child
workflow execution. This field is returned only if the C<executionArn>
is a child workflow execution that was started by a Distributed Map
state.


=head2 B<REQUIRED> Name => Str

The name of the state machine associated with the execution.


=head2 RevisionId => Str

The revision identifier for the state machine. The first revision ID
when you create the state machine is null.

Use the state machine C<revisionId> parameter to compare the revision
of a state machine with the configuration of the state machine used for
executions without performing a diff of the properties, such as
C<definition> and C<roleArn>.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role of the State Machine for
the execution.


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine associated with the
execution.


=head2 TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>

Selects whether X-Ray tracing is enabled.


=head2 B<REQUIRED> UpdateDate => Str

The date and time the state machine associated with an execution was
updated. For a newly created state machine, this is the creation date.


=head2 VariableReferences => L<Paws::StepFunctions::VariableReferences>

A map of B<state name> to a list of variables referenced by that state.
States that do not use variable references will not be shown in the
response.


=head2 _request_id => Str


=cut

1;
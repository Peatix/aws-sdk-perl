
package Paws::StepFunctions::DescribeStateMachineOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate' , required => 1);
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration' );
  has Label => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'label' );
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::LoggingConfiguration', traits => ['NameInRequest'], request_name => 'loggingConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TracingConfiguration => (is => 'ro', isa => 'Paws::StepFunctions::TracingConfiguration', traits => ['NameInRequest'], request_name => 'tracingConfiguration' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);
  has VariableReferences => (is => 'ro', isa => 'Paws::StepFunctions::VariableReferences', traits => ['NameInRequest'], request_name => 'variableReferences' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

The date the state machine is created.

For a state machine version, C<creationDate> is the date the version
was created.


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine. See Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html).

If called with C<includedData = METADATA_ONLY>, the returned definition
will be C<{}>.


=head2 Description => Str

The description of the state machine version.


=head2 EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>

Settings to configure server-side encryption.


=head2 Label => Str

A user-defined or an auto-generated string that identifies a C<Map>
state. This parameter is present only if the C<stateMachineArn>
specified in input is a qualified state machine ARN.


=head2 LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>




=head2 B<REQUIRED> Name => Str

The name of the state machine.

A name must I<not> contain:

=over

=item *

white space

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back

To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.


=head2 RevisionId => Str

The revision identifier for the state machine.

Use the C<revisionId> parameter to compare between versions of a state
machine configuration used for executions without performing a diff of
the properties, such as C<definition> and C<roleArn>.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used when creating this
state machine. (The IAM role maintains security by granting Step
Functions access to Amazon Web Services resources.)


=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) that identifies the state machine.

If you specified a state machine version ARN in your request, the API
returns the version ARN. The version ARN is a combination of state
machine ARN and the version number separated by a colon (:). For
example, C<stateMachineARN:1>.


=head2 Status => Str

The current status of the state machine.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>

Selects whether X-Ray tracing is enabled.


=head2 B<REQUIRED> Type => Str

The C<type> of the state machine (C<STANDARD> or C<EXPRESS>).

Valid values are: C<"STANDARD">, C<"EXPRESS">
=head2 VariableReferences => L<Paws::StepFunctions::VariableReferences>

A map of B<state name> to a list of variables referenced by that state.
States that do not use variable references will not be shown in the
response.


=head2 _request_id => Str


=cut

1;

package Paws::StepFunctions::ValidateStateMachineDefinitionOutput;
  use Moose;
  has Diagnostics => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::ValidateStateMachineDefinitionDiagnostic]', traits => ['NameInRequest'], request_name => 'diagnostics' , required => 1);
  has Result => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'result' , required => 1);
  has Truncated => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'truncated' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ValidateStateMachineDefinitionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Diagnostics => ArrayRef[L<Paws::StepFunctions::ValidateStateMachineDefinitionDiagnostic>]

An array of diagnostic errors and warnings found during validation of
the state machine definition. Since B<warnings> do not prevent
deploying your workflow definition, the B<result> value could be C<OK>
even when warning diagnostics are present in the response.


=head2 B<REQUIRED> Result => Str

The result value will be C<OK> when no syntax errors are found, or
C<FAIL> if the workflow definition does not pass verification.

Valid values are: C<"OK">, C<"FAIL">
=head2 Truncated => Bool

The result value will be C<true> if the number of diagnostics found in
the workflow definition exceeds C<maxResults>. When all diagnostics
results are returned, the value will be C<false>.


=head2 _request_id => Str


=cut

1;

package Paws::StepFunctions::TestStateOutput;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cause' );
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error' );
  has InspectionData => (is => 'ro', isa => 'Paws::StepFunctions::InspectionData', traits => ['NameInRequest'], request_name => 'inspectionData' );
  has NextState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextState' );
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::TestStateOutput

=head1 ATTRIBUTES


=head2 Cause => Str

A detailed explanation of the cause for the error when the execution of
a state fails.


=head2 Error => Str

The error returned when the execution of a state fails.


=head2 InspectionData => L<Paws::StepFunctions::InspectionData>

Returns additional details about the state's execution, including its
input and output data processing flow, and HTTP request and response
information. The C<inspectionLevel> request parameter specifies which
details are returned.


=head2 NextState => Str

The name of the next state to transition to. If you haven't defined a
next state in your definition or if the execution of the state fails,
this eld doesn't contain a value.


=head2 Output => Str

The JSON output data of the state. Length constraints apply to the
payload size, and are expressed as bytes in UTF-8 encoding.


=head2 Status => Str

The execution status of the state.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"RETRIABLE">, C<"CAUGHT_ERROR">
=head2 _request_id => Str


=cut

1;
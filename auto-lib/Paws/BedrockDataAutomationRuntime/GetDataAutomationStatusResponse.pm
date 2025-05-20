
package Paws::BedrockDataAutomationRuntime::GetDataAutomationStatusResponse;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has ErrorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorType' );
  has OutputConfiguration => (is => 'ro', isa => 'Paws::BedrockDataAutomationRuntime::OutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::GetDataAutomationStatusResponse

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Error Message.


=head2 ErrorType => Str

Error Type.


=head2 OutputConfiguration => L<Paws::BedrockDataAutomationRuntime::OutputConfiguration>

Output configuration.


=head2 Status => Str

Job Status.

Valid values are: C<"Created">, C<"InProgress">, C<"Success">, C<"ServiceError">, C<"ClientError">
=head2 _request_id => Str


=cut

1;
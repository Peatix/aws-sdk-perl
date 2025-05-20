
package Paws::Athena::StartCalculationExecutionResponse;
  use Moose;
  has CalculationExecutionId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartCalculationExecutionResponse

=head1 ATTRIBUTES


=head2 CalculationExecutionId => Str

The calculation execution UUID.


=head2 State => Str

C<CREATING> - The calculation is in the process of being created.

C<CREATED> - The calculation has been created and is ready to run.

C<QUEUED> - The calculation has been queued for processing.

C<RUNNING> - The calculation is running.

C<CANCELING> - A request to cancel the calculation has been received
and the system is working to stop it.

C<CANCELED> - The calculation is no longer running as the result of a
cancel request.

C<COMPLETED> - The calculation has completed without error.

C<FAILED> - The calculation failed and is no longer running.

Valid values are: C<"CREATING">, C<"CREATED">, C<"QUEUED">, C<"RUNNING">, C<"CANCELING">, C<"CANCELED">, C<"COMPLETED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;
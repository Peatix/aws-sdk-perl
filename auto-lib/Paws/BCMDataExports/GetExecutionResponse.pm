
package Paws::BCMDataExports::GetExecutionResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str');
  has ExecutionStatus => (is => 'ro', isa => 'Paws::BCMDataExports::ExecutionStatus');
  has Export => (is => 'ro', isa => 'Paws::BCMDataExports::Export');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::GetExecutionResponse

=head1 ATTRIBUTES


=head2 ExecutionId => Str

The ID for this specific execution.


=head2 ExecutionStatus => L<Paws::BCMDataExports::ExecutionStatus>

The status of this specific execution.


=head2 Export => L<Paws::BCMDataExports::Export>

The export data for this specific execution. This export data is a
snapshot from when the execution was generated. The data could be
different from the current export data if the export was updated since
the execution was generated.


=head2 _request_id => Str


=cut

1;
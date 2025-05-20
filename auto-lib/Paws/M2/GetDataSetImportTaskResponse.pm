
package Paws::M2::GetDataSetImportTaskResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::M2::DataSetImportSummary', traits => ['NameInRequest'], request_name => 'summary');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDataSetImportTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status of the task.

Valid values are: C<"Creating">, C<"Running">, C<"Completed">, C<"Failed">
=head2 Summary => L<Paws::M2::DataSetImportSummary>

A summary of the status of the task.


=head2 B<REQUIRED> TaskId => Str

The task identifier.


=head2 _request_id => Str


=cut



package Paws::M2::CreateDataSetExportTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateDataSetExportTaskResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The task identifier. This operation is asynchronous. Use this
identifier with the GetDataSetExportTask operation to obtain the status
of this task.


=head2 _request_id => Str


=cut


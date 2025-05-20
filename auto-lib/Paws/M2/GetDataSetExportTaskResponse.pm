
package Paws::M2::GetDataSetExportTaskResponse;
  use Moose;
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Summary => (is => 'ro', isa => 'Paws::M2::DataSetExportSummary', traits => ['NameInRequest'], request_name => 'summary');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDataSetExportTaskResponse

=head1 ATTRIBUTES


=head2 KmsKeyArn => Str

The identifier of a customer managed key used for exported data set
encryption.


=head2 B<REQUIRED> Status => Str

The status of the task.

Valid values are: C<"Creating">, C<"Running">, C<"Completed">, C<"Failed">
=head2 StatusReason => Str

If dataset export failed, the failure reason will show here.


=head2 Summary => L<Paws::M2::DataSetExportSummary>

A summary of the status of the task.


=head2 B<REQUIRED> TaskId => Str

The task identifier.


=head2 _request_id => Str


=cut


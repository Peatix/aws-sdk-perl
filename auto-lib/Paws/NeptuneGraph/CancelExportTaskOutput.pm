
package Paws::NeptuneGraph::CancelExportTaskOutput;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has GraphId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphId', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier', required => 1);
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CancelExportTaskOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

The Amazon S3 URI of the cancelled export task where data will be
exported to.


=head2 B<REQUIRED> Format => Str

The format of the cancelled export task.

Valid values are: C<"PARQUET">, C<"CSV">
=head2 B<REQUIRED> GraphId => Str

The source graph identifier of the cancelled export task.


=head2 B<REQUIRED> KmsKeyIdentifier => Str

The KMS key identifier of the cancelled export task.


=head2 ParquetType => Str

The parquet type of the cancelled export task.

Valid values are: C<"COLUMNAR">
=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow the exporting of data to the
destination.


=head2 B<REQUIRED> Status => Str

The current status of the export task. The status is C<CANCELLING> when
the export task is cancelled.

Valid values are: C<"INITIALIZING">, C<"EXPORTING">, C<"SUCCEEDED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">, C<"DELETED">
=head2 StatusReason => Str

The reason that the export task has this status value.


=head2 B<REQUIRED> TaskId => Str

The unique identifier of the export task.


=head2 _request_id => Str


=cut


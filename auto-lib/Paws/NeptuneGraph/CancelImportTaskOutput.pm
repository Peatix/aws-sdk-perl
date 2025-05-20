
package Paws::NeptuneGraph::CancelImportTaskOutput;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has GraphId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphId');
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CancelImportTaskOutput

=head1 ATTRIBUTES


=head2 Format => Str

Specifies the format of S3 data to be imported. Valid values are
C<CSV>, which identifies the Gremlin CSV format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
or C<OPENCYPHER>, which identies the openCypher load format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).

Valid values are: C<"CSV">, C<"OPEN_CYPHER">, C<"PARQUET">, C<"NTRIPLES">
=head2 GraphId => Str

The unique identifier of the Neptune Analytics graph.


=head2 ParquetType => Str

The parquet type of the cancelled import task.

Valid values are: C<"COLUMNAR">
=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow access to the data that is to
be imported.


=head2 B<REQUIRED> Source => Str

A URL identifying to the location of the data to be imported. This can
be an Amazon S3 path, or can point to a Neptune database endpoint or
snapshot.


=head2 B<REQUIRED> Status => Str

Current status of the task. Status is CANCELLING when the import task
is cancelled.

Valid values are: C<"INITIALIZING">, C<"EXPORTING">, C<"ANALYZING_DATA">, C<"IMPORTING">, C<"REPROVISIONING">, C<"ROLLING_BACK">, C<"SUCCEEDED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">, C<"DELETED">
=head2 B<REQUIRED> TaskId => Str

The unique identifier of the import task.


=head2 _request_id => Str


=cut


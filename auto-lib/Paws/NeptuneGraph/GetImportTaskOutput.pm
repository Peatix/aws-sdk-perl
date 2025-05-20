
package Paws::NeptuneGraph::GetImportTaskOutput;
  use Moose;
  has AttemptNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'attemptNumber');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has GraphId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphId');
  has ImportOptions => (is => 'ro', isa => 'Paws::NeptuneGraph::ImportOptions', traits => ['NameInRequest'], request_name => 'importOptions');
  has ImportTaskDetails => (is => 'ro', isa => 'Paws::NeptuneGraph::ImportTaskDetails', traits => ['NameInRequest'], request_name => 'importTaskDetails');
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetImportTaskOutput

=head1 ATTRIBUTES


=head2 AttemptNumber => Int

The number of the current attempts to execute the import task.


=head2 Format => Str

Specifies the format of S3 data to be imported. Valid values are
C<CSV>, which identifies the Gremlin CSV format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
or C<OPENCYPHER>, which identies the openCypher load format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).

Valid values are: C<"CSV">, C<"OPEN_CYPHER">, C<"PARQUET">, C<"NTRIPLES">
=head2 GraphId => Str

The unique identifier of the Neptune Analytics graph.


=head2 ImportOptions => L<Paws::NeptuneGraph::ImportOptions>

Contains options for controlling the import process. For example, if
the C<failOnError> key is set to C<false>, the import skips problem
data and attempts to continue (whereas if set to C<true>, the default,
or if omitted, the import operation halts immediately when an error is
encountered.


=head2 ImportTaskDetails => L<Paws::NeptuneGraph::ImportTaskDetails>

Contains details about the specified import task.


=head2 ParquetType => Str

The parquet type of the import task.

Valid values are: C<"COLUMNAR">
=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow access to the data that is to
be imported.


=head2 B<REQUIRED> Source => Str

A URL identifying to the location of the data to be imported. This can
be an Amazon S3 path, or can point to a Neptune database endpoint or
snapshot


=head2 B<REQUIRED> Status => Str

The status of the import task:

=over

=item *

B<INITIALIZING> E<ndash> The necessary resources needed to create the
graph are being prepared.

=item *

B<ANALYZING_DATA> E<ndash> The data is being analyzed to determine the
optimal infrastructure configuration for the new graph.

=item *

B<RE_PROVISIONING> E<ndash> The data did not fit into the provisioned
graph, so it is being re-provisioned with more capacity.

=item *

B<IMPORTING> E<ndash> The data is being loaded.

=item *

B<ERROR_ENCOUNTERED> E<ndash> An error has been encountered while
trying to create the graph and import the data.

=item *

B<ERROR_ENCOUNTERED_ROLLING_BACK> E<ndash> Because of the error that
was encountered, the graph is being rolled back and all its resources
released.

=item *

B<SUCCEEDED> E<ndash> Graph creation and data loading succeeded.

=item *

B<FAILED> E<ndash> Graph creation or data loading failed. When the
status is C<FAILED>, you can use C<get-graphs> to get more information
about the state of the graph.

=item *

B<CANCELLING> E<ndash> Because you cancelled the import task,
cancellation is in progress.

=item *

B<CANCELLED> E<ndash> You have successfully cancelled the import task.

=back


Valid values are: C<"INITIALIZING">, C<"EXPORTING">, C<"ANALYZING_DATA">, C<"IMPORTING">, C<"REPROVISIONING">, C<"ROLLING_BACK">, C<"SUCCEEDED">, C<"FAILED">, C<"CANCELLING">, C<"CANCELLED">, C<"DELETED">
=head2 StatusReason => Str

The reason that the import task has this status value.


=head2 B<REQUIRED> TaskId => Str

The unique identifier of the import task.


=head2 _request_id => Str


=cut



package Paws::FinspaceData::GetDataViewResponse;
  use Moose;
  has AsOfTimestamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'asOfTimestamp');
  has AutoUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoUpdate');
  has CreateTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'createTime');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has DataViewArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataViewArn');
  has DataViewId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataViewId');
  has DestinationTypeParams => (is => 'ro', isa => 'Paws::FinspaceData::DataViewDestinationTypeParams', traits => ['NameInRequest'], request_name => 'destinationTypeParams');
  has ErrorInfo => (is => 'ro', isa => 'Paws::FinspaceData::DataViewErrorInfo', traits => ['NameInRequest'], request_name => 'errorInfo');
  has LastModifiedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has PartitionColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'partitionColumns');
  has SortColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sortColumns');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetDataViewResponse

=head1 ATTRIBUTES


=head2 AsOfTimestamp => Int

Time range to use for the Dataview. The value is determined as epoch
time in milliseconds. For example, the value for Monday, November 1,
2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 AutoUpdate => Bool

Flag to indicate Dataview should be updated automatically.


=head2 CreateTime => Int

The timestamp at which the Dataview was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatasetId => Str

The unique identifier for the Dataset used in the Dataview.


=head2 DataViewArn => Str

The ARN identifier of the Dataview.


=head2 DataViewId => Str

The unique identifier for the Dataview.


=head2 DestinationTypeParams => L<Paws::FinspaceData::DataViewDestinationTypeParams>

Options that define the destination type for the Dataview.


=head2 ErrorInfo => L<Paws::FinspaceData::DataViewErrorInfo>

Information about an error that occurred for the Dataview.


=head2 LastModifiedTime => Int

The last time that a Dataview was modified. The value is determined as
epoch time in milliseconds. For example, the value for Monday, November
1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 PartitionColumns => ArrayRef[Str|Undef]

Ordered set of column names used to partition data.


=head2 SortColumns => ArrayRef[Str|Undef]

Columns to be used for sorting the data.


=head2 Status => Str

The status of a Dataview creation.

=over

=item *

C<RUNNING> E<ndash> Dataview creation is running.

=item *

C<STARTING> E<ndash> Dataview creation is starting.

=item *

C<FAILED> E<ndash> Dataview creation has failed.

=item *

C<CANCELLED> E<ndash> Dataview creation has been cancelled.

=item *

C<TIMEOUT> E<ndash> Dataview creation has timed out.

=item *

C<SUCCESS> E<ndash> Dataview creation has succeeded.

=item *

C<PENDING> E<ndash> Dataview creation is pending.

=item *

C<FAILED_CLEANUP_FAILED> E<ndash> Dataview creation failed and resource
cleanup failed.

=back


Valid values are: C<"RUNNING">, C<"STARTING">, C<"FAILED">, C<"CANCELLED">, C<"TIMEOUT">, C<"SUCCESS">, C<"PENDING">, C<"FAILED_CLEANUP_FAILED">
=head2 _request_id => Str


=cut


package Paws::TimestreamWrite;
  use Moose;
  sub service { 'ingest.timestream' }
  sub signing_name { 'timestream' }
  sub version { '2018-11-01' }
  sub target_prefix { 'Timestream_20181101' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateBatchLoadTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::CreateBatchLoadTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::CreateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DeleteDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBatchLoadTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DescribeBatchLoadTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DescribeDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::DescribeTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBatchLoadTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::ListBatchLoadTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::ListDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeBatchLoadTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::ResumeBatchLoadTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::UpdateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub WriteRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamWrite::WriteRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateBatchLoadTask CreateDatabase CreateTable DeleteDatabase DeleteTable DescribeBatchLoadTask DescribeDatabase DescribeEndpoints DescribeTable ListBatchLoadTasks ListDatabases ListTables ListTagsForResource ResumeBatchLoadTask TagResource UntagResource UpdateDatabase UpdateTable WriteRecords / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite - Perl Interface to AWS Amazon Timestream Write

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TimestreamWrite');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Timestream Write

Amazon Timestream is a fast, scalable, fully managed time-series
database service that makes it easy to store and analyze trillions of
time-series data points per day. With Timestream, you can easily store
and analyze IoT sensor data to derive insights from your IoT
applications. You can analyze industrial telemetry to streamline
equipment management and maintenance. You can also store and analyze
log data and metrics to improve the performance and availability of
your applications.

Timestream is built from the ground up to effectively ingest, process,
and store time-series data. It organizes data to optimize query
processing. It automatically scales based on the volume of data
ingested and on the query volume to ensure you receive optimal
performance while inserting and querying data. As your data grows over
time, TimestreamE<rsquo>s adaptive query processing engine spans across
storage tiers to provide fast analysis while reducing costs.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateBatchLoadTask

=over

=item DataSourceConfiguration => L<Paws::TimestreamWrite::DataSourceConfiguration>

=item ReportConfiguration => L<Paws::TimestreamWrite::ReportConfiguration>

=item TargetDatabaseName => Str

=item TargetTableName => Str

=item [ClientToken => Str]

=item [DataModelConfiguration => L<Paws::TimestreamWrite::DataModelConfiguration>]

=item [RecordVersion => Int]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::CreateBatchLoadTask>

Returns: a L<Paws::TimestreamWrite::CreateBatchLoadTaskResponse> instance

Creates a new Timestream batch load task. A batch load task processes
data from a CSV source in an S3 location and writes to a Timestream
table. A mapping from source to target is defined in a batch load task.
Errors and events are written to a report at an S3 location. For the
report, if the KMS key is not specified, the report will be encrypted
with an S3 managed key when C<SSE_S3> is the option. Otherwise an error
is thrown. For more information, see Amazon Web Services managed keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
For details, see code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html).


=head2 CreateDatabase

=over

=item DatabaseName => Str

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::TimestreamWrite::Tag>]]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::CreateDatabase>

Returns: a L<Paws::TimestreamWrite::CreateDatabaseResponse> instance

Creates a new Timestream database. If the KMS key is not specified, the
database will be encrypted with a Timestream managed KMS key located in
your account. For more information, see Amazon Web Services managed
keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).
Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
For details, see code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html).


=head2 CreateTable

=over

=item DatabaseName => Str

=item TableName => Str

=item [MagneticStoreWriteProperties => L<Paws::TimestreamWrite::MagneticStoreWriteProperties>]

=item [RetentionProperties => L<Paws::TimestreamWrite::RetentionProperties>]

=item [Schema => L<Paws::TimestreamWrite::Schema>]

=item [Tags => ArrayRef[L<Paws::TimestreamWrite::Tag>]]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::CreateTable>

Returns: a L<Paws::TimestreamWrite::CreateTableResponse> instance

Adds a new table to an existing database in your account. In an Amazon
Web Services account, table names must be at least unique within each
Region if they are in the same database. You might have identical table
names in the same Region if the tables are in separate databases. While
creating the table, you must specify the table name, database name, and
the retention properties. Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html)
for details.


=head2 DeleteDatabase

=over

=item DatabaseName => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::DeleteDatabase>

Returns: nothing

Deletes a given Timestream database. I<This is an irreversible
operation. After a database is deleted, the time-series data from its
tables cannot be recovered.>

All tables in the database must be deleted first, or a
ValidationException error will be thrown.

Due to the nature of distributed retries, the operation can return
either success or a ResourceNotFoundException. Clients should consider
them equivalent.

See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html)
for details.


=head2 DeleteTable

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::DeleteTable>

Returns: nothing

Deletes a given Timestream table. This is an irreversible operation.
After a Timestream database table is deleted, the time-series data
stored in the table cannot be recovered.

Due to the nature of distributed retries, the operation can return
either success or a ResourceNotFoundException. Clients should consider
them equivalent.

See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html)
for details.


=head2 DescribeBatchLoadTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::DescribeBatchLoadTask>

Returns: a L<Paws::TimestreamWrite::DescribeBatchLoadTaskResponse> instance

Returns information about the batch load task, including
configurations, mappings, progress, and other details. Service quotas
apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html)
for details.


=head2 DescribeDatabase

=over

=item DatabaseName => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::DescribeDatabase>

Returns: a L<Paws::TimestreamWrite::DescribeDatabaseResponse> instance

Returns information about the database, including the database name,
time that the database was created, and the total number of tables
found within the database. Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html)
for details.


=head2 DescribeEndpoints






Each argument is described in detail in: L<Paws::TimestreamWrite::DescribeEndpoints>

Returns: a L<Paws::TimestreamWrite::DescribeEndpointsResponse> instance

Returns a list of available endpoints to make Timestream API calls
against. This API operation is available through both the Write and
Query APIs.

Because the Timestream SDKs are designed to transparently work with the
serviceE<rsquo>s architecture, including the management and mapping of
the service endpoints, I<we don't recommend that you use this API
operation unless>:

=over

=item *

You are using VPC endpoints (Amazon Web Services PrivateLink) with
Timestream
(https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

=item *

Your application uses a programming language that does not yet have SDK
support

=item *

You require better control over the client-side implementation

=back

For detailed information on how and when to use and implement
DescribeEndpoints, see The Endpoint Discovery Pattern
(https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).


=head2 DescribeTable

=over

=item DatabaseName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::DescribeTable>

Returns: a L<Paws::TimestreamWrite::DescribeTableResponse> instance

Returns information about the table, including the table name, database
name, retention duration of the memory store and the magnetic store.
Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html)
for details.


=head2 ListBatchLoadTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskStatus => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::ListBatchLoadTasks>

Returns: a L<Paws::TimestreamWrite::ListBatchLoadTasksResponse> instance

Provides a list of batch load tasks, along with the name, status, when
the task is resumable until, and other details. See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html)
for details.


=head2 ListDatabases

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::ListDatabases>

Returns: a L<Paws::TimestreamWrite::ListDatabasesResponse> instance

Returns a list of your Timestream databases. Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).
See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html)
for details.


=head2 ListTables

=over

=item [DatabaseName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::ListTables>

Returns: a L<Paws::TimestreamWrite::ListTablesResponse> instance

Provides a list of tables, along with the name, status, and retention
properties of each table. See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html)
for details.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::ListTagsForResource>

Returns: a L<Paws::TimestreamWrite::ListTagsForResourceResponse> instance

Lists all tags on a Timestream resource.


=head2 ResumeBatchLoadTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::ResumeBatchLoadTask>

Returns: a L<Paws::TimestreamWrite::ResumeBatchLoadTaskResponse> instance




=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::TimestreamWrite::Tag>]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::TagResource>

Returns: a L<Paws::TimestreamWrite::TagResourceResponse> instance

Associates a set of tags with a Timestream resource. You can then
activate these user-defined tags so that they appear on the Billing and
Cost Management console for cost allocation tracking.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::UntagResource>

Returns: a L<Paws::TimestreamWrite::UntagResourceResponse> instance

Removes the association of tags from a Timestream resource.


=head2 UpdateDatabase

=over

=item DatabaseName => Str

=item KmsKeyId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::UpdateDatabase>

Returns: a L<Paws::TimestreamWrite::UpdateDatabaseResponse> instance

Modifies the KMS key for an existing database. While updating the
database, you must specify the database name and the identifier of the
new KMS key to be used (C<KmsKeyId>). If there are any concurrent
C<UpdateDatabase> requests, first writer wins.

See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html)
for details.


=head2 UpdateTable

=over

=item DatabaseName => Str

=item TableName => Str

=item [MagneticStoreWriteProperties => L<Paws::TimestreamWrite::MagneticStoreWriteProperties>]

=item [RetentionProperties => L<Paws::TimestreamWrite::RetentionProperties>]

=item [Schema => L<Paws::TimestreamWrite::Schema>]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::UpdateTable>

Returns: a L<Paws::TimestreamWrite::UpdateTableResponse> instance

Modifies the retention duration of the memory store and magnetic store
for your Timestream table. Note that the change in retention duration
takes effect immediately. For example, if the retention period of the
memory store was initially set to 2 hours and then changed to 24 hours,
the memory store will be capable of holding 24 hours of data, but will
be populated with 24 hours of data 22 hours after this change was made.
Timestream does not retrieve data from the magnetic store to populate
the memory store.

See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html)
for details.


=head2 WriteRecords

=over

=item DatabaseName => Str

=item Records => ArrayRef[L<Paws::TimestreamWrite::Record>]

=item TableName => Str

=item [CommonAttributes => L<Paws::TimestreamWrite::Record>]


=back

Each argument is described in detail in: L<Paws::TimestreamWrite::WriteRecords>

Returns: a L<Paws::TimestreamWrite::WriteRecordsResponse> instance

Enables you to write your time-series data into Timestream. You can
specify a single data point or a batch of data points to be inserted
into the system. Timestream offers you a flexible schema that auto
detects the column names and data types for your Timestream tables
based on the dimension names and data types of the data points you
specify when invoking writes into the database.

Timestream supports eventual consistency read semantics. This means
that when you query data immediately after writing a batch of data into
Timestream, the query results might not reflect the results of a
recently completed write operation. The results may also include some
stale data. If you repeat the query request after a short time, the
results should return the latest data. Service quotas apply
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).

See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html)
for details.

B<Upserts>

You can use the C<Version> parameter in a C<WriteRecords> request to
update data points. Timestream tracks a version number with each
record. C<Version> defaults to C<1> when it's not specified for the
record in the request. Timestream updates an existing recordE<rsquo>s
measure value along with its C<Version> when it receives a write
request with a higher C<Version> number for that record. When it
receives an update request where the measure value is the same as that
of the existing record, Timestream still updates C<Version>, if it is
greater than the existing value of C<Version>. You can update a data
point as many times as desired, as long as the value of C<Version>
continuously increases.

For example, suppose you write a new record without indicating
C<Version> in the request. Timestream stores this record, and set
C<Version> to C<1>. Now, suppose you try to update this record with a
C<WriteRecords> request of the same record with a different measure
value but, like before, do not provide C<Version>. In this case,
Timestream will reject this update with a C<RejectedRecordsException>
since the updated recordE<rsquo>s version is not greater than the
existing value of Version.

However, if you were to resend the update request with C<Version> set
to C<2>, Timestream would then succeed in updating the recordE<rsquo>s
value, and the C<Version> would be set to C<2>. Next, suppose you sent
a C<WriteRecords> request with this same record and an identical
measure value, but with C<Version> set to C<3>. In this case,
Timestream would only update C<Version> to C<3>. Any further updates
would need to send a version number greater than C<3>, or the update
requests would receive a C<RejectedRecordsException>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Firehose;
  use Moose;
  sub service { 'firehose' }
  sub signing_name { 'firehose' }
  sub version { '2015-08-04' }
  sub target_prefix { 'Firehose_20150804' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::CreateDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::DeleteDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::DescribeDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeliveryStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::ListDeliveryStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::ListTagsForDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecordBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::PutRecordBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeliveryStreamEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::StartDeliveryStreamEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDeliveryStreamEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::StopDeliveryStreamEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::TagDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::UntagDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::UpdateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateDeliveryStream DeleteDeliveryStream DescribeDeliveryStream ListDeliveryStreams ListTagsForDeliveryStream PutRecord PutRecordBatch StartDeliveryStreamEncryption StopDeliveryStreamEncryption TagDeliveryStream UntagDeliveryStream UpdateDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose - Perl Interface to AWS Amazon Kinesis Firehose

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Firehose');
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

Amazon Data Firehose

Amazon Data Firehose was previously known as Amazon Kinesis Data
Firehose.

Amazon Data Firehose is a fully managed service that delivers real-time
streaming data to destinations such as Amazon Simple Storage Service
(Amazon S3), Amazon OpenSearch Service, Amazon Redshift, Splunk, and
various other supported destinations.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateDeliveryStream

=over

=item DeliveryStreamName => Str

=item [AmazonOpenSearchServerlessDestinationConfiguration => L<Paws::Firehose::AmazonOpenSearchServerlessDestinationConfiguration>]

=item [AmazonopensearchserviceDestinationConfiguration => L<Paws::Firehose::AmazonopensearchserviceDestinationConfiguration>]

=item [DatabaseSourceConfiguration => L<Paws::Firehose::DatabaseSourceConfiguration>]

=item [DeliveryStreamEncryptionConfigurationInput => L<Paws::Firehose::DeliveryStreamEncryptionConfigurationInput>]

=item [DeliveryStreamType => Str]

=item [DirectPutSourceConfiguration => L<Paws::Firehose::DirectPutSourceConfiguration>]

=item [ElasticsearchDestinationConfiguration => L<Paws::Firehose::ElasticsearchDestinationConfiguration>]

=item [ExtendedS3DestinationConfiguration => L<Paws::Firehose::ExtendedS3DestinationConfiguration>]

=item [HttpEndpointDestinationConfiguration => L<Paws::Firehose::HttpEndpointDestinationConfiguration>]

=item [IcebergDestinationConfiguration => L<Paws::Firehose::IcebergDestinationConfiguration>]

=item [KinesisStreamSourceConfiguration => L<Paws::Firehose::KinesisStreamSourceConfiguration>]

=item [MSKSourceConfiguration => L<Paws::Firehose::MSKSourceConfiguration>]

=item [RedshiftDestinationConfiguration => L<Paws::Firehose::RedshiftDestinationConfiguration>]

=item [S3DestinationConfiguration => L<Paws::Firehose::S3DestinationConfiguration>]

=item [SnowflakeDestinationConfiguration => L<Paws::Firehose::SnowflakeDestinationConfiguration>]

=item [SplunkDestinationConfiguration => L<Paws::Firehose::SplunkDestinationConfiguration>]

=item [Tags => ArrayRef[L<Paws::Firehose::Tag>]]


=back

Each argument is described in detail in: L<Paws::Firehose::CreateDeliveryStream>

Returns: a L<Paws::Firehose::CreateDeliveryStreamOutput> instance

Creates a Firehose stream.

By default, you can create up to 5,000 Firehose streams per Amazon Web
Services Region.

This is an asynchronous operation that immediately returns. The initial
status of the Firehose stream is C<CREATING>. After the Firehose stream
is created, its status is C<ACTIVE> and it now accepts data. If the
Firehose stream creation fails, the status transitions to
C<CREATING_FAILED>. Attempts to send data to a delivery stream that is
not in the C<ACTIVE> state cause an exception. To check the state of a
Firehose stream, use DescribeDeliveryStream.

If the status of a Firehose stream is C<CREATING_FAILED>, this status
doesn't change, and you can't invoke C<CreateDeliveryStream> again on
it. However, you can invoke the DeleteDeliveryStream operation to
delete it.

A Firehose stream can be configured to receive records directly from
providers using PutRecord or PutRecordBatch, or it can be configured to
use an existing Kinesis stream as its source. To specify a Kinesis data
stream as input, set the C<DeliveryStreamType> parameter to
C<KinesisStreamAsSource>, and provide the Kinesis stream Amazon
Resource Name (ARN) and role ARN in the
C<KinesisStreamSourceConfiguration> parameter.

To create a Firehose stream with server-side encryption (SSE) enabled,
include DeliveryStreamEncryptionConfigurationInput in your request.
This is optional. You can also invoke StartDeliveryStreamEncryption to
turn on SSE for an existing Firehose stream that doesn't have SSE
enabled.

A Firehose stream is configured with a single destination, such as
Amazon Simple Storage Service (Amazon S3), Amazon Redshift, Amazon
OpenSearch Service, Amazon OpenSearch Serverless, Splunk, and any
custom HTTP endpoint or HTTP endpoints owned by or supported by
third-party service providers, including Datadog, Dynatrace,
LogicMonitor, MongoDB, New Relic, and Sumo Logic. You must specify only
one of the following destination configuration parameters:
C<ExtendedS3DestinationConfiguration>, C<S3DestinationConfiguration>,
C<ElasticsearchDestinationConfiguration>,
C<RedshiftDestinationConfiguration>, or
C<SplunkDestinationConfiguration>.

When you specify C<S3DestinationConfiguration>, you can also provide
the following optional values: BufferingHints,
C<EncryptionConfiguration>, and C<CompressionFormat>. By default, if no
C<BufferingHints> value is provided, Firehose buffers data up to 5 MB
or for 5 minutes, whichever condition is satisfied first.
C<BufferingHints> is a hint, so there are some cases where the service
cannot adhere to these conditions strictly. For example, record
boundaries might be such that the size is a little over or under the
configured buffering size. By default, no encryption is performed. We
strongly recommend that you enable encryption to ensure secure data
storage in Amazon S3.

A few notes about Amazon Redshift as a destination:

=over

=item *

An Amazon Redshift destination requires an S3 bucket as intermediate
location. Firehose first delivers data to Amazon S3 and then uses
C<COPY> syntax to load data into an Amazon Redshift table. This is
specified in the C<RedshiftDestinationConfiguration.S3Configuration>
parameter.

=item *

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
C<RedshiftDestinationConfiguration.S3Configuration> because the Amazon
Redshift C<COPY> operation that reads from the S3 bucket doesn't
support these compression formats.

=item *

We strongly recommend that you use the user name and password you
provide exclusively with Firehose, and that the permissions for the
account are restricted for Amazon Redshift C<INSERT> permissions.

=back

Firehose assumes the IAM role that is configured as part of the
destination. The role should allow the Firehose principal to assume the
role, and the role should have permissions that allow the service to
deliver the data. For more information, see Grant Firehose Access to an
Amazon S3 Destination
(https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3)
in the I<Amazon Firehose Developer Guide>.


=head2 DeleteDeliveryStream

=over

=item DeliveryStreamName => Str

=item [AllowForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::Firehose::DeleteDeliveryStream>

Returns: a L<Paws::Firehose::DeleteDeliveryStreamOutput> instance

Deletes a Firehose stream and its data.

You can delete a Firehose stream only if it is in one of the following
states: C<ACTIVE>, C<DELETING>, C<CREATING_FAILED>, or
C<DELETING_FAILED>. You can't delete a Firehose stream that is in the
C<CREATING> state. To check the state of a Firehose stream, use
DescribeDeliveryStream.

DeleteDeliveryStream is an asynchronous API. When an API request to
DeleteDeliveryStream succeeds, the Firehose stream is marked for
deletion, and it goes into the C<DELETING> state.While the Firehose
stream is in the C<DELETING> state, the service might continue to
accept records, but it doesn't make any guarantees with respect to
delivering the data. Therefore, as a best practice, first stop any
applications that are sending records before you delete a Firehose
stream.

Removal of a Firehose stream that is in the C<DELETING> state is a low
priority operation for the service. A stream may remain in the
C<DELETING> state for several minutes. Therefore, as a best practice,
applications should not wait for streams in the C<DELETING> state to be
removed.


=head2 DescribeDeliveryStream

=over

=item DeliveryStreamName => Str

=item [ExclusiveStartDestinationId => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::Firehose::DescribeDeliveryStream>

Returns: a L<Paws::Firehose::DescribeDeliveryStreamOutput> instance

Describes the specified Firehose stream and its status. For example,
after your Firehose stream is created, call C<DescribeDeliveryStream>
to see whether the Firehose stream is C<ACTIVE> and therefore ready for
data to be sent to it.

If the status of a Firehose stream is C<CREATING_FAILED>, this status
doesn't change, and you can't invoke CreateDeliveryStream again on it.
However, you can invoke the DeleteDeliveryStream operation to delete
it. If the status is C<DELETING_FAILED>, you can force deletion by
invoking DeleteDeliveryStream again but with
DeleteDeliveryStreamInput$AllowForceDelete set to true.


=head2 ListDeliveryStreams

=over

=item [DeliveryStreamType => Str]

=item [ExclusiveStartDeliveryStreamName => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::Firehose::ListDeliveryStreams>

Returns: a L<Paws::Firehose::ListDeliveryStreamsOutput> instance

Lists your Firehose streams in alphabetical order of their names.

The number of Firehose streams might be too large to return using a
single call to C<ListDeliveryStreams>. You can limit the number of
Firehose streams returned, using the C<Limit> parameter. To determine
whether there are more delivery streams to list, check the value of
C<HasMoreDeliveryStreams> in the output. If there are more Firehose
streams to list, you can request them by calling this operation again
and setting the C<ExclusiveStartDeliveryStreamName> parameter to the
name of the last Firehose stream returned in the last call.


=head2 ListTagsForDeliveryStream

=over

=item DeliveryStreamName => Str

=item [ExclusiveStartTagKey => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::Firehose::ListTagsForDeliveryStream>

Returns: a L<Paws::Firehose::ListTagsForDeliveryStreamOutput> instance

Lists the tags for the specified Firehose stream. This operation has a
limit of five transactions per second per account.


=head2 PutRecord

=over

=item DeliveryStreamName => Str

=item Record => L<Paws::Firehose::Record>


=back

Each argument is described in detail in: L<Paws::Firehose::PutRecord>

Returns: a L<Paws::Firehose::PutRecordOutput> instance

Writes a single data record into an Firehose stream. To write multiple
data records into a Firehose stream, use PutRecordBatch. Applications
using these operations are referred to as producers.

By default, each Firehose stream can take in up to 2,000 transactions
per second, 5,000 records per second, or 5 MB per second. If you use
PutRecord and PutRecordBatch, the limits are an aggregate across these
two operations for each Firehose stream. For more information about
limits and how to request an increase, see Amazon Firehose Limits
(https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

Firehose accumulates and publishes a particular metric for a customer
account in one minute intervals. It is possible that the bursts of
incoming bytes/records ingested to a Firehose stream last only for a
few seconds. Due to this, the actual spikes in the traffic might not be
fully visible in the customer's 1 minute CloudWatch metrics.

You must specify the name of the Firehose stream and the data record
when using PutRecord. The data record consists of a data blob that can
be up to 1,000 KiB in size, and any kind of data. For example, it can
be a segment from a log file, geographic location data, website
clickstream data, and so on.

For multi record de-aggregation, you can not put more than 500 records
even if the data blob length is less than 1000 KiB. If you include more
than 500 records, the request succeeds but the record de-aggregation
doesn't work as expected and transformation lambda is invoked with the
complete base64 encoded data blob instead of de-aggregated base64
decoded records.

Firehose buffers records before delivering them to the destination. To
disambiguate the data blobs at the destination, a common solution is to
use delimiters in the data, such as a newline (C<\n>) or some other
character unique within the data. This allows the consumer application
to parse individual data items when reading the data from the
destination.

The C<PutRecord> operation returns a C<RecordId>, which is a unique
string assigned to each record. Producer applications can use this ID
for purposes such as auditability and investigation.

If the C<PutRecord> operation throws a C<ServiceUnavailableException>,
the API is automatically reinvoked (retried) 3 times. If the exception
persists, it is possible that the throughput limits have been exceeded
for the Firehose stream.

Re-invoking the Put API operations (for example, PutRecord and
PutRecordBatch) can result in data duplicates. For larger data assets,
allow for a longer time out before retrying Put API operations.

Data records sent to Firehose are stored for 24 hours from the time
they are added to a Firehose stream as it tries to send the records to
the destination. If the destination is unreachable for more than 24
hours, the data is no longer available.

Don't concatenate two or more base64 strings to form the data fields of
your records. Instead, concatenate the raw data, then perform base64
encoding.


=head2 PutRecordBatch

=over

=item DeliveryStreamName => Str

=item Records => ArrayRef[L<Paws::Firehose::Record>]


=back

Each argument is described in detail in: L<Paws::Firehose::PutRecordBatch>

Returns: a L<Paws::Firehose::PutRecordBatchOutput> instance

Writes multiple data records into a Firehose stream in a single call,
which can achieve higher throughput per producer than when writing
single records. To write single data records into a Firehose stream,
use PutRecord. Applications using these operations are referred to as
producers.

Firehose accumulates and publishes a particular metric for a customer
account in one minute intervals. It is possible that the bursts of
incoming bytes/records ingested to a Firehose stream last only for a
few seconds. Due to this, the actual spikes in the traffic might not be
fully visible in the customer's 1 minute CloudWatch metrics.

For information about service quota, see Amazon Firehose Quota
(https://docs.aws.amazon.com/firehose/latest/dev/limits.html).

Each PutRecordBatch request supports up to 500 records. Each record in
the request can be as large as 1,000 KB (before base64 encoding), up to
a limit of 4 MB for the entire request. These limits cannot be changed.

You must specify the name of the Firehose stream and the data record
when using PutRecord. The data record consists of a data blob that can
be up to 1,000 KB in size, and any kind of data. For example, it could
be a segment from a log file, geographic location data, website
clickstream data, and so on.

For multi record de-aggregation, you can not put more than 500 records
even if the data blob length is less than 1000 KiB. If you include more
than 500 records, the request succeeds but the record de-aggregation
doesn't work as expected and transformation lambda is invoked with the
complete base64 encoded data blob instead of de-aggregated base64
decoded records.

Firehose buffers records before delivering them to the destination. To
disambiguate the data blobs at the destination, a common solution is to
use delimiters in the data, such as a newline (C<\n>) or some other
character unique within the data. This allows the consumer application
to parse individual data items when reading the data from the
destination.

The PutRecordBatch response includes a count of failed records,
C<FailedPutCount>, and an array of responses, C<RequestResponses>. Even
if the PutRecordBatch call succeeds, the value of C<FailedPutCount> may
be greater than 0, indicating that there are records for which the
operation didn't succeed. Each entry in the C<RequestResponses> array
provides additional information about the processed record. It directly
correlates with a record in the request array using the same ordering,
from the top to the bottom. The response array always includes the same
number of records as the request array. C<RequestResponses> includes
both successfully and unsuccessfully processed records. Firehose tries
to process all records in each PutRecordBatch request. A single record
failure does not stop the processing of subsequent records.

A successfully processed record includes a C<RecordId> value, which is
unique for the record. An unsuccessfully processed record includes
C<ErrorCode> and C<ErrorMessage> values. C<ErrorCode> reflects the type
of error, and is one of the following values:
C<ServiceUnavailableException> or C<InternalFailure>. C<ErrorMessage>
provides more detailed information about the error.

If there is an internal server error or a timeout, the write might have
completed or it might have failed. If C<FailedPutCount> is greater than
0, retry the request, resending only those records that might have
failed processing. This minimizes the possible duplicate records and
also reduces the total bytes sent (and corresponding charges). We
recommend that you handle any duplicates at the destination.

If PutRecordBatch throws C<ServiceUnavailableException>, the API is
automatically reinvoked (retried) 3 times. If the exception persists,
it is possible that the throughput limits have been exceeded for the
Firehose stream.

Re-invoking the Put API operations (for example, PutRecord and
PutRecordBatch) can result in data duplicates. For larger data assets,
allow for a longer time out before retrying Put API operations.

Data records sent to Firehose are stored for 24 hours from the time
they are added to a Firehose stream as it attempts to send the records
to the destination. If the destination is unreachable for more than 24
hours, the data is no longer available.

Don't concatenate two or more base64 strings to form the data fields of
your records. Instead, concatenate the raw data, then perform base64
encoding.


=head2 StartDeliveryStreamEncryption

=over

=item DeliveryStreamName => Str

=item [DeliveryStreamEncryptionConfigurationInput => L<Paws::Firehose::DeliveryStreamEncryptionConfigurationInput>]


=back

Each argument is described in detail in: L<Paws::Firehose::StartDeliveryStreamEncryption>

Returns: a L<Paws::Firehose::StartDeliveryStreamEncryptionOutput> instance

Enables server-side encryption (SSE) for the Firehose stream.

This operation is asynchronous. It returns immediately. When you invoke
it, Firehose first sets the encryption status of the stream to
C<ENABLING>, and then to C<ENABLED>. The encryption status of a
Firehose stream is the C<Status> property in
DeliveryStreamEncryptionConfiguration. If the operation fails, the
encryption status changes to C<ENABLING_FAILED>. You can continue to
read and write data to your Firehose stream while the encryption status
is C<ENABLING>, but the data is not encrypted. It can take up to 5
seconds after the encryption status changes to C<ENABLED> before all
records written to the Firehose stream are encrypted. To find out
whether a record or a batch of records was encrypted, check the
response elements PutRecordOutput$Encrypted and
PutRecordBatchOutput$Encrypted, respectively.

To check the encryption status of a Firehose stream, use
DescribeDeliveryStream.

Even if encryption is currently enabled for a Firehose stream, you can
still invoke this operation on it to change the ARN of the CMK or both
its type and ARN. If you invoke this method to change the CMK, and the
old CMK is of type C<CUSTOMER_MANAGED_CMK>, Firehose schedules the
grant it had on the old CMK for retirement. If the new CMK is of type
C<CUSTOMER_MANAGED_CMK>, Firehose creates a grant that enables it to
use the new CMK to encrypt and decrypt data and to manage the grant.

For the KMS grant creation to be successful, the Firehose API
operations C<StartDeliveryStreamEncryption> and C<CreateDeliveryStream>
should not be called with session credentials that are more than 6
hours old.

If a Firehose stream already has encryption enabled and then you invoke
this operation to change the ARN of the CMK or both its type and ARN
and you get C<ENABLING_FAILED>, this only means that the attempt to
change the CMK failed. In this case, encryption remains enabled with
the old CMK.

If the encryption status of your Firehose stream is C<ENABLING_FAILED>,
you can invoke this operation again with a valid CMK. The CMK must be
enabled and the key policy mustn't explicitly deny the permission for
Firehose to invoke KMS encrypt and decrypt operations.

You can enable SSE for a Firehose stream only if it's a Firehose stream
that uses C<DirectPut> as its source.

The C<StartDeliveryStreamEncryption> and
C<StopDeliveryStreamEncryption> operations have a combined limit of 25
calls per Firehose stream per 24 hours. For example, you reach the
limit if you call C<StartDeliveryStreamEncryption> 13 times and
C<StopDeliveryStreamEncryption> 12 times for the same Firehose stream
in a 24-hour period.


=head2 StopDeliveryStreamEncryption

=over

=item DeliveryStreamName => Str


=back

Each argument is described in detail in: L<Paws::Firehose::StopDeliveryStreamEncryption>

Returns: a L<Paws::Firehose::StopDeliveryStreamEncryptionOutput> instance

Disables server-side encryption (SSE) for the Firehose stream.

This operation is asynchronous. It returns immediately. When you invoke
it, Firehose first sets the encryption status of the stream to
C<DISABLING>, and then to C<DISABLED>. You can continue to read and
write data to your stream while its status is C<DISABLING>. It can take
up to 5 seconds after the encryption status changes to C<DISABLED>
before all records written to the Firehose stream are no longer subject
to encryption. To find out whether a record or a batch of records was
encrypted, check the response elements PutRecordOutput$Encrypted and
PutRecordBatchOutput$Encrypted, respectively.

To check the encryption state of a Firehose stream, use
DescribeDeliveryStream.

If SSE is enabled using a customer managed CMK and then you invoke
C<StopDeliveryStreamEncryption>, Firehose schedules the related KMS
grant for retirement and then retires it after it ensures that it is
finished delivering records to the destination.

The C<StartDeliveryStreamEncryption> and
C<StopDeliveryStreamEncryption> operations have a combined limit of 25
calls per Firehose stream per 24 hours. For example, you reach the
limit if you call C<StartDeliveryStreamEncryption> 13 times and
C<StopDeliveryStreamEncryption> 12 times for the same Firehose stream
in a 24-hour period.


=head2 TagDeliveryStream

=over

=item DeliveryStreamName => Str

=item Tags => ArrayRef[L<Paws::Firehose::Tag>]


=back

Each argument is described in detail in: L<Paws::Firehose::TagDeliveryStream>

Returns: a L<Paws::Firehose::TagDeliveryStreamOutput> instance

Adds or updates tags for the specified Firehose stream. A tag is a
key-value pair that you can define and assign to Amazon Web Services
resources. If you specify a tag that already exists, the tag value is
replaced with the value that you specify in the request. Tags are
metadata. For example, you can add friendly names and descriptions or
other types of information that can help you distinguish the Firehose
stream. For more information about tags, see Using Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<Amazon Web Services Billing and Cost Management User Guide>.

Each Firehose stream can have up to 50 tags.

This operation has a limit of five transactions per second per account.


=head2 UntagDeliveryStream

=over

=item DeliveryStreamName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Firehose::UntagDeliveryStream>

Returns: a L<Paws::Firehose::UntagDeliveryStreamOutput> instance

Removes tags from the specified Firehose stream. Removed tags are
deleted, and you can't recover them after this operation successfully
completes.

If you specify a tag that doesn't exist, the operation ignores it.

This operation has a limit of five transactions per second per account.


=head2 UpdateDestination

=over

=item CurrentDeliveryStreamVersionId => Str

=item DeliveryStreamName => Str

=item DestinationId => Str

=item [AmazonOpenSearchServerlessDestinationUpdate => L<Paws::Firehose::AmazonOpenSearchServerlessDestinationUpdate>]

=item [AmazonopensearchserviceDestinationUpdate => L<Paws::Firehose::AmazonopensearchserviceDestinationUpdate>]

=item [ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>]

=item [ExtendedS3DestinationUpdate => L<Paws::Firehose::ExtendedS3DestinationUpdate>]

=item [HttpEndpointDestinationUpdate => L<Paws::Firehose::HttpEndpointDestinationUpdate>]

=item [IcebergDestinationUpdate => L<Paws::Firehose::IcebergDestinationUpdate>]

=item [RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>]

=item [S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>]

=item [SnowflakeDestinationUpdate => L<Paws::Firehose::SnowflakeDestinationUpdate>]

=item [SplunkDestinationUpdate => L<Paws::Firehose::SplunkDestinationUpdate>]


=back

Each argument is described in detail in: L<Paws::Firehose::UpdateDestination>

Returns: a L<Paws::Firehose::UpdateDestinationOutput> instance

Updates the specified destination of the specified Firehose stream.

Use this operation to change the destination type (for example, to
replace the Amazon S3 destination with Amazon Redshift) or change the
parameters associated with a destination (for example, to change the
bucket name of the Amazon S3 destination). The update might not occur
immediately. The target Firehose stream remains active while the
configurations are updated, so data writes to the Firehose stream can
continue during this process. The updated configurations are usually
effective within a few minutes.

Switching between Amazon OpenSearch Service and other services is not
supported. For an Amazon OpenSearch Service destination, you can only
update to another Amazon OpenSearch Service destination.

If the destination type is the same, Firehose merges the configuration
parameters specified with the destination configuration that already
exists on the delivery stream. If any of the parameters are not
specified in the call, the existing values are retained. For example,
in the Amazon S3 destination, if EncryptionConfiguration is not
specified, then the existing C<EncryptionConfiguration> is maintained
on the destination.

If the destination type is not the same, for example, changing the
destination from Amazon S3 to Amazon Redshift, Firehose does not merge
any parameters. In this case, all parameters must be specified.

Firehose uses C<CurrentDeliveryStreamVersionId> to avoid race
conditions and conflicting merges. This is a required field, and the
service updates the configuration only if the existing configuration
has a version ID that matches. After the update is applied
successfully, the version ID is updated, and can be retrieved using
DescribeDeliveryStream. Use the new version ID to set
C<CurrentDeliveryStreamVersionId> in the next call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


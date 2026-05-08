package Paws::Kinesis;
  use Moose;
  sub service { 'kinesis' }
  sub signing_name { 'kinesis' }
  sub version { '2013-12-02' }
  sub target_prefix { 'Kinesis_20131202' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'LimitExceededException' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTagsToStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::AddTagsToStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::CreateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecreaseStreamRetentionPeriod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DecreaseStreamRetentionPeriod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DeleteStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterStreamConsumer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DeregisterStreamConsumer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DescribeLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DescribeStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStreamConsumer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DescribeStreamConsumer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStreamSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DescribeStreamSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableEnhancedMonitoring {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DisableEnhancedMonitoring', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableEnhancedMonitoring {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::EnableEnhancedMonitoring', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::GetRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShardIterator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::GetShardIterator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IncreaseStreamRetentionPeriod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::IncreaseStreamRetentionPeriod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListShards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListShards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreamConsumers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListStreamConsumers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListTagsForStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeShards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::MergeShards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::PutRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterStreamConsumer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::RegisterStreamConsumer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::RemoveTagsFromStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SplitShard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::SplitShard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartStreamEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::StartStreamEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopStreamEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::StopStreamEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubscribeToShard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::SubscribeToShard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateShardCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::UpdateShardCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStreamMode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::UpdateStreamMode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllStream {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStream(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->StreamDescription->HasMoreShards) {
        $next_result = $self->DescribeStream(@_, ExclusiveStartShardId => $next_result->StreamDescription->Shards->[-1]->ShardId);
        push @{ $result->StreamDescription->Shards }, @{ $next_result->StreamDescription->Shards };
      }
      return $result;
    } else {
      while ($result->StreamDescription->HasMoreShards) {
        $callback->($_ => 'StreamDescription.Shards') foreach (@{ $result->StreamDescription->Shards });
        $result = $self->DescribeStream(@_, ExclusiveStartShardId => $result->StreamDescription->Shards->[-1]->ShardId);
      }
      $callback->($_ => 'StreamDescription.Shards') foreach (@{ $result->StreamDescription->Shards });
    }

    return undef
  }
  sub ListAllShards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListShards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListShards(@_, NextToken => $next_result->NextToken);
        push @{ $result->Shards }, @{ $next_result->Shards };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Shards') foreach (@{ $result->Shards });
        $result = $self->ListShards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Shards') foreach (@{ $result->Shards });
    }

    return undef
  }
  sub ListAllStreamConsumers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreamConsumers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreamConsumers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Consumers }, @{ $next_result->Consumers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Consumers') foreach (@{ $result->Consumers });
        $result = $self->ListStreamConsumers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Consumers') foreach (@{ $result->Consumers });
    }

    return undef
  }
  sub ListAllStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->HasMoreStreams) {
        $next_result = $self->ListStreams(@_, NextToken => $next_result->NextToken);
        push @{ $result->StreamNames }, @{ $next_result->StreamNames };
        push @{ $result->StreamSummaries }, @{ $next_result->StreamSummaries };
      }
      return $result;
    } else {
      while ($result->HasMoreStreams) {
        $callback->($_ => 'StreamNames') foreach (@{ $result->StreamNames });
        $callback->($_ => 'StreamSummaries') foreach (@{ $result->StreamSummaries });
        $result = $self->ListStreams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StreamNames') foreach (@{ $result->StreamNames });
      $callback->($_ => 'StreamSummaries') foreach (@{ $result->StreamSummaries });
    }

    return undef
  }


  sub operations { qw/AddTagsToStream CreateStream DecreaseStreamRetentionPeriod DeleteResourcePolicy DeleteStream DeregisterStreamConsumer DescribeLimits DescribeStream DescribeStreamConsumer DescribeStreamSummary DisableEnhancedMonitoring EnableEnhancedMonitoring GetRecords GetResourcePolicy GetShardIterator IncreaseStreamRetentionPeriod ListShards ListStreamConsumers ListStreams ListTagsForResource ListTagsForStream MergeShards PutRecord PutRecords PutResourcePolicy RegisterStreamConsumer RemoveTagsFromStream SplitShard StartStreamEncryption StopStreamEncryption SubscribeToShard TagResource UntagResource UpdateShardCount UpdateStreamMode / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis - Perl Interface to AWS Amazon Kinesis

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kinesis');
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

Amazon Kinesis Data Streams Service API Reference

Amazon Kinesis Data Streams is a managed service that scales
elastically for real-time processing of streaming big data.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02>


=head1 METHODS

=head2 AddTagsToStream

=over

=item Tags => L<Paws::Kinesis::TagMap>

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::AddTagsToStream>

Returns: nothing

Adds or updates tags for the specified Kinesis data stream. You can
assign up to 50 tags to a data stream.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

If tags have already been assigned to the stream, C<AddTagsToStream>
overwrites any existing tags that correspond to the specified tag keys.

AddTagsToStream has a limit of five transactions per second per
account.


=head2 CreateStream

=over

=item StreamName => Str

=item [ShardCount => Int]

=item [StreamModeDetails => L<Paws::Kinesis::StreamModeDetails>]

=item [Tags => L<Paws::Kinesis::TagMap>]


=back

Each argument is described in detail in: L<Paws::Kinesis::CreateStream>

Returns: nothing

Creates a Kinesis data stream. A stream captures and transports data
records that are continuously emitted from different data sources or
I<producers>. Scale-out within a stream is explicitly supported by
means of shards, which are uniquely identified groups of data records
in a stream.

You can create your data stream using either on-demand or provisioned
capacity mode. Data streams with an on-demand mode require no capacity
planning and automatically scale to handle gigabytes of write and read
throughput per minute. With the on-demand mode, Kinesis Data Streams
automatically manages the shards in order to provide the necessary
throughput. For the data streams with a provisioned mode, you must
specify the number of shards for the data stream. Each shard can
support reads up to five transactions per second, up to a maximum data
read total of 2 MiB per second. Each shard can support writes up to
1,000 records per second, up to a maximum data write total of 1 MiB per
second. If the amount of data input increases or decreases, you can add
or remove shards.

The stream name identifies the stream. The name is scoped to the Amazon
Web Services account used by the application. It is also scoped by
Amazon Web Services Region. That is, two streams in two different
accounts can have the same name, and two streams in the same account,
but in two different Regions, can have the same name.

C<CreateStream> is an asynchronous operation. Upon receiving a
C<CreateStream> request, Kinesis Data Streams immediately returns and
sets the stream status to C<CREATING>. After the stream is created,
Kinesis Data Streams sets the stream status to C<ACTIVE>. You should
perform read and write operations only on an C<ACTIVE> stream.

You receive a C<LimitExceededException> when making a C<CreateStream>
request when you try to do one of the following:

=over

=item *

Have more than five streams in the C<CREATING> state at any point in
time.

=item *

Create more shards than are authorized for your account.

=back

For the default shard limit for an Amazon Web Services account, see
Amazon Kinesis Data Streams Limits
(https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>. To increase this
limit, contact Amazon Web Services Support
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

You can use DescribeStreamSummary to check the stream status, which is
returned in C<StreamStatus>.

CreateStream has a limit of five transactions per second per account.

You can add tags to the stream when making a C<CreateStream> request by
setting the C<Tags> parameter. If you pass the C<Tags> parameter, in
addition to having the C<kinesis:CreateStream> permission, you must
also have the C<kinesis:AddTagsToStream> permission for the stream that
will be created. The C<kinesis:TagResource> permission wonE<rsquo>t
work to tag streams on creation. Tags will take effect from the
C<CREATING> status of the stream, but you can't make any updates to the
tags until the stream is in C<ACTIVE> state.


=head2 DecreaseStreamRetentionPeriod

=over

=item RetentionPeriodHours => Int

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DecreaseStreamRetentionPeriod>

Returns: nothing

Decreases the Kinesis data stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The minimum value of a stream's retention period is 24 hours.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

This operation may result in lost data. For example, if the stream's
retention period is 48 hours and is decreased to 24 hours, any data
already in the stream that is older than 24 hours is inaccessible.


=head2 DeleteResourcePolicy

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kinesis::DeleteResourcePolicy>

Returns: nothing

Delete a policy for the specified data stream or consumer. Request
patterns can be one of the following:

=over

=item *

Data stream pattern: C<arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+>

=item *

Consumer pattern:
C<^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+>

=back



=head2 DeleteStream

=over

=item [EnforceConsumerDeletion => Bool]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DeleteStream>

Returns: nothing

Deletes a Kinesis data stream and all its shards and data. You must
shut down any applications that are operating on the stream before you
delete the stream. If an application attempts to operate on a deleted
stream, it receives the exception C<ResourceNotFoundException>.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

If the stream is in the C<ACTIVE> state, you can delete it. After a
C<DeleteStream> request, the specified stream is in the C<DELETING>
state until Kinesis Data Streams completes the deletion.

B<Note:> Kinesis Data Streams might continue to accept data read and
write operations, such as PutRecord, PutRecords, and GetRecords, on a
stream in the C<DELETING> state until the stream deletion is complete.

When you delete a stream, any shards in that stream are also deleted,
and any tags are dissociated from the stream.

You can use the DescribeStreamSummary operation to check the state of
the stream, which is returned in C<StreamStatus>.

DeleteStream has a limit of five transactions per second per account.


=head2 DeregisterStreamConsumer

=over

=item [ConsumerARN => Str]

=item [ConsumerName => Str]

=item [StreamARN => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DeregisterStreamConsumer>

Returns: nothing

To deregister a consumer, provide its ARN. Alternatively, you can
provide the ARN of the data stream and the name you gave the consumer
when you registered it. You may also provide all three parameters, as
long as they don't conflict with each other. If you don't know the name
or ARN of the consumer that you want to deregister, you can use the
ListStreamConsumers operation to get a list of the descriptions of all
the consumers that are currently registered with a given data stream.
The description of a consumer contains its name and ARN.

This operation has a limit of five transactions per second per stream.


=head2 DescribeLimits






Each argument is described in detail in: L<Paws::Kinesis::DescribeLimits>

Returns: a L<Paws::Kinesis::DescribeLimitsOutput> instance

Describes the shard limits and usage for the account.

If you update your account limits, the old limits might be returned for
a few minutes.

This operation has a limit of one transaction per second per account.


=head2 DescribeStream

=over

=item [ExclusiveStartShardId => Str]

=item [Limit => Int]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DescribeStream>

Returns: a L<Paws::Kinesis::DescribeStreamOutput> instance

Describes the specified Kinesis data stream.

This API has been revised. It's highly recommended that you use the
DescribeStreamSummary API to get a summarized description of the
specified Kinesis data stream and the ListShards API to list the shards
in a specified data stream and obtain information about each shard.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

The information returned includes the stream name, Amazon Resource Name
(ARN), creation time, enhanced metric configuration, and shard map. The
shard map is an array of shard objects. For each shard object, there is
the hash key and sequence number ranges that the shard spans, and the
IDs of any earlier shards that played in a role in creating the shard.
Every record ingested in the stream is identified by a sequence number,
which is assigned when the record is put into the stream.

You can limit the number of shards returned by each call. For more
information, see Retrieving Shards from a Stream
(https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html)
in the I<Amazon Kinesis Data Streams Developer Guide>.

There are no guarantees about the chronological order shards returned.
To process shards in chronological order, use the ID of the parent
shard to track the lineage to the oldest shard.

This operation has a limit of 10 transactions per second per account.


=head2 DescribeStreamConsumer

=over

=item [ConsumerARN => Str]

=item [ConsumerName => Str]

=item [StreamARN => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DescribeStreamConsumer>

Returns: a L<Paws::Kinesis::DescribeStreamConsumerOutput> instance

To get the description of a registered consumer, provide the ARN of the
consumer. Alternatively, you can provide the ARN of the data stream and
the name you gave the consumer when you registered it. You may also
provide all three parameters, as long as they don't conflict with each
other. If you don't know the name or ARN of the consumer that you want
to describe, you can use the ListStreamConsumers operation to get a
list of the descriptions of all the consumers that are currently
registered with a given data stream.

This operation has a limit of 20 transactions per second per stream.

When making a cross-account call with C<DescribeStreamConsumer>, make
sure to provide the ARN of the consumer.


=head2 DescribeStreamSummary

=over

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DescribeStreamSummary>

Returns: a L<Paws::Kinesis::DescribeStreamSummaryOutput> instance

Provides a summarized description of the specified Kinesis data stream
without the shard list.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

The information returned includes the stream name, Amazon Resource Name
(ARN), status, record retention period, approximate creation time,
monitoring, encryption details, and open shard count.

DescribeStreamSummary has a limit of 20 transactions per second per
account.


=head2 DisableEnhancedMonitoring

=over

=item ShardLevelMetrics => ArrayRef[Str|Undef]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::DisableEnhancedMonitoring>

Returns: a L<Paws::Kinesis::EnhancedMonitoringOutput> instance

Disables enhanced monitoring.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.


=head2 EnableEnhancedMonitoring

=over

=item ShardLevelMetrics => ArrayRef[Str|Undef]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::EnableEnhancedMonitoring>

Returns: a L<Paws::Kinesis::EnhancedMonitoringOutput> instance

Enables enhanced Kinesis data stream monitoring for shard-level
metrics.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.


=head2 GetRecords

=over

=item ShardIterator => Str

=item [Limit => Int]

=item [StreamARN => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::GetRecords>

Returns: a L<Paws::Kinesis::GetRecordsOutput> instance

Gets data records from a Kinesis data stream's shard.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

Specify a shard iterator using the C<ShardIterator> parameter. The
shard iterator specifies the position in the shard from which you want
to start reading data records sequentially. If there are no records
available in the portion of the shard that the iterator points to,
GetRecords returns an empty list. It might take multiple calls to get
to a portion of the shard that contains records.

You can scale by provisioning multiple shards per stream while
considering service limits (for more information, see Amazon Kinesis
Data Streams Limits
(https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>). Your
application should have one thread per shard, each reading continuously
from its stream. To read from a stream continually, call GetRecords in
a loop. Use GetShardIterator to get the shard iterator to specify in
the first GetRecords call. GetRecords returns a new shard iterator in
C<NextShardIterator>. Specify the shard iterator returned in
C<NextShardIterator> in subsequent calls to GetRecords. If the shard
has been closed, the shard iterator can't return more data and
GetRecords returns C<null> in C<NextShardIterator>. You can terminate
the loop when the shard is closed, or when the shard iterator reaches
the record with the sequence number or other attribute that marks it as
the last record to process.

Each data record can be up to 1 MiB in size, and each shard can read up
to 2 MiB per second. You can ensure that your calls don't exceed the
maximum supported size or throughput by using the C<Limit> parameter to
specify the maximum number of records that GetRecords can return.
Consider your average record size when determining this limit. The
maximum number of records that can be returned per call is 10,000.

The size of the data returned by GetRecords varies depending on the
utilization of the shard. It is recommended that consumer applications
retrieve records via the C<GetRecords> command using the 5 TPS limit to
remain caught up. Retrieving records less frequently can lead to
consumer applications falling behind. The maximum size of data that
GetRecords can return is 10 MiB. If a call returns this amount of data,
subsequent calls made within the next 5 seconds throw
C<ProvisionedThroughputExceededException>. If there is insufficient
provisioned throughput on the stream, subsequent calls made within the
next 1 second throw C<ProvisionedThroughputExceededException>.
GetRecords doesn't return any data when it throws an exception. For
this reason, we recommend that you wait 1 second between calls to
GetRecords. However, it's possible that the application will get
exceptions for longer than 1 second.

To detect whether the application is falling behind in processing, you
can use the C<MillisBehindLatest> response attribute. You can also
monitor the stream using CloudWatch metrics and other mechanisms (see
Monitoring
(https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html) in the
I<Amazon Kinesis Data Streams Developer Guide>).

Each Amazon Kinesis record includes a value,
C<ApproximateArrivalTimestamp>, that is set when a stream successfully
receives and stores a record. This is commonly referred to as a
server-side time stamp, whereas a client-side time stamp is set when a
data producer creates or sends the record to a stream (a data producer
is any data source putting data records into a stream, for example with
PutRecords). The time stamp has millisecond precision. There are no
guarantees about the time stamp accuracy, or that the time stamp is
always increasing. For example, records in a shard or across a stream
might have time stamps that are out of order.

This operation has a limit of five transactions per second per shard.


=head2 GetResourcePolicy

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kinesis::GetResourcePolicy>

Returns: a L<Paws::Kinesis::GetResourcePolicyOutput> instance

Returns a policy attached to the specified data stream or consumer.
Request patterns can be one of the following:

=over

=item *

Data stream pattern: C<arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+>

=item *

Consumer pattern:
C<^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+>

=back



=head2 GetShardIterator

=over

=item ShardId => Str

=item ShardIteratorType => Str

=item [StartingSequenceNumber => Str]

=item [StreamARN => Str]

=item [StreamName => Str]

=item [Timestamp => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::GetShardIterator>

Returns: a L<Paws::Kinesis::GetShardIteratorOutput> instance

Gets an Amazon Kinesis shard iterator. A shard iterator expires 5
minutes after it is returned to the requester.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

A shard iterator specifies the shard position from which to start
reading data records sequentially. The position is specified using the
sequence number of a data record in a shard. A sequence number is the
identifier associated with every record ingested in the stream, and is
assigned when a record is put into the stream. Each stream has one or
more shards.

You must specify the shard iterator type. For example, you can set the
C<ShardIteratorType> parameter to read exactly from the position
denoted by a specific sequence number by using the
C<AT_SEQUENCE_NUMBER> shard iterator type. Alternatively, the parameter
can read right after the sequence number by using the
C<AFTER_SEQUENCE_NUMBER> shard iterator type, using sequence numbers
returned by earlier calls to PutRecord, PutRecords, GetRecords, or
DescribeStream. In the request, you can specify the shard iterator type
C<AT_TIMESTAMP> to read records from an arbitrary point in time,
C<TRIM_HORIZON> to cause C<ShardIterator> to point to the last
untrimmed record in the shard in the system (the oldest data record in
the shard), or C<LATEST> so that you always read the most recent data
in the shard.

When you read repeatedly from a stream, use a GetShardIterator request
to get the first shard iterator for use in your first GetRecords
request and for subsequent reads use the shard iterator returned by the
GetRecords request in C<NextShardIterator>. A new shard iterator is
returned by every GetRecords request in C<NextShardIterator>, which you
use in the C<ShardIterator> parameter of the next GetRecords request.

If a GetShardIterator request is made too often, you receive a
C<ProvisionedThroughputExceededException>. For more information about
throughput limits, see GetRecords, and Streams Limits
(https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>.

If the shard is closed, GetShardIterator returns a valid iterator for
the last sequence number of the shard. A shard can be closed as a
result of using SplitShard or MergeShards.

GetShardIterator has a limit of five transactions per second per
account per open shard.


=head2 IncreaseStreamRetentionPeriod

=over

=item RetentionPeriodHours => Int

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::IncreaseStreamRetentionPeriod>

Returns: nothing

Increases the Kinesis data stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The maximum value of a stream's retention period is 8760 hours
(365 days).

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

If you choose a longer stream retention period, this operation
increases the time period during which records that have not yet
expired are accessible. However, it does not make previous, expired
data (older than the stream's previous retention period) accessible
after the operation has been called. For example, if a stream's
retention period is set to 24 hours and is increased to 168 hours, any
data that is older than 24 hours remains inaccessible to consumer
applications.


=head2 ListShards

=over

=item [ExclusiveStartShardId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ShardFilter => L<Paws::Kinesis::ShardFilter>]

=item [StreamARN => Str]

=item [StreamCreationTimestamp => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::ListShards>

Returns: a L<Paws::Kinesis::ListShardsOutput> instance

Lists the shards in a stream and provides information about each shard.
This operation has a limit of 1000 transactions per second per data
stream.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

This action does not list expired shards. For information about expired
shards, see Data Routing, Data Persistence, and Shard State after a
Reshard
(https://docs.aws.amazon.com/streams/latest/dev/kinesis-using-sdk-java-after-resharding.html#kinesis-using-sdk-java-resharding-data-routing).

This API is a new operation that is used by the Amazon Kinesis Client
Library (KCL). If you have a fine-grained IAM policy that only allows
specific operations, you must update your policy to allow calls to this
API. For more information, see Controlling Access to Amazon Kinesis
Data Streams Resources Using IAM
(https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).


=head2 ListStreamConsumers

=over

=item StreamARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StreamCreationTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::ListStreamConsumers>

Returns: a L<Paws::Kinesis::ListStreamConsumersOutput> instance

Lists the consumers registered to receive data from a stream using
enhanced fan-out, and provides information about each consumer.

This operation has a limit of 5 transactions per second per stream.


=head2 ListStreams

=over

=item [ExclusiveStartStreamName => Str]

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::ListStreams>

Returns: a L<Paws::Kinesis::ListStreamsOutput> instance

Lists your Kinesis data streams.

The number of streams may be too large to return from a single call to
C<ListStreams>. You can limit the number of returned streams using the
C<Limit> parameter. If you do not specify a value for the C<Limit>
parameter, Kinesis Data Streams uses the default limit, which is
currently 100.

You can detect if there are more streams available to list by using the
C<HasMoreStreams> flag from the returned output. If there are more
streams available, you can request more streams by using the name of
the last stream returned by the C<ListStreams> request in the
C<ExclusiveStartStreamName> parameter in a subsequent request to
C<ListStreams>. The group of stream names returned by the subsequent
request is then added to the list. You can continue this process until
all the stream names have been collected in the list.

ListStreams has a limit of five transactions per second per account.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kinesis::ListTagsForResource>

Returns: a L<Paws::Kinesis::ListTagsForResourceOutput> instance

List all tags added to the specified Kinesis resource. Each tag is a
label consisting of a user-defined key and value. Tags can help you
manage, identify, organize, search for, and filter resources.

For more information about tagging Kinesis resources, see Tag your
Amazon Kinesis Data Streams resources
(https://docs.aws.amazon.com/streams/latest/dev/tagging.html).


=head2 ListTagsForStream

=over

=item [ExclusiveStartTagKey => Str]

=item [Limit => Int]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::ListTagsForStream>

Returns: a L<Paws::Kinesis::ListTagsForStreamOutput> instance

Lists the tags for the specified Kinesis data stream. This operation
has a limit of five transactions per second per account.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.


=head2 MergeShards

=over

=item AdjacentShardToMerge => Str

=item ShardToMerge => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::MergeShards>

Returns: nothing

Merges two adjacent shards in a Kinesis data stream and combines them
into a single shard to reduce the stream's capacity to ingest and
transport data. This API is only supported for the data streams with
the provisioned capacity mode. Two shards are considered adjacent if
the union of the hash key ranges for the two shards form a contiguous
set with no gaps. For example, if you have two shards, one with a hash
key range of 276...381 and the other with a hash key range of
382...454, then you could merge these two shards into a single shard
that would have a hash key range of 276...454. After the merge, the
single child shard receives data for all hash key values covered by the
two parent shards.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

C<MergeShards> is called when there is a need to reduce the overall
capacity of a stream because of excess capacity that is not being used.
You must specify the shard to be merged and the adjacent shard for a
stream. For more information about merging shards, see Merge Two Shards
(https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html)
in the I<Amazon Kinesis Data Streams Developer Guide>.

If the stream is in the C<ACTIVE> state, you can call C<MergeShards>.
If a stream is in the C<CREATING>, C<UPDATING>, or C<DELETING> state,
C<MergeShards> returns a C<ResourceInUseException>. If the specified
stream does not exist, C<MergeShards> returns a
C<ResourceNotFoundException>.

You can use DescribeStreamSummary to check the state of the stream,
which is returned in C<StreamStatus>.

C<MergeShards> is an asynchronous operation. Upon receiving a
C<MergeShards> request, Amazon Kinesis Data Streams immediately returns
a response and sets the C<StreamStatus> to C<UPDATING>. After the
operation is completed, Kinesis Data Streams sets the C<StreamStatus>
to C<ACTIVE>. Read and write operations continue to work while the
stream is in the C<UPDATING> state.

You use DescribeStreamSummary and the ListShards APIs to determine the
shard IDs that are specified in the C<MergeShards> request.

If you try to operate on too many streams in parallel using
CreateStream, DeleteStream, C<MergeShards>, or SplitShard, you receive
a C<LimitExceededException>.

C<MergeShards> has a limit of five transactions per second per account.


=head2 PutRecord

=over

=item Data => Str

=item PartitionKey => Str

=item [ExplicitHashKey => Str]

=item [SequenceNumberForOrdering => Str]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::PutRecord>

Returns: a L<Paws::Kinesis::PutRecordOutput> instance

Writes a single data record into an Amazon Kinesis data stream. Call
C<PutRecord> to send data into the stream for real-time ingestion and
subsequent processing, one record at a time. Each shard can support
writes up to 1,000 records per second, up to a maximum data write total
of 1 MiB per second.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

You must specify the name of the stream that captures, stores, and
transports the data; a partition key; and the data blob itself.

The data blob can be any type of data; for example, a segment from a
log file, geographic/location data, website clickstream data, and so
on.

The partition key is used by Kinesis Data Streams to distribute data
across shards. Kinesis Data Streams segregates the data records that
belong to a stream into multiple shards, using the partition key
associated with each data record to determine the shard to which a
given data record belongs.

Partition keys are Unicode strings, with a maximum length limit of 256
characters for each key. An MD5 hash function is used to map partition
keys to 128-bit integer values and to map associated data records to
shards using the hash key ranges of the shards. You can override
hashing the partition key to determine the shard by explicitly
specifying a hash value using the C<ExplicitHashKey> parameter. For
more information, see Adding Data to a Stream
(https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
in the I<Amazon Kinesis Data Streams Developer Guide>.

C<PutRecord> returns the shard ID of where the data record was placed
and the sequence number that was assigned to the data record.

Sequence numbers increase over time and are specific to a shard within
a stream, not across all shards within a stream. To guarantee strictly
increasing ordering, write serially to a shard and use the
C<SequenceNumberForOrdering> parameter. For more information, see
Adding Data to a Stream
(https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
in the I<Amazon Kinesis Data Streams Developer Guide>.

After you write a record to a stream, you cannot modify that record or
its order within the stream.

If a C<PutRecord> request cannot be processed because of insufficient
provisioned throughput on the shard involved in the request,
C<PutRecord> throws C<ProvisionedThroughputExceededException>.

By default, data records are accessible for 24 hours from the time that
they are added to a stream. You can use IncreaseStreamRetentionPeriod
or DecreaseStreamRetentionPeriod to modify this retention period.


=head2 PutRecords

=over

=item Records => ArrayRef[L<Paws::Kinesis::PutRecordsRequestEntry>]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::PutRecords>

Returns: a L<Paws::Kinesis::PutRecordsOutput> instance

Writes multiple data records into a Kinesis data stream in a single
call (also referred to as a C<PutRecords> request). Use this operation
to send data into the stream for data ingestion and processing.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

Each C<PutRecords> request can support up to 500 records. Each record
in the request can be as large as 1 MiB, up to a limit of 5 MiB for the
entire request, including partition keys. Each shard can support writes
up to 1,000 records per second, up to a maximum data write total of 1
MiB per second.

You must specify the name of the stream that captures, stores, and
transports the data; and an array of request C<Records>, with each
record in the array requiring a partition key and data blob. The record
size limit applies to the total size of the partition key and data
blob.

The data blob can be any type of data; for example, a segment from a
log file, geographic/location data, website clickstream data, and so
on.

The partition key is used by Kinesis Data Streams as input to a hash
function that maps the partition key and associated data to a specific
shard. An MD5 hash function is used to map partition keys to 128-bit
integer values and to map associated data records to shards. As a
result of this hashing mechanism, all data records with the same
partition key map to the same shard within the stream. For more
information, see Adding Data to a Stream
(https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream)
in the I<Amazon Kinesis Data Streams Developer Guide>.

Each record in the C<Records> array may include an optional parameter,
C<ExplicitHashKey>, which overrides the partition key to shard mapping.
This parameter allows a data producer to determine explicitly the shard
where the record is stored. For more information, see Adding Multiple
Records with PutRecords
(https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords)
in the I<Amazon Kinesis Data Streams Developer Guide>.

The C<PutRecords> response includes an array of response C<Records>.
Each record in the response array directly correlates with a record in
the request array using natural ordering, from the top to the bottom of
the request and response. The response C<Records> array always includes
the same number of records as the request array.

The response C<Records> array includes both successfully and
unsuccessfully processed records. Kinesis Data Streams attempts to
process all records in each C<PutRecords> request. A single record
failure does not stop the processing of subsequent records. As a
result, PutRecords doesn't guarantee the ordering of records. If you
need to read records in the same order they are written to the stream,
use PutRecord instead of C<PutRecords>, and write to the same shard.

A successfully processed record includes C<ShardId> and
C<SequenceNumber> values. The C<ShardId> parameter identifies the shard
in the stream where the record is stored. The C<SequenceNumber>
parameter is an identifier assigned to the put record, unique to all
records in the stream.

An unsuccessfully processed record includes C<ErrorCode> and
C<ErrorMessage> values. C<ErrorCode> reflects the type of error and can
be one of the following values:
C<ProvisionedThroughputExceededException> or C<InternalFailure>.
C<ErrorMessage> provides more detailed information about the
C<ProvisionedThroughputExceededException> exception including the
account ID, stream name, and shard ID of the record that was throttled.
For more information about partially successful responses, see Adding
Multiple Records with PutRecords
(https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords)
in the I<Amazon Kinesis Data Streams Developer Guide>.

After you write a record to a stream, you cannot modify that record or
its order within the stream.

By default, data records are accessible for 24 hours from the time that
they are added to a stream. You can use IncreaseStreamRetentionPeriod
or DecreaseStreamRetentionPeriod to modify this retention period.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kinesis::PutResourcePolicy>

Returns: nothing

Attaches a resource-based policy to a data stream or registered
consumer. If you are using an identity other than the root user of the
Amazon Web Services account that owns the resource, the calling
identity must have the C<PutResourcePolicy> permissions on the
specified Kinesis Data Streams resource and belong to the owner's
account in order to use this operation. If you don't have
C<PutResourcePolicy> permissions, Amazon Kinesis Data Streams returns a
C<403 Access Denied error>. If you receive a
C<ResourceNotFoundException>, check to see if you passed a valid stream
or consumer resource.

Request patterns can be one of the following:

=over

=item *

Data stream pattern: C<arn:aws.*:kinesis:.*:\d{12}:.*stream/\S+>

=item *

Consumer pattern:
C<^(arn):aws.*:kinesis:.*:\d{12}:.*stream\/[a-zA-Z0-9_.-]+\/consumer\/[a-zA-Z0-9_.-]+:[0-9]+>

=back

For more information, see Controlling Access to Amazon Kinesis Data
Streams Resources Using IAM
(https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html).


=head2 RegisterStreamConsumer

=over

=item ConsumerName => Str

=item StreamARN => Str

=item [Tags => L<Paws::Kinesis::TagMap>]


=back

Each argument is described in detail in: L<Paws::Kinesis::RegisterStreamConsumer>

Returns: a L<Paws::Kinesis::RegisterStreamConsumerOutput> instance

Registers a consumer with a Kinesis data stream. When you use this
operation, the consumer you register can then call SubscribeToShard to
receive data from the stream using enhanced fan-out, at a rate of up to
2 MiB per second for every shard you subscribe to. This rate is
unaffected by the total number of consumers that read from the same
stream.

You can add tags to the registered consumer when making a
C<RegisterStreamConsumer> request by setting the C<Tags> parameter. If
you pass the C<Tags> parameter, in addition to having the
C<kinesis:RegisterStreamConsumer> permission, you must also have the
C<kinesis:TagResource> permission for the consumer that will be
registered. Tags will take effect from the C<CREATING> status of the
consumer.

You can register up to 20 consumers per stream. A given consumer can
only be registered with one stream at a time.

For an example of how to use this operation, see Enhanced Fan-Out Using
the Kinesis Data Streams API
(https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html).

The use of this operation has a limit of five transactions per second
per account. Also, only 5 consumers can be created simultaneously. In
other words, you cannot have more than 5 consumers in a C<CREATING>
status at the same time. Registering a 6th consumer while there are 5
in a C<CREATING> status results in a C<LimitExceededException>.


=head2 RemoveTagsFromStream

=over

=item TagKeys => ArrayRef[Str|Undef]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::RemoveTagsFromStream>

Returns: nothing

Removes tags from the specified Kinesis data stream. Removed tags are
deleted and cannot be recovered after this operation successfully
completes.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

If you specify a tag that does not exist, it is ignored.

RemoveTagsFromStream has a limit of five transactions per second per
account.


=head2 SplitShard

=over

=item NewStartingHashKey => Str

=item ShardToSplit => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::SplitShard>

Returns: nothing

Splits a shard into two new shards in the Kinesis data stream, to
increase the stream's capacity to ingest and transport data.
C<SplitShard> is called when there is a need to increase the overall
capacity of a stream because of an expected increase in the volume of
data records being ingested. This API is only supported for the data
streams with the provisioned capacity mode.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

You can also use C<SplitShard> when a shard appears to be approaching
its maximum utilization; for example, the producers sending data into
the specific shard are suddenly sending more than previously
anticipated. You can also call C<SplitShard> to increase stream
capacity, so that more Kinesis Data Streams applications can
simultaneously read data from the stream for real-time processing.

You must specify the shard to be split and the new hash key, which is
the position in the shard where the shard gets split in two. In many
cases, the new hash key might be the average of the beginning and
ending hash key, but it can be any hash key value in the range being
mapped into the shard. For more information, see Split a Shard
(https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html)
in the I<Amazon Kinesis Data Streams Developer Guide>.

You can use DescribeStreamSummary and the ListShards APIs to determine
the shard ID and hash key values for the C<ShardToSplit> and
C<NewStartingHashKey> parameters that are specified in the
C<SplitShard> request.

C<SplitShard> is an asynchronous operation. Upon receiving a
C<SplitShard> request, Kinesis Data Streams immediately returns a
response and sets the stream status to C<UPDATING>. After the operation
is completed, Kinesis Data Streams sets the stream status to C<ACTIVE>.
Read and write operations continue to work while the stream is in the
C<UPDATING> state.

You can use DescribeStreamSummary to check the status of the stream,
which is returned in C<StreamStatus>. If the stream is in the C<ACTIVE>
state, you can call C<SplitShard>.

If the specified stream does not exist, DescribeStreamSummary returns a
C<ResourceNotFoundException>. If you try to create more shards than are
authorized for your account, you receive a C<LimitExceededException>.

For the default shard limit for an Amazon Web Services account, see
Kinesis Data Streams Limits
(https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>. To increase this
limit, contact Amazon Web Services Support
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html).

If you try to operate on too many streams simultaneously using
CreateStream, DeleteStream, MergeShards, and/or SplitShard, you receive
a C<LimitExceededException>.

C<SplitShard> has a limit of five transactions per second per account.


=head2 StartStreamEncryption

=over

=item EncryptionType => Str

=item KeyId => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::StartStreamEncryption>

Returns: nothing

Enables or updates server-side encryption using an Amazon Web Services
KMS key for a specified stream.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

Starting encryption is an asynchronous operation. Upon receiving the
request, Kinesis Data Streams returns immediately and sets the status
of the stream to C<UPDATING>. After the update is complete, Kinesis
Data Streams sets the status of the stream back to C<ACTIVE>. Updating
or applying encryption normally takes a few seconds to complete, but it
can take minutes. You can continue to read and write data to your
stream while its status is C<UPDATING>. Once the status of the stream
is C<ACTIVE>, encryption begins for records written to the stream.

API Limits: You can successfully apply a new Amazon Web Services KMS
key for server-side encryption 25 times in a rolling 24-hour period.

Note: It can take up to 5 seconds after the stream is in an C<ACTIVE>
status before all records written to the stream are encrypted. After
you enable encryption, you can verify that encryption is applied by
inspecting the API response from C<PutRecord> or C<PutRecords>.


=head2 StopStreamEncryption

=over

=item EncryptionType => Str

=item KeyId => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::StopStreamEncryption>

Returns: nothing

Disables server-side encryption for a specified stream.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

Stopping encryption is an asynchronous operation. Upon receiving the
request, Kinesis Data Streams returns immediately and sets the status
of the stream to C<UPDATING>. After the update is complete, Kinesis
Data Streams sets the status of the stream back to C<ACTIVE>. Stopping
encryption normally takes a few seconds to complete, but it can take
minutes. You can continue to read and write data to your stream while
its status is C<UPDATING>. Once the status of the stream is C<ACTIVE>,
records written to the stream are no longer encrypted by Kinesis Data
Streams.

API Limits: You can successfully disable server-side encryption 25
times in a rolling 24-hour period.

Note: It can take up to 5 seconds after the stream is in an C<ACTIVE>
status before all records written to the stream are no longer subject
to encryption. After you disabled encryption, you can verify that
encryption is not applied by inspecting the API response from
C<PutRecord> or C<PutRecords>.


=head2 SubscribeToShard

=over

=item ConsumerARN => Str

=item ShardId => Str

=item StartingPosition => L<Paws::Kinesis::StartingPosition>


=back

Each argument is described in detail in: L<Paws::Kinesis::SubscribeToShard>

Returns: a L<Paws::Kinesis::SubscribeToShardOutput> instance

This operation establishes an HTTP/2 connection between the consumer
you specify in the C<ConsumerARN> parameter and the shard you specify
in the C<ShardId> parameter. After the connection is successfully
established, Kinesis Data Streams pushes records from the shard to the
consumer over this connection. Before you call this operation, call
RegisterStreamConsumer to register the consumer with Kinesis Data
Streams.

When the C<SubscribeToShard> call succeeds, your consumer starts
receiving events of type SubscribeToShardEvent over the HTTP/2
connection for up to 5 minutes, after which time you need to call
C<SubscribeToShard> again to renew the subscription if you want to
continue to receive records.

You can make one call to C<SubscribeToShard> per second per registered
consumer per shard. For example, if you have a 4000 shard stream and
two registered stream consumers, you can make one C<SubscribeToShard>
request per second for each combination of shard and registered
consumer, allowing you to subscribe both consumers to all 4000 shards
in one second.

If you call C<SubscribeToShard> again with the same C<ConsumerARN> and
C<ShardId> within 5 seconds of a successful call, you'll get a
C<ResourceInUseException>. If you call C<SubscribeToShard> 5 seconds or
more after a successful call, the second call takes over the
subscription and the previous connection expires or fails with a
C<ResourceInUseException>.

For an example of how to use this operation, see Enhanced Fan-Out Using
the Kinesis Data Streams API
(https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html).


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::Kinesis::TagMap>


=back

Each argument is described in detail in: L<Paws::Kinesis::TagResource>

Returns: nothing

Adds or updates tags for the specified Kinesis resource. Each tag is a
label consisting of a user-defined key and value. Tags can help you
manage, identify, organize, search for, and filter resources. You can
assign up to 50 tags to a Kinesis resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kinesis::UntagResource>

Returns: nothing

Removes tags from the specified Kinesis resource. Removed tags are
deleted and can't be recovered after this operation completes
successfully.


=head2 UpdateShardCount

=over

=item ScalingType => Str

=item TargetShardCount => Int

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::Kinesis::UpdateShardCount>

Returns: a L<Paws::Kinesis::UpdateShardCountOutput> instance

Updates the shard count of the specified stream to the specified number
of shards. This API is only supported for the data streams with the
provisioned capacity mode.

When invoking this API, you must use either the C<StreamARN> or the
C<StreamName> parameter, or both. It is recommended that you use the
C<StreamARN> input parameter when you invoke this API.

Updating the shard count is an asynchronous operation. Upon receiving
the request, Kinesis Data Streams returns immediately and sets the
status of the stream to C<UPDATING>. After the update is complete,
Kinesis Data Streams sets the status of the stream back to C<ACTIVE>.
Depending on the size of the stream, the scaling action could take a
few minutes to complete. You can continue to read and write data to
your stream while its status is C<UPDATING>.

To update the shard count, Kinesis Data Streams performs splits or
merges on individual shards. This can cause short-lived shards to be
created, in addition to the final shards. These short-lived shards
count towards your total shard limit for your account in the Region.

When using this operation, we recommend that you specify a target shard
count that is a multiple of 25% (25%, 50%, 75%, 100%). You can specify
any target value within your shard limit. However, if you specify a
target that isn't a multiple of 25%, the scaling action might take
longer to complete.

This operation has the following default limits. By default, you cannot
do the following:

=over

=item *

Scale more than ten times per rolling 24-hour period per stream

=item *

Scale up to more than double your current shard count for a stream

=item *

Scale down below half your current shard count for a stream

=item *

Scale up to more than 10000 shards in a stream

=item *

Scale a stream with more than 10000 shards down unless the result is
less than 10000 shards

=item *

Scale up to more than the shard limit for your account

=item *

Make over 10 TPS. TPS over 10 will trigger the LimitExceededException

=back

For the default limits for an Amazon Web Services account, see Streams
Limits
(https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html)
in the I<Amazon Kinesis Data Streams Developer Guide>. To request an
increase in the call rate limit, the shard limit for this API, or your
overall shard limit, use the limits form
(https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&limitType=service-code-kinesis).


=head2 UpdateStreamMode

=over

=item StreamARN => Str

=item StreamModeDetails => L<Paws::Kinesis::StreamModeDetails>


=back

Each argument is described in detail in: L<Paws::Kinesis::UpdateStreamMode>

Returns: nothing

Updates the capacity mode of the data stream. Currently, in Kinesis
Data Streams, you can choose between an B<on-demand> capacity mode and
a B<provisioned> capacity mode for your data stream.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllStream(sub { },[ExclusiveStartShardId => Str, Limit => Int, StreamARN => Str, StreamName => Str])

=head2 DescribeAllStream([ExclusiveStartShardId => Str, Limit => Int, StreamARN => Str, StreamName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamDescription.Shards, passing the object as the first parameter, and the string 'StreamDescription.Shards' as the second parameter 

If not, it will return a a L<Paws::Kinesis::DescribeStreamOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllShards(sub { },[ExclusiveStartShardId => Str, MaxResults => Int, NextToken => Str, ShardFilter => L<Paws::Kinesis::ShardFilter>, StreamARN => Str, StreamCreationTimestamp => Str, StreamName => Str])

=head2 ListAllShards([ExclusiveStartShardId => Str, MaxResults => Int, NextToken => Str, ShardFilter => L<Paws::Kinesis::ShardFilter>, StreamARN => Str, StreamCreationTimestamp => Str, StreamName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Shards, passing the object as the first parameter, and the string 'Shards' as the second parameter 

If not, it will return a a L<Paws::Kinesis::ListShardsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreamConsumers(sub { },StreamARN => Str, [MaxResults => Int, NextToken => Str, StreamCreationTimestamp => Str])

=head2 ListAllStreamConsumers(StreamARN => Str, [MaxResults => Int, NextToken => Str, StreamCreationTimestamp => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Consumers, passing the object as the first parameter, and the string 'Consumers' as the second parameter 

If not, it will return a a L<Paws::Kinesis::ListStreamConsumersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreams(sub { },[ExclusiveStartStreamName => Str, Limit => Int, NextToken => Str])

=head2 ListAllStreams([ExclusiveStartStreamName => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamNames, passing the object as the first parameter, and the string 'StreamNames' as the second parameter 

 - StreamSummaries, passing the object as the first parameter, and the string 'StreamSummaries' as the second parameter 

If not, it will return a a L<Paws::Kinesis::ListStreamsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


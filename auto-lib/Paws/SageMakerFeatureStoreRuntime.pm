package Paws::SageMakerFeatureStoreRuntime;
  use Moose;
  sub service { 'featurestore-runtime.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2020-07-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::BatchGetRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::DeleteRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::GetRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchGetRecord DeleteRecord GetRecord PutRecord / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime - Perl Interface to AWS Amazon SageMaker Feature Store Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerFeatureStoreRuntime');
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

Contains all data plane API operations and data types for the Amazon
SageMaker Feature Store. Use this API to put, delete, and retrieve
(get) features from a feature store.

Use the following operations to configure your C<OnlineStore> and
C<OfflineStore> features, and to create and manage feature groups:

=over

=item *

CreateFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)

=item *

DeleteFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)

=item *

DescribeFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)

=item *

ListFeatureGroups
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker-2020-07-01>


=head1 METHODS

=head2 BatchGetRecord

=over

=item Identifiers => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier>]

=item [ExpirationTimeResponse => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecord>

Returns: a L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResponse> instance

Retrieves a batch of C<Records> from a C<FeatureGroup>.


=head2 DeleteRecord

=over

=item EventTime => Str

=item FeatureGroupName => Str

=item RecordIdentifierValueAsString => Str

=item [DeletionMode => Str]

=item [TargetStores => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::DeleteRecord>

Returns: nothing

Deletes a C<Record> from a C<FeatureGroup> in the C<OnlineStore>.
Feature Store supports both C<SoftDelete> and C<HardDelete>. For
C<SoftDelete> (default), feature columns are set to C<null> and the
record is no longer retrievable by C<GetRecord> or C<BatchGetRecord>.
For C<HardDelete>, the complete C<Record> is removed from the
C<OnlineStore>. In both cases, Feature Store appends the deleted record
marker to the C<OfflineStore>. The deleted record marker is a record
with the same C<RecordIdentifer> as the original, but with
C<is_deleted> value set to C<True>, C<EventTime> set to the delete
input C<EventTime>, and other feature values set to C<null>.

Note that the C<EventTime> specified in C<DeleteRecord> should be set
later than the C<EventTime> of the existing record in the
C<OnlineStore> for that C<RecordIdentifer>. If it is not, the deletion
does not occur:

=over

=item *

For C<SoftDelete>, the existing (not deleted) record remains in the
C<OnlineStore>, though the delete record marker is still written to the
C<OfflineStore>.

=item *

C<HardDelete> returns C<EventTime>: C<400 ValidationException> to
indicate that the delete operation failed. No delete record marker is
written to the C<OfflineStore>.

=back

When a record is deleted from the C<OnlineStore>, the deleted record
marker is appended to the C<OfflineStore>. If you have the Iceberg
table format enabled for your C<OfflineStore>, you can remove all
history of a record from the C<OfflineStore> using Amazon Athena or
Apache Spark. For information on how to hard delete a record from the
C<OfflineStore> with the Iceberg table format enabled, see Delete
records from the offline store
(https://docs.aws.amazon.com/sagemaker/latest/dg/feature-store-delete-records-offline-store.html#feature-store-delete-records-offline-store).


=head2 GetRecord

=over

=item FeatureGroupName => Str

=item RecordIdentifierValueAsString => Str

=item [ExpirationTimeResponse => Str]

=item [FeatureNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::GetRecord>

Returns: a L<Paws::SageMakerFeatureStoreRuntime::GetRecordResponse> instance

Use for C<OnlineStore> serving from a C<FeatureStore>. Only the latest
records stored in the C<OnlineStore> can be retrieved. If no Record
with C<RecordIdentifierValue> is found, then an empty result is
returned.


=head2 PutRecord

=over

=item FeatureGroupName => Str

=item Record => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::FeatureValue>]

=item [TargetStores => ArrayRef[Str|Undef]]

=item [TtlDuration => L<Paws::SageMakerFeatureStoreRuntime::TtlDuration>]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::PutRecord>

Returns: nothing

The C<PutRecord> API is used to ingest a list of C<Records> into your
feature group.

If a new recordE<rsquo>s C<EventTime> is greater, the new record is
written to both the C<OnlineStore> and C<OfflineStore>. Otherwise, the
record is a historic record and it is written only to the
C<OfflineStore>.

You can specify the ingestion to be applied to the C<OnlineStore>,
C<OfflineStore>, or both by using the C<TargetStores> request
parameter.

You can set the ingested record to expire at a given time to live (TTL)
duration after the recordE<rsquo>s event time, C<ExpiresAt> =
C<EventTime> + C<TtlDuration>, by specifying the C<TtlDuration>
parameter. A record level C<TtlDuration> is set when specifying the
C<TtlDuration> parameter using the C<PutRecord> API call. If the input
C<TtlDuration> is C<null> or unspecified, C<TtlDuration> is set to the
default feature group level C<TtlDuration>. A record level
C<TtlDuration> supersedes the group level C<TtlDuration>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


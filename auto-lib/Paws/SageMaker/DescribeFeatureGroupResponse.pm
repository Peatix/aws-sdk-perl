
package Paws::SageMaker::DescribeFeatureGroupResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EventTimeFeatureName => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has FeatureDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureDefinition]', required => 1);
  has FeatureGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureGroupStatus => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Paws::SageMaker::LastUpdateStatus');
  has NextToken => (is => 'ro', isa => 'Str', required => 1);
  has OfflineStoreConfig => (is => 'ro', isa => 'Paws::SageMaker::OfflineStoreConfig');
  has OfflineStoreStatus => (is => 'ro', isa => 'Paws::SageMaker::OfflineStoreStatus');
  has OnlineStoreConfig => (is => 'ro', isa => 'Paws::SageMaker::OnlineStoreConfig');
  has OnlineStoreTotalSizeBytes => (is => 'ro', isa => 'Int');
  has RecordIdentifierFeatureName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has ThroughputConfig => (is => 'ro', isa => 'Paws::SageMaker::ThroughputConfigDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFeatureGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp indicating when SageMaker created the C<FeatureGroup>.


=head2 Description => Str

A free form description of the feature group.


=head2 B<REQUIRED> EventTimeFeatureName => Str

The name of the feature that stores the C<EventTime> of a Record in a
C<FeatureGroup>.

An C<EventTime> is a point in time when a new event occurs that
corresponds to the creation or update of a C<Record> in a
C<FeatureGroup>. All C<Records> in the C<FeatureGroup> have a
corresponding C<EventTime>.


=head2 FailureReason => Str

The reason that the C<FeatureGroup> failed to be replicated in the
C<OfflineStore>. This is failure can occur because:

=over

=item *

The C<FeatureGroup> could not be created in the C<OfflineStore>.

=item *

The C<FeatureGroup> could not be deleted from the C<OfflineStore>.

=back



=head2 B<REQUIRED> FeatureDefinitions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]

A list of the C<Features> in the C<FeatureGroup>. Each feature is
defined by a C<FeatureName> and C<FeatureType>.


=head2 B<REQUIRED> FeatureGroupArn => Str

The Amazon Resource Name (ARN) of the C<FeatureGroup>.


=head2 B<REQUIRED> FeatureGroupName => Str

he name of the C<FeatureGroup>.


=head2 FeatureGroupStatus => Str

The status of the feature group.

Valid values are: C<"Creating">, C<"Created">, C<"CreateFailed">, C<"Deleting">, C<"DeleteFailed">
=head2 LastModifiedTime => Str

A timestamp indicating when the feature group was last updated.


=head2 LastUpdateStatus => L<Paws::SageMaker::LastUpdateStatus>

A value indicating whether the update made to the feature group was
successful.


=head2 B<REQUIRED> NextToken => Str

A token to resume pagination of the list of C<Features>
(C<FeatureDefinitions>).


=head2 OfflineStoreConfig => L<Paws::SageMaker::OfflineStoreConfig>

The configuration of the offline store. It includes the following
configurations:

=over

=item *

Amazon S3 location of the offline store.

=item *

Configuration of the Glue data catalog.

=item *

Table format of the offline store.

=item *

Option to disable the automatic creation of a Glue table for the
offline store.

=item *

Encryption configuration.

=back



=head2 OfflineStoreStatus => L<Paws::SageMaker::OfflineStoreStatus>

The status of the C<OfflineStore>. Notifies you if replicating data
into the C<OfflineStore> has failed. Returns either: C<Active> or
C<Blocked>


=head2 OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfig>

The configuration for the C<OnlineStore>.


=head2 OnlineStoreTotalSizeBytes => Int

The size of the C<OnlineStore> in bytes.


=head2 B<REQUIRED> RecordIdentifierFeatureName => Str

The name of the C<Feature> used for C<RecordIdentifier>, whose value
uniquely identifies a record stored in the feature store.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM execution role used to
persist data into the OfflineStore if an OfflineStoreConfig is
provided.


=head2 ThroughputConfig => L<Paws::SageMaker::ThroughputConfigDescription>




=head2 _request_id => Str


=cut

1;
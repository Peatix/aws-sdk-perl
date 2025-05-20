
package Paws::CloudTrail::UpdateEventDataStoreResponse;
  use Moose;
  has AdvancedEventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::AdvancedEventSelector]');
  has BillingMode => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EventDataStoreArn => (is => 'ro', isa => 'Str');
  has FederationRoleArn => (is => 'ro', isa => 'Str');
  has FederationStatus => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MultiRegionEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has OrganizationEnabled => (is => 'ro', isa => 'Bool');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::UpdateEventDataStoreResponse

=head1 ATTRIBUTES


=head2 AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]

The advanced event selectors that are applied to the event data store.


=head2 BillingMode => Str

The billing mode for the event data store.

Valid values are: C<"EXTENDABLE_RETENTION_PRICING">, C<"FIXED_RETENTION_PRICING">
=head2 CreatedTimestamp => Str

The timestamp that shows when an event data store was first created.


=head2 EventDataStoreArn => Str

The ARN of the event data store.


=head2 FederationRoleArn => Str

If Lake query federation is enabled, provides the ARN of the federation
role used to access the resources for the federated event data store.


=head2 FederationStatus => Str

Indicates the Lake query federation
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html)
status. The status is C<ENABLED> if Lake query federation is enabled,
or C<DISABLED> if Lake query federation is disabled. You cannot delete
an event data store if the C<FederationStatus> is C<ENABLED>.

Valid values are: C<"ENABLING">, C<"ENABLED">, C<"DISABLING">, C<"DISABLED">
=head2 KmsKeyId => Str

Specifies the KMS key ID that encrypts the events delivered by
CloudTrail. The value is a fully specified ARN to a KMS key in the
following format.

C<arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012>


=head2 MultiRegionEnabled => Bool

Indicates whether the event data store includes events from all
Regions, or only from the Region in which it was created.


=head2 Name => Str

The name of the event data store.


=head2 OrganizationEnabled => Bool

Indicates whether an event data store is collecting logged events for
an organization in Organizations.


=head2 RetentionPeriod => Int

The retention period, in days.


=head2 Status => Str

The status of an event data store.

Valid values are: C<"CREATED">, C<"ENABLED">, C<"PENDING_DELETION">, C<"STARTING_INGESTION">, C<"STOPPING_INGESTION">, C<"STOPPED_INGESTION">
=head2 TerminationProtectionEnabled => Bool

Indicates whether termination protection is enabled for the event data
store.


=head2 UpdatedTimestamp => Str

The timestamp that shows when the event data store was last updated.
C<UpdatedTimestamp> is always either the same or newer than the time
shown in C<CreatedTimestamp>.


=head2 _request_id => Str


=cut

1;
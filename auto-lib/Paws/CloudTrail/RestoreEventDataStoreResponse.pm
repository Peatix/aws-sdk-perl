
package Paws::CloudTrail::RestoreEventDataStoreResponse;
  use Moose;
  has AdvancedEventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::AdvancedEventSelector]');
  has BillingMode => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EventDataStoreArn => (is => 'ro', isa => 'Str');
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

Paws::CloudTrail::RestoreEventDataStoreResponse

=head1 ATTRIBUTES


=head2 AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]

The advanced event selectors that were used to select events.


=head2 BillingMode => Str

The billing mode for the event data store.

Valid values are: C<"EXTENDABLE_RETENTION_PRICING">, C<"FIXED_RETENTION_PRICING">
=head2 CreatedTimestamp => Str

The timestamp of an event data store's creation.


=head2 EventDataStoreArn => Str

The event data store ARN.


=head2 KmsKeyId => Str

Specifies the KMS key ID that encrypts the events delivered by
CloudTrail. The value is a fully specified ARN to a KMS key in the
following format.

C<arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012>


=head2 MultiRegionEnabled => Bool

Indicates whether the event data store is collecting events from all
Regions, or only from the Region in which the event data store was
created.


=head2 Name => Str

The name of the event data store.


=head2 OrganizationEnabled => Bool

Indicates whether an event data store is collecting logged events for
an organization in Organizations.


=head2 RetentionPeriod => Int

The retention period, in days.


=head2 Status => Str

The status of the event data store.

Valid values are: C<"CREATED">, C<"ENABLED">, C<"PENDING_DELETION">, C<"STARTING_INGESTION">, C<"STOPPING_INGESTION">, C<"STOPPED_INGESTION">
=head2 TerminationProtectionEnabled => Bool

Indicates that termination protection is enabled and the event data
store cannot be automatically deleted.


=head2 UpdatedTimestamp => Str

The timestamp that shows when an event data store was updated, if
applicable. C<UpdatedTimestamp> is always either the same or newer than
the time shown in C<CreatedTimestamp>.


=head2 _request_id => Str


=cut

1;
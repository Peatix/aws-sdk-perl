
package Paws::CloudTrail::UpdateEventDataStore;
  use Moose;
  has AdvancedEventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::AdvancedEventSelector]');
  has BillingMode => (is => 'ro', isa => 'Str');
  has EventDataStore => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MultiRegionEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has OrganizationEnabled => (is => 'ro', isa => 'Bool');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventDataStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::UpdateEventDataStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::UpdateEventDataStore - Arguments for method UpdateEventDataStore on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventDataStore on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method UpdateEventDataStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventDataStore.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $UpdateEventDataStoreResponse = $cloudtrail->UpdateEventDataStore(
      EventDataStore         => 'MyEventDataStoreArn',
      AdvancedEventSelectors => [
        {
          FieldSelectors => [
            {
              Field    => 'MySelectorField',    # min: 1, max: 1000
              EndsWith => [
                'MyOperatorValue', ...          # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
              Equals => [
                'MyOperatorValue', ...    # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
              NotEndsWith => [
                'MyOperatorValue', ...    # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
              NotEquals => [
                'MyOperatorValue', ...    # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
              NotStartsWith => [
                'MyOperatorValue', ...    # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
              StartsWith => [
                'MyOperatorValue', ...    # min: 1, max: 2048
              ],    # min: 1; OPTIONAL
            },
            ...
          ],    # min: 1
          Name => 'MySelectorName',    # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      BillingMode                  => 'EXTENDABLE_RETENTION_PRICING', # OPTIONAL
      KmsKeyId                     => 'MyEventDataStoreKmsKeyId',     # OPTIONAL
      MultiRegionEnabled           => 1,                              # OPTIONAL
      Name                         => 'MyEventDataStoreName',         # OPTIONAL
      OrganizationEnabled          => 1,                              # OPTIONAL
      RetentionPeriod              => 1,                              # OPTIONAL
      TerminationProtectionEnabled => 1,                              # OPTIONAL
    );

    # Results:
    my $AdvancedEventSelectors =
      $UpdateEventDataStoreResponse->AdvancedEventSelectors;
    my $BillingMode        = $UpdateEventDataStoreResponse->BillingMode;
    my $CreatedTimestamp   = $UpdateEventDataStoreResponse->CreatedTimestamp;
    my $EventDataStoreArn  = $UpdateEventDataStoreResponse->EventDataStoreArn;
    my $FederationRoleArn  = $UpdateEventDataStoreResponse->FederationRoleArn;
    my $FederationStatus   = $UpdateEventDataStoreResponse->FederationStatus;
    my $KmsKeyId           = $UpdateEventDataStoreResponse->KmsKeyId;
    my $MultiRegionEnabled = $UpdateEventDataStoreResponse->MultiRegionEnabled;
    my $Name               = $UpdateEventDataStoreResponse->Name;
    my $OrganizationEnabled =
      $UpdateEventDataStoreResponse->OrganizationEnabled;
    my $RetentionPeriod = $UpdateEventDataStoreResponse->RetentionPeriod;
    my $Status          = $UpdateEventDataStoreResponse->Status;
    my $TerminationProtectionEnabled =
      $UpdateEventDataStoreResponse->TerminationProtectionEnabled;
    my $UpdatedTimestamp = $UpdateEventDataStoreResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::UpdateEventDataStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/UpdateEventDataStore>

=head1 ATTRIBUTES


=head2 AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]

The advanced event selectors used to select events for the event data
store. You can configure up to five advanced event selectors for each
event data store.



=head2 BillingMode => Str

You can't change the billing mode from C<EXTENDABLE_RETENTION_PRICING>
to C<FIXED_RETENTION_PRICING>. If C<BillingMode> is set to
C<EXTENDABLE_RETENTION_PRICING> and you want to use
C<FIXED_RETENTION_PRICING> instead, you'll need to stop ingestion on
the event data store and create a new event data store that uses
C<FIXED_RETENTION_PRICING>.

The billing mode for the event data store determines the cost for
ingesting events and the default and maximum retention period for the
event data store.

The following are the possible values:

=over

=item *

C<EXTENDABLE_RETENTION_PRICING> - This billing mode is generally
recommended if you want a flexible retention period of up to 3653 days
(about 10 years). The default retention period for this billing mode is
366 days.

=item *

C<FIXED_RETENTION_PRICING> - This billing mode is recommended if you
expect to ingest more than 25 TB of event data per month and need a
retention period of up to 2557 days (about 7 years). The default
retention period for this billing mode is 2557 days.

=back

For more information about CloudTrail pricing, see CloudTrail Pricing
(http://aws.amazon.com/cloudtrail/pricing/) and Managing CloudTrail
Lake costs
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html).

Valid values are: C<"EXTENDABLE_RETENTION_PRICING">, C<"FIXED_RETENTION_PRICING">

=head2 B<REQUIRED> EventDataStore => Str

The ARN (or the ID suffix of the ARN) of the event data store that you
want to update.



=head2 KmsKeyId => Str

Specifies the KMS key ID to use to encrypt the events delivered by
CloudTrail. The value can be an alias name prefixed by C<alias/>, a
fully specified ARN to an alias, a fully specified ARN to a key, or a
globally unique identifier.

Disabling or deleting the KMS key, or removing CloudTrail permissions
on the key, prevents CloudTrail from logging events to the event data
store, and prevents users from querying the data in the event data
store that was encrypted with the key. After you associate an event
data store with a KMS key, the KMS key cannot be removed or changed.
Before you disable or delete a KMS key that you are using with an event
data store, delete or back up your event data store.

CloudTrail also supports KMS multi-Region keys. For more information
about multi-Region keys, see Using multi-Region keys
(https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html)
in the I<Key Management Service Developer Guide>.

Examples:

=over

=item *

C<alias/MyAliasName>

=item *

C<arn:aws:kms:us-east-2:123456789012:alias/MyAliasName>

=item *

C<arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012>

=item *

C<12345678-1234-1234-1234-123456789012>

=back




=head2 MultiRegionEnabled => Bool

Specifies whether an event data store collects events from all Regions,
or only from the Region in which it was created.



=head2 Name => Str

The event data store name.



=head2 OrganizationEnabled => Bool

Specifies whether an event data store collects events logged for an
organization in Organizations.

Only the management account for the organization can convert an
organization event data store to a non-organization event data store,
or convert a non-organization event data store to an organization event
data store.



=head2 RetentionPeriod => Int

The retention period of the event data store, in days. If
C<BillingMode> is set to C<EXTENDABLE_RETENTION_PRICING>, you can set a
retention period of up to 3653 days, the equivalent of 10 years. If
C<BillingMode> is set to C<FIXED_RETENTION_PRICING>, you can set a
retention period of up to 2557 days, the equivalent of seven years.

CloudTrail Lake determines whether to retain an event by checking if
the C<eventTime> of the event is within the specified retention period.
For example, if you set a retention period of 90 days, CloudTrail will
remove events when the C<eventTime> is older than 90 days.

If you decrease the retention period of an event data store, CloudTrail
will remove any events with an C<eventTime> older than the new
retention period. For example, if the previous retention period was 365
days and you decrease it to 100 days, CloudTrail will remove events
with an C<eventTime> older than 100 days.



=head2 TerminationProtectionEnabled => Bool

Indicates that termination protection is enabled and the event data
store cannot be automatically deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventDataStore in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


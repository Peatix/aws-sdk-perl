
package Paws::CloudTrail::CreateEventDataStore;
  use Moose;
  has AdvancedEventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::AdvancedEventSelector]');
  has BillingMode => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MultiRegionEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationEnabled => (is => 'ro', isa => 'Bool');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
  has StartIngestion => (is => 'ro', isa => 'Bool');
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventDataStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::CreateEventDataStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateEventDataStore - Arguments for method CreateEventDataStore on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventDataStore on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method CreateEventDataStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventDataStore.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $CreateEventDataStoreResponse = $cloudtrail->CreateEventDataStore(
      Name                   => 'MyEventDataStoreName',
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
      BillingMode         => 'EXTENDABLE_RETENTION_PRICING',    # OPTIONAL
      KmsKeyId            => 'MyEventDataStoreKmsKeyId',        # OPTIONAL
      MultiRegionEnabled  => 1,                                 # OPTIONAL
      OrganizationEnabled => 1,                                 # OPTIONAL
      RetentionPeriod     => 1,                                 # OPTIONAL
      StartIngestion      => 1,                                 # OPTIONAL
      TagsList            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TerminationProtectionEnabled => 1,    # OPTIONAL
    );

    # Results:
    my $AdvancedEventSelectors =
      $CreateEventDataStoreResponse->AdvancedEventSelectors;
    my $BillingMode        = $CreateEventDataStoreResponse->BillingMode;
    my $CreatedTimestamp   = $CreateEventDataStoreResponse->CreatedTimestamp;
    my $EventDataStoreArn  = $CreateEventDataStoreResponse->EventDataStoreArn;
    my $KmsKeyId           = $CreateEventDataStoreResponse->KmsKeyId;
    my $MultiRegionEnabled = $CreateEventDataStoreResponse->MultiRegionEnabled;
    my $Name               = $CreateEventDataStoreResponse->Name;
    my $OrganizationEnabled =
      $CreateEventDataStoreResponse->OrganizationEnabled;
    my $RetentionPeriod = $CreateEventDataStoreResponse->RetentionPeriod;
    my $Status          = $CreateEventDataStoreResponse->Status;
    my $TagsList        = $CreateEventDataStoreResponse->TagsList;
    my $TerminationProtectionEnabled =
      $CreateEventDataStoreResponse->TerminationProtectionEnabled;
    my $UpdatedTimestamp = $CreateEventDataStoreResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::CreateEventDataStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/CreateEventDataStore>

=head1 ATTRIBUTES


=head2 AdvancedEventSelectors => ArrayRef[L<Paws::CloudTrail::AdvancedEventSelector>]

The advanced event selectors to use to select the events for the data
store. You can configure up to five advanced event selectors for each
event data store.

For more information about how to use advanced event selectors to log
CloudTrail events, see Log events by using advanced event selectors
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced)
in the CloudTrail User Guide.

For more information about how to use advanced event selectors to
include Config configuration items in your event data store, see Create
an event data store for Config configuration items
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-eds-cli.html#lake-cli-create-eds-config)
in the CloudTrail User Guide.

For more information about how to use advanced event selectors to
include events outside of Amazon Web Services events in your event data
store, see Create an integration to log events from outside Amazon Web
Services
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-integrations-cli.html#lake-cli-create-integration)
in the CloudTrail User Guide.



=head2 BillingMode => Str

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

The default value is C<EXTENDABLE_RETENTION_PRICING>.

For more information about CloudTrail pricing, see CloudTrail Pricing
(http://aws.amazon.com/cloudtrail/pricing/) and Managing CloudTrail
Lake costs
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-manage-costs.html).

Valid values are: C<"EXTENDABLE_RETENTION_PRICING">, C<"FIXED_RETENTION_PRICING">

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

Specifies whether the event data store includes events from all
Regions, or only from the Region in which the event data store is
created.



=head2 B<REQUIRED> Name => Str

The name of the event data store.



=head2 OrganizationEnabled => Bool

Specifies whether an event data store collects events logged for an
organization in Organizations.



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

If you plan to copy trail events to this event data store, we recommend
that you consider both the age of the events that you want to copy as
well as how long you want to keep the copied events in your event data
store. For example, if you copy trail events that are 5 years old and
specify a retention period of 7 years, the event data store will retain
those events for two years.



=head2 StartIngestion => Bool

Specifies whether the event data store should start ingesting live
events. The default is true.



=head2 TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]





=head2 TerminationProtectionEnabled => Bool

Specifies whether termination protection is enabled for the event data
store. If termination protection is enabled, you cannot delete the
event data store until termination protection is disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventDataStore in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


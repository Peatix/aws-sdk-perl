
package Paws::IoTSiteWise::DescribeStorageConfigurationResponse;
  use Moose;
  has ConfigurationStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::ConfigurationStatus', traits => ['NameInRequest'], request_name => 'configurationStatus', required => 1);
  has DisallowIngestNullNaN => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disallowIngestNullNaN');
  has DisassociatedDataStorage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'disassociatedDataStorage');
  has LastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateDate');
  has MultiLayerStorage => (is => 'ro', isa => 'Paws::IoTSiteWise::MultiLayerStorage', traits => ['NameInRequest'], request_name => 'multiLayerStorage');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTSiteWise::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType', required => 1);
  has WarmTier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'warmTier');
  has WarmTierRetentionPeriod => (is => 'ro', isa => 'Paws::IoTSiteWise::WarmTierRetentionPeriod', traits => ['NameInRequest'], request_name => 'warmTierRetentionPeriod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeStorageConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationStatus => L<Paws::IoTSiteWise::ConfigurationStatus>




=head2 DisallowIngestNullNaN => Bool

Describes the configuration for ingesting NULL and NaN data. By default
the feature is allowed. The feature is disallowed if the value is
C<true>.


=head2 DisassociatedDataStorage => Str

Contains the storage configuration for time series (data streams) that
aren't associated with asset properties. The
C<disassociatedDataStorage> can be one of the following values:

=over

=item *

C<ENABLED> E<ndash> IoT SiteWise accepts time series that aren't
associated with asset properties.

After the C<disassociatedDataStorage> is enabled, you can't disable it.

=item *

C<DISABLED> E<ndash> IoT SiteWise doesn't accept time series (data
streams) that aren't associated with asset properties.

=back

For more information, see Data streams
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html)
in the I<IoT SiteWise User Guide>.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 LastUpdateDate => Str

The date the storage configuration was last updated, in Unix epoch
time.


=head2 MultiLayerStorage => L<Paws::IoTSiteWise::MultiLayerStorage>

Contains information about the storage destination.


=head2 RetentionPeriod => L<Paws::IoTSiteWise::RetentionPeriod>

The number of days your data is kept in the hot tier. By default, your
data is kept indefinitely in the hot tier.


=head2 B<REQUIRED> StorageType => Str

The storage tier that you specified for your data. The C<storageType>
parameter can be one of the following values:

=over

=item *

C<SITEWISE_DEFAULT_STORAGE> E<ndash> IoT SiteWise saves your data into
the hot tier. The hot tier is a service-managed database.

=item *

C<MULTI_LAYER_STORAGE> E<ndash> IoT SiteWise saves your data in both
the cold tier and the hot tier. The cold tier is a customer-managed
Amazon S3 bucket.

=back


Valid values are: C<"SITEWISE_DEFAULT_STORAGE">, C<"MULTI_LAYER_STORAGE">
=head2 WarmTier => Str

A service managed storage tier optimized for analytical queries. It
stores periodically uploaded, buffered and historical data ingested
with the CreaeBulkImportJob API.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 WarmTierRetentionPeriod => L<Paws::IoTSiteWise::WarmTierRetentionPeriod>

Set this period to specify how long your data is stored in the warm
tier before it is deleted. You can set this only if cold tier is
enabled.


=head2 _request_id => Str


=cut


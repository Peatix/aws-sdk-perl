
package Paws::IoTSiteWise::PutStorageConfiguration;
  use Moose;
  has DisallowIngestNullNaN => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disallowIngestNullNaN');
  has DisassociatedDataStorage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'disassociatedDataStorage');
  has MultiLayerStorage => (is => 'ro', isa => 'Paws::IoTSiteWise::MultiLayerStorage', traits => ['NameInRequest'], request_name => 'multiLayerStorage');
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTSiteWise::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType', required => 1);
  has WarmTier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'warmTier');
  has WarmTierRetentionPeriod => (is => 'ro', isa => 'Paws::IoTSiteWise::WarmTierRetentionPeriod', traits => ['NameInRequest'], request_name => 'warmTierRetentionPeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/account/storage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::PutStorageConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::PutStorageConfiguration - Arguments for method PutStorageConfiguration on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutStorageConfiguration on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method PutStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutStorageConfiguration.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $PutStorageConfigurationResponse = $iotsitewise->PutStorageConfiguration(
      StorageType              => 'SITEWISE_DEFAULT_STORAGE',
      DisallowIngestNullNaN    => 1,                            # OPTIONAL
      DisassociatedDataStorage => 'ENABLED',                    # OPTIONAL
      MultiLayerStorage        => {
        CustomerManagedS3Storage => {
          RoleArn       => 'MyARN',    # min: 1, max: 1600
          S3ResourceArn => 'MyARN',    # min: 1, max: 1600

        },

      },    # OPTIONAL
      RetentionPeriod => {
        NumberOfDays => 1,    # OPTIONAL
        Unlimited    => 1,    # OPTIONAL
      },    # OPTIONAL
      WarmTier                => 'ENABLED',    # OPTIONAL
      WarmTierRetentionPeriod => {
        NumberOfDays => 1,                     # OPTIONAL
        Unlimited    => 1,                     # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ConfigurationStatus =
      $PutStorageConfigurationResponse->ConfigurationStatus;
    my $DisallowIngestNullNaN =
      $PutStorageConfigurationResponse->DisallowIngestNullNaN;
    my $DisassociatedDataStorage =
      $PutStorageConfigurationResponse->DisassociatedDataStorage;
    my $MultiLayerStorage = $PutStorageConfigurationResponse->MultiLayerStorage;
    my $RetentionPeriod   = $PutStorageConfigurationResponse->RetentionPeriod;
    my $StorageType       = $PutStorageConfigurationResponse->StorageType;
    my $WarmTier          = $PutStorageConfigurationResponse->WarmTier;
    my $WarmTierRetentionPeriod =
      $PutStorageConfigurationResponse->WarmTierRetentionPeriod;

    # Returns a L<Paws::IoTSiteWise::PutStorageConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/PutStorageConfiguration>

=head1 ATTRIBUTES


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

=head2 MultiLayerStorage => L<Paws::IoTSiteWise::MultiLayerStorage>

Identifies a storage destination. If you specified
C<MULTI_LAYER_STORAGE> for the storage type, you must specify a
C<MultiLayerStorage> object.



=head2 RetentionPeriod => L<Paws::IoTSiteWise::RetentionPeriod>





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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutStorageConfiguration in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


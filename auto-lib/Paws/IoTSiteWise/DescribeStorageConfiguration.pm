
package Paws::IoTSiteWise::DescribeStorageConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/account/storage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeStorageConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeStorageConfiguration - Arguments for method DescribeStorageConfiguration on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorageConfiguration on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorageConfiguration.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeStorageConfigurationResponse =
      $iotsitewise->DescribeStorageConfiguration();

    # Results:
    my $ConfigurationStatus =
      $DescribeStorageConfigurationResponse->ConfigurationStatus;
    my $DisallowIngestNullNaN =
      $DescribeStorageConfigurationResponse->DisallowIngestNullNaN;
    my $DisassociatedDataStorage =
      $DescribeStorageConfigurationResponse->DisassociatedDataStorage;
    my $LastUpdateDate = $DescribeStorageConfigurationResponse->LastUpdateDate;
    my $MultiLayerStorage =
      $DescribeStorageConfigurationResponse->MultiLayerStorage;
    my $RetentionPeriod =
      $DescribeStorageConfigurationResponse->RetentionPeriod;
    my $StorageType = $DescribeStorageConfigurationResponse->StorageType;
    my $WarmTier    = $DescribeStorageConfigurationResponse->WarmTier;
    my $WarmTierRetentionPeriod =
      $DescribeStorageConfigurationResponse->WarmTierRetentionPeriod;

  # Returns a L<Paws::IoTSiteWise::DescribeStorageConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeStorageConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorageConfiguration in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


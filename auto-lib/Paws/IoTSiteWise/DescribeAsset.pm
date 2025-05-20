
package Paws::IoTSiteWise::DescribeAsset;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);
  has ExcludeProperties => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'excludeProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAsset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeAssetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAsset - Arguments for method DescribeAsset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAsset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAsset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAsset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeAssetResponse = $iotsitewise->DescribeAsset(
      AssetId           => 'MyCustomID',
      ExcludeProperties => 1,              # OPTIONAL
    );

    # Results:
    my $AssetArn = $DescribeAssetResponse->AssetArn;
    my $AssetCompositeModelSummaries =
      $DescribeAssetResponse->AssetCompositeModelSummaries;
    my $AssetCompositeModels = $DescribeAssetResponse->AssetCompositeModels;
    my $AssetCreationDate    = $DescribeAssetResponse->AssetCreationDate;
    my $AssetDescription     = $DescribeAssetResponse->AssetDescription;
    my $AssetExternalId      = $DescribeAssetResponse->AssetExternalId;
    my $AssetHierarchies     = $DescribeAssetResponse->AssetHierarchies;
    my $AssetId              = $DescribeAssetResponse->AssetId;
    my $AssetLastUpdateDate  = $DescribeAssetResponse->AssetLastUpdateDate;
    my $AssetModelId         = $DescribeAssetResponse->AssetModelId;
    my $AssetName            = $DescribeAssetResponse->AssetName;
    my $AssetProperties      = $DescribeAssetResponse->AssetProperties;
    my $AssetStatus          = $DescribeAssetResponse->AssetStatus;

    # Returns a L<Paws::IoTSiteWise::DescribeAssetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAsset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset. This can be either the actual ID in UUID format,
or else C<externalId:> followed by the external ID, if it has one. For
more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 ExcludeProperties => Bool

Whether or not to exclude asset properties from the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAsset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTSiteWise::DescribeAssetCompositeModel;
  use Moose;
  has AssetCompositeModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetCompositeModelId', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAssetCompositeModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assets/{assetId}/composite-models/{assetCompositeModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeAssetCompositeModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetCompositeModel - Arguments for method DescribeAssetCompositeModel on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssetCompositeModel on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAssetCompositeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssetCompositeModel.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeAssetCompositeModelResponse =
      $iotsitewise->DescribeAssetCompositeModel(
      AssetCompositeModelId => 'MyCustomID',
      AssetId               => 'MyCustomID',

      );

    # Results:
    my $ActionDefinitions =
      $DescribeAssetCompositeModelResponse->ActionDefinitions;
    my $AssetCompositeModelDescription =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelDescription;
    my $AssetCompositeModelExternalId =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelExternalId;
    my $AssetCompositeModelId =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelId;
    my $AssetCompositeModelName =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelName;
    my $AssetCompositeModelPath =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelPath;
    my $AssetCompositeModelProperties =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelProperties;
    my $AssetCompositeModelSummaries =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelSummaries;
    my $AssetCompositeModelType =
      $DescribeAssetCompositeModelResponse->AssetCompositeModelType;
    my $AssetId = $DescribeAssetCompositeModelResponse->AssetId;

   # Returns a L<Paws::IoTSiteWise::DescribeAssetCompositeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAssetCompositeModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetCompositeModelId => Str

The ID of a composite model on this asset. This can be either the
actual ID in UUID format, or else C<externalId:> followed by the
external ID, if it has one. For more information, see Referencing
objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 B<REQUIRED> AssetId => Str

The ID of the asset. This can be either the actual ID in UUID format,
or else C<externalId:> followed by the external ID, if it has one. For
more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssetCompositeModel in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


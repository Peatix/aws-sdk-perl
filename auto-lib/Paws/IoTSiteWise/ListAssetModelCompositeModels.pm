
package Paws::IoTSiteWise::ListAssetModelCompositeModels;
  use Moose;
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetModelId', required => 1);
  has AssetModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'assetModelVersion');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetModelCompositeModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models/{assetModelId}/composite-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetModelCompositeModels - Arguments for method ListAssetModelCompositeModels on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetModelCompositeModels on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssetModelCompositeModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetModelCompositeModels.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssetModelCompositeModelsResponse =
      $iotsitewise->ListAssetModelCompositeModels(
      AssetModelId      => 'MyCustomID',
      AssetModelVersion => 'MyAssetModelVersionFilter',    # OPTIONAL
      MaxResults        => 1,                              # OPTIONAL
      NextToken         => 'MyNextToken',                  # OPTIONAL
      );

    # Results:
    my $AssetModelCompositeModelSummaries =
      $ListAssetModelCompositeModelsResponse->AssetModelCompositeModelSummaries;
    my $NextToken = $ListAssetModelCompositeModelsResponse->NextToken;

 # Returns a L<Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssetModelCompositeModels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model. This can be either the actual ID in UUID
format, or else C<externalId:> followed by the external ID, if it has
one. For more information, see Referencing objects with external IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references)
in the I<IoT SiteWise User Guide>.



=head2 AssetModelVersion => Str

The version alias that specifies the latest or active version of the
asset model. The details are returned in the response. The default
value is C<LATEST>. See Asset model versions
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html)
in the I<IoT SiteWise User Guide>.



=head2 MaxResults => Int

The maximum number of results to return for each paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetModelCompositeModels in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


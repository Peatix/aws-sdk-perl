
package Paws::IoTSiteWise::DescribeAssetPropertyResponse;
  use Moose;
  has AssetExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetExternalId');
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetName', required => 1);
  has AssetProperty => (is => 'ro', isa => 'Paws::IoTSiteWise::Property', traits => ['NameInRequest'], request_name => 'assetProperty');
  has CompositeModel => (is => 'ro', isa => 'Paws::IoTSiteWise::CompositeModelProperty', traits => ['NameInRequest'], request_name => 'compositeModel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetPropertyResponse

=head1 ATTRIBUTES


=head2 AssetExternalId => Str

The external ID of the asset. For more information, see Using external
IDs
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids)
in the I<IoT SiteWise User Guide>.


=head2 B<REQUIRED> AssetId => Str

The ID of the asset, in UUID format.


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model, in UUID format.


=head2 B<REQUIRED> AssetName => Str

The name of the asset.


=head2 AssetProperty => L<Paws::IoTSiteWise::Property>

The asset property's definition, alias, and notification state.

This response includes this object for normal asset properties. If you
describe an asset property in a composite model, this response includes
the asset property information in C<compositeModel>.


=head2 CompositeModel => L<Paws::IoTSiteWise::CompositeModelProperty>

The composite model that declares this asset property, if this asset
property exists in a composite model.


=head2 _request_id => Str


=cut



package Paws::IoTSiteWise::DescribeAssetCompositeModelResponse;
  use Moose;
  has ActionDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::ActionDefinition]', traits => ['NameInRequest'], request_name => 'actionDefinitions');
  has AssetCompositeModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCompositeModelDescription', required => 1);
  has AssetCompositeModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCompositeModelExternalId');
  has AssetCompositeModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCompositeModelId', required => 1);
  has AssetCompositeModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCompositeModelName', required => 1);
  has AssetCompositeModelPath => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetCompositeModelPathSegment]', traits => ['NameInRequest'], request_name => 'assetCompositeModelPath', required => 1);
  has AssetCompositeModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetProperty]', traits => ['NameInRequest'], request_name => 'assetCompositeModelProperties', required => 1);
  has AssetCompositeModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetCompositeModelSummary]', traits => ['NameInRequest'], request_name => 'assetCompositeModelSummaries', required => 1);
  has AssetCompositeModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetCompositeModelType', required => 1);
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetCompositeModelResponse

=head1 ATTRIBUTES


=head2 ActionDefinitions => ArrayRef[L<Paws::IoTSiteWise::ActionDefinition>]

The available actions for a composite model on this asset.


=head2 B<REQUIRED> AssetCompositeModelDescription => Str

A description for the composite model.


=head2 AssetCompositeModelExternalId => Str

An external ID to assign to the asset model.

If the composite model is a component-based composite model, or one
nested inside a component model, you can only set the external ID using
C<UpdateAssetModelCompositeModel> and specifying the derived ID of the
model or property from the created model it's a part of.


=head2 B<REQUIRED> AssetCompositeModelId => Str

The ID of a composite model on this asset.


=head2 B<REQUIRED> AssetCompositeModelName => Str

The unique, friendly name for the composite model.


=head2 B<REQUIRED> AssetCompositeModelPath => ArrayRef[L<Paws::IoTSiteWise::AssetCompositeModelPathSegment>]

The path to the composite model listing the parent composite models.


=head2 B<REQUIRED> AssetCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetProperty>]

The property definitions of the composite model that was used to create
the asset.


=head2 B<REQUIRED> AssetCompositeModelSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetCompositeModelSummary>]

The list of composite model summaries.


=head2 B<REQUIRED> AssetCompositeModelType => Str

The composite model type. Valid values are C<AWS/ALARM>, C<CUSTOM>, or
C< AWS/L4E_ANOMALY>.


=head2 B<REQUIRED> AssetId => Str

The ID of the asset, in UUID format. This ID uniquely identifies the
asset within IoT SiteWise and can be used with other IoT SiteWise APIs.


=head2 _request_id => Str


=cut


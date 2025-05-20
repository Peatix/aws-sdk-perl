
package Paws::IoTSiteWise::DescribeAssetModelCompositeModelResponse;
  use Moose;
  has ActionDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::ActionDefinition]', traits => ['NameInRequest'], request_name => 'actionDefinitions');
  has AssetModelCompositeModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelDescription', required => 1);
  has AssetModelCompositeModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelExternalId');
  has AssetModelCompositeModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelId', required => 1);
  has AssetModelCompositeModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelName', required => 1);
  has AssetModelCompositeModelPath => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelPathSegment]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelPath', required => 1);
  has AssetModelCompositeModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelProperty]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelProperties', required => 1);
  has AssetModelCompositeModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelSummary]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelSummaries', required => 1);
  has AssetModelCompositeModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelType', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has CompositionDetails => (is => 'ro', isa => 'Paws::IoTSiteWise::CompositionDetails', traits => ['NameInRequest'], request_name => 'compositionDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetModelCompositeModelResponse

=head1 ATTRIBUTES


=head2 ActionDefinitions => ArrayRef[L<Paws::IoTSiteWise::ActionDefinition>]

The available actions for a composite model on this asset model.


=head2 B<REQUIRED> AssetModelCompositeModelDescription => Str

The description for the composite model.


=head2 AssetModelCompositeModelExternalId => Str

The external ID of a composite model on this asset model.


=head2 B<REQUIRED> AssetModelCompositeModelId => Str

The ID of a composite model on this asset model.


=head2 B<REQUIRED> AssetModelCompositeModelName => Str

The unique, friendly name for the composite model.


=head2 B<REQUIRED> AssetModelCompositeModelPath => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelPathSegment>]

The path to the composite model listing the parent composite models.


=head2 B<REQUIRED> AssetModelCompositeModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]

The property definitions of the composite model.


=head2 B<REQUIRED> AssetModelCompositeModelSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelSummary>]

The list of composite model summaries for the composite model.


=head2 B<REQUIRED> AssetModelCompositeModelType => Str

The composite model type. Valid values are C<AWS/ALARM>, C<CUSTOM>, or
C< AWS/L4E_ANOMALY>.


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model, in UUID format.


=head2 CompositionDetails => L<Paws::IoTSiteWise::CompositionDetails>

Metadata for the composition relationship established by using
C<composedAssetModelId> in C<CreateAssetModelCompositeModel>
(https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html).
For instance, an array detailing the path of the composition
relationship for this composite model.


=head2 _request_id => Str


=cut


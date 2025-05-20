
package Paws::IoTSiteWise::DescribeAssetModelResponse;
  use Moose;
  has AssetModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelArn', required => 1);
  has AssetModelCompositeModels => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModel]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModels');
  has AssetModelCompositeModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelSummary]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelSummaries');
  has AssetModelCreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelCreationDate', required => 1);
  has AssetModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelDescription', required => 1);
  has AssetModelExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelExternalId');
  has AssetModelHierarchies => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelHierarchy]', traits => ['NameInRequest'], request_name => 'assetModelHierarchies', required => 1);
  has AssetModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelId', required => 1);
  has AssetModelLastUpdateDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelLastUpdateDate', required => 1);
  has AssetModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelName', required => 1);
  has AssetModelProperties => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelProperty]', traits => ['NameInRequest'], request_name => 'assetModelProperties', required => 1);
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);
  has AssetModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelType');
  has AssetModelVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetModelVersion');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAssetModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the asset model, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}>


=head2 AssetModelCompositeModels => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModel>]

The list of built-in composite models for the asset model, such as
those with those of type C<AWS/ALARMS>.


=head2 AssetModelCompositeModelSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelSummary>]

The list of the immediate child custom composite model summaries for
the asset model.


=head2 B<REQUIRED> AssetModelCreationDate => Str

The date the asset model was created, in Unix epoch time.


=head2 B<REQUIRED> AssetModelDescription => Str

The asset model's description.


=head2 AssetModelExternalId => Str

The external ID of the asset model, if any.


=head2 B<REQUIRED> AssetModelHierarchies => ArrayRef[L<Paws::IoTSiteWise::AssetModelHierarchy>]

A list of asset model hierarchies that each contain a
C<childAssetModelId> and a C<hierarchyId> (named C<id>). A hierarchy
specifies allowed parent/child asset relationships for an asset model.


=head2 B<REQUIRED> AssetModelId => Str

The ID of the asset model, in UUID format.


=head2 B<REQUIRED> AssetModelLastUpdateDate => Str

The date the asset model was last updated, in Unix epoch time.


=head2 B<REQUIRED> AssetModelName => Str

The name of the asset model.


=head2 B<REQUIRED> AssetModelProperties => ArrayRef[L<Paws::IoTSiteWise::AssetModelProperty>]

The list of asset properties for the asset model.

This object doesn't include properties that you define in composite
models. You can find composite model properties in the
C<assetModelCompositeModels> object.


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>

The current status of the asset model, which contains a state and any
error message.


=head2 AssetModelType => Str

The type of asset model.

=over

=item *

B<ASSET_MODEL> E<ndash> (default) An asset model that you can use to
create assets. Can't be included as a component in another asset model.

=item *

B<COMPONENT_MODEL> E<ndash> A reusable component that you can include
in the composite models of other asset models. You can't create assets
directly from this type of asset model.

=back


Valid values are: C<"ASSET_MODEL">, C<"COMPONENT_MODEL">
=head2 AssetModelVersion => Str

The version of the asset model. See Asset model versions
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html)
in the I<IoT SiteWise User Guide>.


=head2 ETag => Str

The entity tag (ETag) is a hash of the retrieved version of the asset
model. It's used to make concurrent updates safely to the resource. See
Optimistic locking for asset model writes
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html)
in the I<IoT SiteWise User Guide>.

See Optimistic locking for asset model writes
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html)
in the I<IoT SiteWise User Guide>.


=head2 _request_id => Str


=cut


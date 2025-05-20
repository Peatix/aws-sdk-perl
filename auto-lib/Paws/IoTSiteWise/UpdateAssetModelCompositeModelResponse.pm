
package Paws::IoTSiteWise::UpdateAssetModelCompositeModelResponse;
  use Moose;
  has AssetModelCompositeModelPath => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelPathSegment]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelPath', required => 1);
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdateAssetModelCompositeModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelCompositeModelPath => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelPathSegment>]

The path to the composite model listing the parent composite models.


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>




=head2 _request_id => Str


=cut


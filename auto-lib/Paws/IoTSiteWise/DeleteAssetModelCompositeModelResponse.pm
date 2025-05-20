
package Paws::IoTSiteWise::DeleteAssetModelCompositeModelResponse;
  use Moose;
  has AssetModelStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::AssetModelStatus', traits => ['NameInRequest'], request_name => 'assetModelStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteAssetModelCompositeModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelStatus => L<Paws::IoTSiteWise::AssetModelStatus>




=head2 _request_id => Str


=cut


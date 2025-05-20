
package Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse;
  use Moose;
  has AssetModelCompositeModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AssetModelCompositeModelSummary]', traits => ['NameInRequest'], request_name => 'assetModelCompositeModelSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetModelCompositeModelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetModelCompositeModelSummaries => ArrayRef[L<Paws::IoTSiteWise::AssetModelCompositeModelSummary>]

A list that summarizes each composite model.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut


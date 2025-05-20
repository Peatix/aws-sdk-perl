
package Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RasterDataCollectionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::RasterDataCollectionMetadata]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListRasterDataCollectionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.


=head2 B<REQUIRED> RasterDataCollectionSummaries => ArrayRef[L<Paws::SageMakerGeospatial::RasterDataCollectionMetadata>]

Contains summary information about the raster data collection.


=head2 _request_id => Str


=cut


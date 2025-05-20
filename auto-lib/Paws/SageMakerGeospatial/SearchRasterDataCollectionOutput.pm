
package Paws::SageMakerGeospatial::SearchRasterDataCollectionOutput;
  use Moose;
  has ApproximateResultCount => (is => 'ro', isa => 'Int', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerGeospatial::ItemSource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::SearchRasterDataCollectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApproximateResultCount => Int

Approximate number of results in the response.


=head2 Items => ArrayRef[L<Paws::SageMakerGeospatial::ItemSource>]

List of items matching the Raster DataCollectionQuery.


=head2 NextToken => Str

If the previous response was truncated, you receive this token. Use it
in your next request to receive the next set of results.


=head2 _request_id => Str


=cut


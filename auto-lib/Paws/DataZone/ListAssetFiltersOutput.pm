
package Paws::DataZone::ListAssetFiltersOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::AssetFilterSummary]', traits => ['NameInRequest'], request_name => 'items', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListAssetFiltersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::DataZone::AssetFilterSummary>]

The results of the C<ListAssetFilters> action.


=head2 NextToken => Str

When the number of asset filters is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of asset filters, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListAssetFilters> to list the next set of asset filters.


=head2 _request_id => Str


=cut


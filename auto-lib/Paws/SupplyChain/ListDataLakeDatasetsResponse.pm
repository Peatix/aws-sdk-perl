
package Paws::SupplyChain::ListDataLakeDatasetsResponse;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::SupplyChain::DataLakeDataset]', traits => ['NameInRequest'], request_name => 'datasets', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataLakeDatasetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datasets => ArrayRef[L<Paws::SupplyChain::DataLakeDataset>]

The list of fetched dataset details.


=head2 NextToken => Str

The pagination token to fetch next page of datasets.


=head2 _request_id => Str


=cut


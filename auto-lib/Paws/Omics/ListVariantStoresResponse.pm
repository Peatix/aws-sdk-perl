
package Paws::Omics::ListVariantStoresResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VariantStores => (is => 'ro', isa => 'ArrayRef[Paws::Omics::VariantStoreItem]', traits => ['NameInRequest'], request_name => 'variantStores');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListVariantStoresResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 VariantStores => ArrayRef[L<Paws::Omics::VariantStoreItem>]

A list of variant stores.


=head2 _request_id => Str


=cut


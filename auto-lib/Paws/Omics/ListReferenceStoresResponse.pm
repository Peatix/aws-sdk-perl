
package Paws::Omics::ListReferenceStoresResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReferenceStores => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ReferenceStoreDetail]', traits => ['NameInRequest'], request_name => 'referenceStores', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReferenceStoresResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> ReferenceStores => ArrayRef[L<Paws::Omics::ReferenceStoreDetail>]

A list of reference stores.


=head2 _request_id => Str


=cut


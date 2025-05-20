
package Paws::Omics::ListSequenceStoresResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SequenceStores => (is => 'ro', isa => 'ArrayRef[Paws::Omics::SequenceStoreDetail]', traits => ['NameInRequest'], request_name => 'sequenceStores', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListSequenceStoresResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> SequenceStores => ArrayRef[L<Paws::Omics::SequenceStoreDetail>]

A list of sequence stores.


=head2 _request_id => Str


=cut



package Paws::Omics::ListAnnotationStoresResponse;
  use Moose;
  has AnnotationStores => (is => 'ro', isa => 'ArrayRef[Paws::Omics::AnnotationStoreItem]', traits => ['NameInRequest'], request_name => 'annotationStores');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationStoresResponse

=head1 ATTRIBUTES


=head2 AnnotationStores => ArrayRef[L<Paws::Omics::AnnotationStoreItem>]

A list of stores.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut


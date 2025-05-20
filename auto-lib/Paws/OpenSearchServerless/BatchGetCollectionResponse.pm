
package Paws::OpenSearchServerless::BatchGetCollectionResponse;
  use Moose;
  has CollectionDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::CollectionDetail]', traits => ['NameInRequest'], request_name => 'collectionDetails' );
  has CollectionErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearchServerless::CollectionErrorDetail]', traits => ['NameInRequest'], request_name => 'collectionErrorDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetCollectionResponse

=head1 ATTRIBUTES


=head2 CollectionDetails => ArrayRef[L<Paws::OpenSearchServerless::CollectionDetail>]

Details about each collection.


=head2 CollectionErrorDetails => ArrayRef[L<Paws::OpenSearchServerless::CollectionErrorDetail>]

Error information for the request.


=head2 _request_id => Str


=cut

1;
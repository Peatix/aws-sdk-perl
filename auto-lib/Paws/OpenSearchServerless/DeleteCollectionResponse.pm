
package Paws::OpenSearchServerless::DeleteCollectionResponse;
  use Moose;
  has DeleteCollectionDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::DeleteCollectionDetail', traits => ['NameInRequest'], request_name => 'deleteCollectionDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::DeleteCollectionResponse

=head1 ATTRIBUTES


=head2 DeleteCollectionDetail => L<Paws::OpenSearchServerless::DeleteCollectionDetail>

Details of the deleted collection.


=head2 _request_id => Str


=cut

1;
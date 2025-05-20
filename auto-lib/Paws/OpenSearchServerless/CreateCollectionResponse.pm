
package Paws::OpenSearchServerless::CreateCollectionResponse;
  use Moose;
  has CreateCollectionDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::CreateCollectionDetail', traits => ['NameInRequest'], request_name => 'createCollectionDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateCollectionResponse

=head1 ATTRIBUTES


=head2 CreateCollectionDetail => L<Paws::OpenSearchServerless::CreateCollectionDetail>

Details about the collection.


=head2 _request_id => Str


=cut

1;
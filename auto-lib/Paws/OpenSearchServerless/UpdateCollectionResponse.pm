
package Paws::OpenSearchServerless::UpdateCollectionResponse;
  use Moose;
  has UpdateCollectionDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::UpdateCollectionDetail', traits => ['NameInRequest'], request_name => 'updateCollectionDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateCollectionResponse

=head1 ATTRIBUTES


=head2 UpdateCollectionDetail => L<Paws::OpenSearchServerless::UpdateCollectionDetail>

Details about the updated collection.


=head2 _request_id => Str


=cut

1;
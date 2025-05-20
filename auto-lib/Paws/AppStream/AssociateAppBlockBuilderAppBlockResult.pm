
package Paws::AppStream::AssociateAppBlockBuilderAppBlockResult;
  use Moose;
  has AppBlockBuilderAppBlockAssociation => (is => 'ro', isa => 'Paws::AppStream::AppBlockBuilderAppBlockAssociation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::AssociateAppBlockBuilderAppBlockResult

=head1 ATTRIBUTES


=head2 AppBlockBuilderAppBlockAssociation => L<Paws::AppStream::AppBlockBuilderAppBlockAssociation>

The list of app block builders associated with app blocks.


=head2 _request_id => Str


=cut

1;
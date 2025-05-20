
package Paws::Glue::ListEntitiesResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Entity]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListEntitiesResponse

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[L<Paws::Glue::Entity>]

A list of C<Entity> objects.


=head2 NextToken => Str

A continuation token, present if the current segment is not the last.


=head2 _request_id => Str


=cut

1;
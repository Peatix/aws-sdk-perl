
package Paws::CleanRooms::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::CleanRooms::TagMap>

A map of objects specifying each key name and value.


=head2 _request_id => Str


=cut


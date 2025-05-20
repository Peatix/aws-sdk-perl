
package Paws::ControlTower::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ControlTower::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::ControlTower::TagMap>

A list of tags, as C<key:value> strings.


=head2 _request_id => Str


=cut


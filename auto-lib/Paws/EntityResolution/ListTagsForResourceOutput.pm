
package Paws::EntityResolution::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut


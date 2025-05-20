
package Paws::SecurityIR::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SecurityIR::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::SecurityIR::TagMap>

Response element for ListTagsForResource providing content for each
configured tag.


=head2 _request_id => Str


=cut


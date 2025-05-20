
package Paws::Evidently::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Evidently::TagMap>

The list of tag keys and values associated with the resource you
specified.


=head2 _request_id => Str


=cut


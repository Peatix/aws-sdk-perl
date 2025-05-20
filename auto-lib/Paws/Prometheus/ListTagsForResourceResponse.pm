
package Paws::Prometheus::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Prometheus::TagMap>

The list of tag keys and values associated with the resource.


=head2 _request_id => Str


=cut


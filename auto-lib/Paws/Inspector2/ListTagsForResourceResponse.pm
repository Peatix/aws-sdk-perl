
package Paws::Inspector2::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Inspector2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Inspector2::TagMap>

The tags associated with the resource.


=head2 _request_id => Str


=cut


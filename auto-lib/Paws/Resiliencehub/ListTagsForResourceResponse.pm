
package Paws::Resiliencehub::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Resiliencehub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Resiliencehub::TagMap>

Tags assigned to the resource. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key/value pair.


=head2 _request_id => Str


=cut


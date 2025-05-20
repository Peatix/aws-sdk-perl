
package Paws::Repostspace::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Repostspace::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Repostspace::Tags>

The list of tags that are associated with the resource.


=head2 _request_id => Str


=cut


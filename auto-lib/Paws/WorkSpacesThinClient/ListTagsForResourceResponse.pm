
package Paws::WorkSpacesThinClient::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::WorkSpacesThinClient::TagsMap>

A map of the key-value pairs for the tag or tags assigned to the
specified resource.


=head2 _request_id => Str


=cut


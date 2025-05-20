
package Paws::Drs::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Drs::TagsMap>

The tags of the requested resource.


=head2 _request_id => Str


=cut


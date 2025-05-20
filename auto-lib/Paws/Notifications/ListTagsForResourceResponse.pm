
package Paws::Notifications::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Notifications::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Notifications::TagMap>

A list of tags for the specified ARN.


=head2 _request_id => Str


=cut


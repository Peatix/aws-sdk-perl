
package Paws::Pipes::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Pipes::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Pipes::TagMap>

The list of key-value pairs to associate with the pipe.


=head2 _request_id => Str


=cut


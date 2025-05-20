
package Paws::ConnectCases::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut


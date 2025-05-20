
package Paws::Keyspaces::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to specify where to start paginating. This is the C<NextToken>
from a previously truncated response.


=head2 Tags => ArrayRef[L<Paws::Keyspaces::Tag>]

A list of tags.


=head2 _request_id => Str


=cut

1;
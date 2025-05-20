
package Paws::B2bi::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::B2bi::Tag>]

Returns the key-value pairs assigned to ARNs that you can use to group
and search for resources by type. You can attach this metadata to
resources (capabilities, partnerships, and so on) for any purpose.


=head2 _request_id => Str


=cut

1;
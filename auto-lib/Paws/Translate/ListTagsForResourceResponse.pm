
package Paws::Translate::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Translate::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Translate::Tag>]

Tags associated with the Amazon Translate resource being queried. A tag
is a key-value pair that adds as a metadata to a resource used by
Amazon Translate. For example, a tag with "Sales" as the key might be
added to a resource to indicate its use by the sales department.


=head2 _request_id => Str


=cut

1;
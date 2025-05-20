
package Paws::Invoicing::ListTagsForResourceResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Invoicing::ResourceTag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::Invoicing::ResourceTag>]

Adds a tag to a resource.


=head2 _request_id => Str


=cut

1;
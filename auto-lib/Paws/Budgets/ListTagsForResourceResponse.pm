
package Paws::Budgets::ListTagsForResourceResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::ResourceTag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::Budgets::ResourceTag>]

The tags associated with the resource.


=head2 _request_id => Str


=cut

1;
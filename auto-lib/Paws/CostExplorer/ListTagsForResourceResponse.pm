
package Paws::CostExplorer::ListTagsForResourceResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ResourceTag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::CostExplorer::ResourceTag>]

A list of tag key value pairs that are associated with the resource.


=head2 _request_id => Str


=cut

1;
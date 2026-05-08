
package Paws::OpenSearch::DescribeDomainNodesResponse;
  use Moose;
  has DomainNodesStatusList => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::DomainNodesStatus]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeDomainNodesResponse

=head1 ATTRIBUTES


=head2 DomainNodesStatusList => ArrayRef[L<Paws::OpenSearch::DomainNodesStatus>]

Contains nodes information list C<DomainNodesStatusList> with details
about the all nodes on the requested domain.


=head2 _request_id => Str


=cut


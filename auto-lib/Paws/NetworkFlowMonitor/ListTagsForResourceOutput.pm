
package Paws::NetworkFlowMonitor::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::NetworkFlowMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::NetworkFlowMonitor::TagMap>

The tags for a resource.


=head2 _request_id => Str


=cut



package Paws::NetworkMonitor::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::NetworkMonitor::TagMap>

Lists the tags assigned to the resource.


=head2 _request_id => Str


=cut



package Paws::ServiceDiscovery::DiscoverInstancesRevisionResponse;
  use Moose;
  has InstancesRevision => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DiscoverInstancesRevisionResponse

=head1 ATTRIBUTES


=head2 InstancesRevision => Int

The increasing revision associated to the response Instances list. If a
new instance is registered or deregistered, the C<InstancesRevision>
updates. The health status updates don't update C<InstancesRevision>.


=head2 _request_id => Str


=cut

1;
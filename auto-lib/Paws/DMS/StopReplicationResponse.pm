
package Paws::DMS::StopReplicationResponse;
  use Moose;
  has Replication => (is => 'ro', isa => 'Paws::DMS::Replication');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StopReplicationResponse

=head1 ATTRIBUTES


=head2 Replication => L<Paws::DMS::Replication>

The replication that DMS stopped.


=head2 _request_id => Str


=cut

1;
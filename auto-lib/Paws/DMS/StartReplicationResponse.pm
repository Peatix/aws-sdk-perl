
package Paws::DMS::StartReplicationResponse;
  use Moose;
  has Replication => (is => 'ro', isa => 'Paws::DMS::Replication');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationResponse

=head1 ATTRIBUTES


=head2 Replication => L<Paws::DMS::Replication>

The replication that DMS started.


=head2 _request_id => Str


=cut

1;
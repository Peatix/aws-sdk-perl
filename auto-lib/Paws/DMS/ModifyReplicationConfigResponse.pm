
package Paws::DMS::ModifyReplicationConfigResponse;
  use Moose;
  has ReplicationConfig => (is => 'ro', isa => 'Paws::DMS::ReplicationConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationConfigResponse

=head1 ATTRIBUTES


=head2 ReplicationConfig => L<Paws::DMS::ReplicationConfig>

Information about the serverless replication config that was modified.


=head2 _request_id => Str


=cut

1;
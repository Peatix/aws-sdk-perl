
package Paws::DMS::DeleteReplicationConfigResponse;
  use Moose;
  has ReplicationConfig => (is => 'ro', isa => 'Paws::DMS::ReplicationConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteReplicationConfigResponse

=head1 ATTRIBUTES


=head2 ReplicationConfig => L<Paws::DMS::ReplicationConfig>

Configuration parameters returned for the DMS Serverless replication
after it is deleted.


=head2 _request_id => Str


=cut

1;
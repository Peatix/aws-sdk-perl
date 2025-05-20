
package Paws::DMS::CreateReplicationConfigResponse;
  use Moose;
  has ReplicationConfig => (is => 'ro', isa => 'Paws::DMS::ReplicationConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationConfigResponse

=head1 ATTRIBUTES


=head2 ReplicationConfig => L<Paws::DMS::ReplicationConfig>

Configuration parameters returned from the DMS Serverless replication
after it is created.


=head2 _request_id => Str


=cut

1;
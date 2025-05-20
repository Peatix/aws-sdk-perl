
package Paws::ElastiCache::DeleteServerlessCacheSnapshotResponse;
  use Moose;
  has ServerlessCacheSnapshot => (is => 'ro', isa => 'Paws::ElastiCache::ServerlessCacheSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteServerlessCacheSnapshotResponse

=head1 ATTRIBUTES


=head2 ServerlessCacheSnapshot => L<Paws::ElastiCache::ServerlessCacheSnapshot>

The snapshot to be deleted. Available for Valkey, Redis OSS and
Serverless Memcached only.


=head2 _request_id => Str


=cut


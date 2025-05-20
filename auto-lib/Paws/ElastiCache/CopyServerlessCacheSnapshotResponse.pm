
package Paws::ElastiCache::CopyServerlessCacheSnapshotResponse;
  use Moose;
  has ServerlessCacheSnapshot => (is => 'ro', isa => 'Paws::ElastiCache::ServerlessCacheSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CopyServerlessCacheSnapshotResponse

=head1 ATTRIBUTES


=head2 ServerlessCacheSnapshot => L<Paws::ElastiCache::ServerlessCacheSnapshot>

The response for the attempt to copy the serverless cache snapshot.
Available for Valkey, Redis OSS and Serverless Memcached only.


=head2 _request_id => Str


=cut


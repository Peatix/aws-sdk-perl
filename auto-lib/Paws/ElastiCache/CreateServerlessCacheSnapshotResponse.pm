
package Paws::ElastiCache::CreateServerlessCacheSnapshotResponse;
  use Moose;
  has ServerlessCacheSnapshot => (is => 'ro', isa => 'Paws::ElastiCache::ServerlessCacheSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateServerlessCacheSnapshotResponse

=head1 ATTRIBUTES


=head2 ServerlessCacheSnapshot => L<Paws::ElastiCache::ServerlessCacheSnapshot>

The state of a serverless cache snapshot at a specific point in time,
to the millisecond. Available for Valkey, Redis OSS and Serverless
Memcached only.


=head2 _request_id => Str


=cut


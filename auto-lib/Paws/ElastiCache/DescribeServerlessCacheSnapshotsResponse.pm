
package Paws::ElastiCache::DescribeServerlessCacheSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerlessCacheSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ServerlessCacheSnapshot]', request_name => 'ServerlessCacheSnapshot', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeServerlessCacheSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional marker returned from a prior request to support pagination
of results from this operation. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by max-results. Available for Valkey, Redis OSS and
Serverless Memcached only.


=head2 ServerlessCacheSnapshots => ArrayRef[L<Paws::ElastiCache::ServerlessCacheSnapshot>]

The serverless caches snapshots associated with a given description
request. Available for Valkey, Redis OSS and Serverless Memcached only.


=head2 _request_id => Str


=cut



package Paws::ElastiCache::DescribeServerlessCachesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerlessCaches => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ServerlessCache]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeServerlessCachesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional marker returned from a prior request to support pagination
of results from this operation. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by MaxResults.


=head2 ServerlessCaches => ArrayRef[L<Paws::ElastiCache::ServerlessCache>]

The serverless caches associated with a given description request.


=head2 _request_id => Str


=cut


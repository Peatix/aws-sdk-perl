
package Paws::ElastiCache::DescribeServerlessCacheSnapshots;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerlessCacheName => (is => 'ro', isa => 'Str');
  has ServerlessCacheSnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServerlessCacheSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DescribeServerlessCacheSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServerlessCacheSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeServerlessCacheSnapshots - Arguments for method DescribeServerlessCacheSnapshots on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServerlessCacheSnapshots on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeServerlessCacheSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServerlessCacheSnapshots.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeServerlessCacheSnapshotsResponse =
      $elasticache->DescribeServerlessCacheSnapshots(
      MaxResults                  => 1,             # OPTIONAL
      NextToken                   => 'MyString',    # OPTIONAL
      ServerlessCacheName         => 'MyString',    # OPTIONAL
      ServerlessCacheSnapshotName => 'MyString',    # OPTIONAL
      SnapshotType                => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeServerlessCacheSnapshotsResponse->NextToken;
    my $ServerlessCacheSnapshots =
      $DescribeServerlessCacheSnapshotsResponse->ServerlessCacheSnapshots;

# Returns a L<Paws::ElastiCache::DescribeServerlessCacheSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeServerlessCacheSnapshots>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of records to include in the response. If more
records exist than the specified max-results value, a market is
included in the response so that remaining results can be retrieved.
Available for Valkey, Redis OSS and Serverless Memcached only.The
default is 50. The Validation Constraints are a maximum of 50.



=head2 NextToken => Str

An optional marker returned from a prior request to support pagination
of results from this operation. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by max-results. Available for Valkey, Redis OSS and
Serverless Memcached only.



=head2 ServerlessCacheName => Str

The identifier of serverless cache. If this parameter is specified,
only snapshots associated with that specific serverless cache are
described. Available for Valkey, Redis OSS and Serverless Memcached
only.



=head2 ServerlessCacheSnapshotName => Str

The identifier of the serverless cacheE<rsquo>s snapshot. If this
parameter is specified, only this snapshot is described. Available for
Valkey, Redis OSS and Serverless Memcached only.



=head2 SnapshotType => Str

The type of snapshot that is being described. Available for Valkey,
Redis OSS and Serverless Memcached only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServerlessCacheSnapshots in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


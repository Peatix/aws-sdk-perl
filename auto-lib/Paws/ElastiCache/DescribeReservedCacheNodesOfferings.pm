
package Paws::ElastiCache::DescribeReservedCacheNodesOfferings;
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ReservedCacheNodesOfferingMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferingsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeReservedCacheNodesOfferings - Arguments for method DescribeReservedCacheNodesOfferings on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedCacheNodesOfferings on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeReservedCacheNodesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedCacheNodesOfferings.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    # DescribeReseredCacheNodeOfferings
    # Lists available reserved cache node offerings.
    my $ReservedCacheNodesOfferingMessage =
      $elasticache->DescribeReservedCacheNodesOfferings( 'MaxRecords' => 20 );

    # Results:
    my $Marker = $ReservedCacheNodesOfferingMessage->Marker;
    my $ReservedCacheNodesOfferings =
      $ReservedCacheNodesOfferingMessage->ReservedCacheNodesOfferings;

 # Returns a L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage> object.
 # DescribeReseredCacheNodeOfferings
 # Lists available reserved cache node offerings for cache.r3.large nodes with a
 # 3 year commitment.
    my $ReservedCacheNodesOfferingMessage =
      $elasticache->DescribeReservedCacheNodesOfferings(
      'CacheNodeType'                => 'cache.r3.large',
      'Duration'                     => 3,
      'MaxRecords'                   => 25,
      'OfferingType'                 => 'Light Utilization',
      'ReservedCacheNodesOfferingId' => ''
      );

    # Results:
    my $Marker = $ReservedCacheNodesOfferingMessage->Marker;
    my $ReservedCacheNodesOfferings =
      $ReservedCacheNodesOfferingMessage->ReservedCacheNodesOfferings;

    # Returns a L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage> object.
    # DescribeReseredCacheNodeOfferings
    # Lists available reserved cache node offerings.
    my $ReservedCacheNodesOfferingMessage =
      $elasticache->DescribeReservedCacheNodesOfferings(
      'CacheNodeType'                => '',
      'Duration'                     => '',
      'Marker'                       => '',
      'MaxRecords'                   => 25,
      'OfferingType'                 => '',
      'ProductDescription'           => '',
      'ReservedCacheNodesOfferingId' => '438012d3-4052-4cc7-b2e3-8d3372e0e706'
      );

    # Results:
    my $Marker = $ReservedCacheNodesOfferingMessage->Marker;
    my $ReservedCacheNodesOfferings =
      $ReservedCacheNodesOfferingMessage->ReservedCacheNodesOfferings;

    # Returns a L<Paws::ElastiCache::ReservedCacheNodesOfferingMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeReservedCacheNodesOfferings>

=head1 ATTRIBUTES


=head2 CacheNodeType => Str

The cache node type filter value. Use this parameter to show only the
available offerings matching the specified cache node type.

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<M7g node types>: C<cache.m7g.large>, C<cache.m7g.xlarge>,
C<cache.m7g.2xlarge>, C<cache.m7g.4xlarge>, C<cache.m7g.8xlarge>,
C<cache.m7g.12xlarge>, C<cache.m7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<M6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.m6g.large>, C<cache.m6g.xlarge>, C<cache.m6g.2xlarge>,
C<cache.m6g.4xlarge>, C<cache.m6g.8xlarge>, C<cache.m6g.12xlarge>,
C<cache.m6g.16xlarge>

B<M5 node types:> C<cache.m5.large>, C<cache.m5.xlarge>,
C<cache.m5.2xlarge>, C<cache.m5.4xlarge>, C<cache.m5.12xlarge>,
C<cache.m5.24xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

B<T4g node types> (available only for Redis OSS engine version 5.0.6
onward and Memcached engine version 1.5.16 onward): C<cache.t4g.micro>,
C<cache.t4g.small>, C<cache.t4g.medium>

B<T3 node types:> C<cache.t3.micro>, C<cache.t3.small>,
C<cache.t3.medium>

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R7g node types>: C<cache.r7g.large>, C<cache.r7g.xlarge>,
C<cache.r7g.2xlarge>, C<cache.r7g.4xlarge>, C<cache.r7g.8xlarge>,
C<cache.r7g.12xlarge>, C<cache.r7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<R6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.r6g.large>, C<cache.r6g.xlarge>, C<cache.r6g.2xlarge>,
C<cache.r6g.4xlarge>, C<cache.r6g.8xlarge>, C<cache.r6g.12xlarge>,
C<cache.r6g.16xlarge>

B<R5 node types:> C<cache.r5.large>, C<cache.r5.xlarge>,
C<cache.r5.2xlarge>, C<cache.r5.4xlarge>, C<cache.r5.12xlarge>,
C<cache.r5.24xlarge>

B<R4 node types:> C<cache.r4.large>, C<cache.r4.xlarge>,
C<cache.r4.2xlarge>, C<cache.r4.4xlarge>, C<cache.r4.8xlarge>,
C<cache.r4.16xlarge>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=back

=back

B<Additional node type info>

=over

=item *

All current generation instance types are created in Amazon VPC by
default.

=item *

Valkey or Redis OSS append-only files (AOF) are not supported for T1 or
T2 instances.

=item *

Valkey or Redis OSS Multi-AZ with automatic failover is not supported
on T1 instances.

=item *

The configuration variables C<appendonly> and C<appendfsync> are not
supported on Valkey, or on Redis OSS version 2.8.22 and later.

=back




=head2 Duration => Str

Duration filter value, specified in years or seconds. Use this
parameter to show only reservations for a given duration.

Valid Values: C<1 | 3 | 31536000 | 94608000>



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a marker is
included in the response so that the remaining results can be
retrieved.

Default: 100

Constraints: minimum 20; maximum 100.



=head2 OfferingType => Str

The offering type filter value. Use this parameter to show only the
available offerings matching the specified offering type.

Valid Values: C<"Light Utilization"|"Medium Utilization"|"Heavy
Utilization" |"All Upfront"|"Partial Upfront"| "No Upfront">



=head2 ProductDescription => Str

The product description filter value. Use this parameter to show only
the available offerings matching the specified product description.



=head2 ReservedCacheNodesOfferingId => Str

The offering identifier filter value. Use this parameter to show only
the available offering that matches the specified reservation
identifier.

Example: C<438012d3-4052-4cc7-b2e3-8d3372e0e706>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedCacheNodesOfferings in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::ElastiCache::CreateServerlessCache;
  use Moose;
  has CacheUsageLimits => (is => 'ro', isa => 'Paws::ElastiCache::CacheUsageLimits');
  has DailySnapshotTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerlessCacheName => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotArnsToRestore => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has UserGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServerlessCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateServerlessCacheResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateServerlessCacheResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateServerlessCache - Arguments for method CreateServerlessCache on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServerlessCache on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateServerlessCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServerlessCache.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CreateServerlessCacheResponse = $elasticache->CreateServerlessCache(
      Engine              => 'MyString',
      ServerlessCacheName => 'MyString',
      CacheUsageLimits    => {
        DataStorage => {
          Unit    => 'GB',    # values: GB
          Maximum => 1,       # OPTIONAL
          Minimum => 1,       # OPTIONAL
        },    # OPTIONAL
        ECPUPerSecond => {
          Maximum => 1,    # OPTIONAL
          Minimum => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DailySnapshotTime      => 'MyString',             # OPTIONAL
      Description            => 'MyString',             # OPTIONAL
      KmsKeyId               => 'MyString',             # OPTIONAL
      MajorEngineVersion     => 'MyString',             # OPTIONAL
      SecurityGroupIds       => [ 'MyString', ... ],    # OPTIONAL
      SnapshotArnsToRestore  => [ 'MyString', ... ],    # OPTIONAL
      SnapshotRetentionLimit => 1,                      # OPTIONAL
      SubnetIds              => [ 'MyString', ... ],    # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                # OPTIONAL
      UserGroupId => 'MyString',                        # OPTIONAL
    );

    # Results:
    my $ServerlessCache = $CreateServerlessCacheResponse->ServerlessCache;

    # Returns a L<Paws::ElastiCache::CreateServerlessCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateServerlessCache>

=head1 ATTRIBUTES


=head2 CacheUsageLimits => L<Paws::ElastiCache::CacheUsageLimits>

Sets the cache usage limits for storage and ElastiCache Processing
Units for the cache.



=head2 DailySnapshotTime => Str

The daily time that snapshots will be created from the new serverless
cache. By default this number is populated with 0, i.e. no snapshots
will be created on an automatic daily basis. Available for Valkey,
Redis OSS and Serverless Memcached only.



=head2 Description => Str

User-provided description for the serverless cache. The default is
NULL, i.e. if no description is provided then an empty string will be
returned. The maximum length is 255 characters.



=head2 B<REQUIRED> Engine => Str

The name of the cache engine to be used for creating the serverless
cache.



=head2 KmsKeyId => Str

ARN of the customer managed key for encrypting the data at rest. If no
KMS key is provided, a default service key is used.



=head2 MajorEngineVersion => Str

The version of the cache engine that will be used to create the
serverless cache.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of the one or more VPC security groups to be associated with the
serverless cache. The security group will authorize traffic access for
the VPC end-point (private-link). If no other information is given this
will be the VPCE<rsquo>s Default Security Group that is associated with
the cluster VPC end-point.



=head2 B<REQUIRED> ServerlessCacheName => Str

User-provided identifier for the serverless cache. This parameter is
stored as a lowercase string.



=head2 SnapshotArnsToRestore => ArrayRef[Str|Undef]

The ARN(s) of the snapshot that the new serverless cache will be
created from. Available for Valkey, Redis OSS and Serverless Memcached
only.



=head2 SnapshotRetentionLimit => Int

The number of snapshots that will be retained for the serverless cache
that is being created. As new snapshots beyond this limit are added,
the oldest snapshots will be deleted on a rolling basis. Available for
Valkey, Redis OSS and Serverless Memcached only.



=head2 SubnetIds => ArrayRef[Str|Undef]

A list of the identifiers of the subnets where the VPC endpoint for the
serverless cache will be deployed. All the subnetIds must belong to the
same VPC.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

The list of tags (key, value) pairs to be added to the serverless cache
resource. Default is NULL.



=head2 UserGroupId => Str

The identifier of the UserGroup to be associated with the serverless
cache. Available for Valkey and Redis OSS only. Default is NULL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServerlessCache in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


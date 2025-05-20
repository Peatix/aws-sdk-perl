
package Paws::ElastiCache::ModifyServerlessCache;
  use Moose;
  has CacheUsageLimits => (is => 'ro', isa => 'Paws::ElastiCache::CacheUsageLimits');
  has DailySnapshotTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has RemoveUserGroup => (is => 'ro', isa => 'Bool');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerlessCacheName => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has UserGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyServerlessCache');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyServerlessCacheResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyServerlessCacheResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyServerlessCache - Arguments for method ModifyServerlessCache on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyServerlessCache on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyServerlessCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyServerlessCache.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyServerlessCacheResponse = $elasticache->ModifyServerlessCache(
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
      Engine                 => 'MyString',             # OPTIONAL
      MajorEngineVersion     => 'MyString',             # OPTIONAL
      RemoveUserGroup        => 1,                      # OPTIONAL
      SecurityGroupIds       => [ 'MyString', ... ],    # OPTIONAL
      SnapshotRetentionLimit => 1,                      # OPTIONAL
      UserGroupId            => 'MyString',             # OPTIONAL
    );

    # Results:
    my $ServerlessCache = $ModifyServerlessCacheResponse->ServerlessCache;

    # Returns a L<Paws::ElastiCache::ModifyServerlessCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyServerlessCache>

=head1 ATTRIBUTES


=head2 CacheUsageLimits => L<Paws::ElastiCache::CacheUsageLimits>

Modify the cache usage limit for the serverless cache.



=head2 DailySnapshotTime => Str

The daily time during which Elasticache begins taking a daily snapshot
of the serverless cache. Available for Valkey, Redis OSS and Serverless
Memcached only. The default is NULL, i.e. the existing snapshot time
configured for the cluster is not removed.



=head2 Description => Str

User provided description for the serverless cache. Default = NULL,
i.e. the existing description is not removed/modified. The description
has a maximum length of 255 characters.



=head2 Engine => Str

Modifies the engine listed in a serverless cache request. The options
are redis, memcached or valkey.



=head2 MajorEngineVersion => Str

Modifies the engine vesion listed in a serverless cache request.



=head2 RemoveUserGroup => Bool

The identifier of the UserGroup to be removed from association with the
Valkey and Redis OSS serverless cache. Available for Valkey and Redis
OSS only. Default is NULL.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The new list of VPC security groups to be associated with the
serverless cache. Populating this list means the current VPC security
groups will be removed. This security group is used to authorize
traffic access for the VPC end-point (private-link). Default = NULL -
the existing list of VPC security groups is not removed.



=head2 B<REQUIRED> ServerlessCacheName => Str

User-provided identifier for the serverless cache to be modified.



=head2 SnapshotRetentionLimit => Int

The number of days for which Elasticache retains automatic snapshots
before deleting them. Available for Valkey, Redis OSS and Serverless
Memcached only. Default = NULL, i.e. the existing
snapshot-retention-limit will not be removed or modified. The maximum
value allowed is 35 days.



=head2 UserGroupId => Str

The identifier of the UserGroup to be associated with the serverless
cache. Available for Valkey and Redis OSS only. Default is NULL - the
existing UserGroup is not removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyServerlessCache in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Omics::GetRunCacheResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CacheBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBehavior');
  has CacheBucketOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheBucketOwnerId');
  has CacheS3Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheS3Uri');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRunCacheResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique resource identifier for the run cache.


=head2 CacheBehavior => Str

The default cache behavior for runs using this cache.

Valid values are: C<"CACHE_ON_FAILURE">, C<"CACHE_ALWAYS">
=head2 CacheBucketOwnerId => Str

The identifier of the bucket owner.


=head2 CacheS3Uri => Str

The S3 URI where the cache data is stored.


=head2 CreationTime => Str

Creation time of the run cache (an ISO 8601 formatted string).


=head2 Description => Str

The run cache description.


=head2 Id => Str

The run cache ID.


=head2 Name => Str

The run cache name.


=head2 Status => Str

The run cache status.

Valid values are: C<"ACTIVE">, C<"DELETED">, C<"FAILED">
=head2 Tags => L<Paws::Omics::TagMap>

The tags associated with the run cache.


=head2 _request_id => Str


=cut


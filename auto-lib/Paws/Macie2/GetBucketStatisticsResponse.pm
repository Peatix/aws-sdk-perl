
package Paws::Macie2::GetBucketStatisticsResponse;
  use Moose;
  has BucketCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bucketCount');
  has BucketCountByEffectivePermission => (is => 'ro', isa => 'Paws::Macie2::BucketCountByEffectivePermission', traits => ['NameInRequest'], request_name => 'bucketCountByEffectivePermission');
  has BucketCountByEncryptionType => (is => 'ro', isa => 'Paws::Macie2::BucketCountByEncryptionType', traits => ['NameInRequest'], request_name => 'bucketCountByEncryptionType');
  has BucketCountByObjectEncryptionRequirement => (is => 'ro', isa => 'Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads', traits => ['NameInRequest'], request_name => 'bucketCountByObjectEncryptionRequirement');
  has BucketCountBySharedAccessType => (is => 'ro', isa => 'Paws::Macie2::BucketCountBySharedAccessType', traits => ['NameInRequest'], request_name => 'bucketCountBySharedAccessType');
  has BucketStatisticsBySensitivity => (is => 'ro', isa => 'Paws::Macie2::BucketStatisticsBySensitivity', traits => ['NameInRequest'], request_name => 'bucketStatisticsBySensitivity');
  has ClassifiableObjectCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'classifiableObjectCount');
  has ClassifiableSizeInBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'classifiableSizeInBytes');
  has LastUpdated => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdated');
  has ObjectCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'objectCount');
  has SizeInBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sizeInBytes');
  has SizeInBytesCompressed => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sizeInBytesCompressed');
  has UnclassifiableObjectCount => (is => 'ro', isa => 'Paws::Macie2::ObjectLevelStatistics', traits => ['NameInRequest'], request_name => 'unclassifiableObjectCount');
  has UnclassifiableObjectSizeInBytes => (is => 'ro', isa => 'Paws::Macie2::ObjectLevelStatistics', traits => ['NameInRequest'], request_name => 'unclassifiableObjectSizeInBytes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetBucketStatisticsResponse

=head1 ATTRIBUTES


=head2 BucketCount => Int

The total number of buckets.


=head2 BucketCountByEffectivePermission => L<Paws::Macie2::BucketCountByEffectivePermission>

The total number of buckets that are publicly accessible due to a
combination of permissions settings for each bucket.


=head2 BucketCountByEncryptionType => L<Paws::Macie2::BucketCountByEncryptionType>

The total number of buckets whose settings do or don't specify default
server-side encryption behavior for objects that are added to the
buckets.


=head2 BucketCountByObjectEncryptionRequirement => L<Paws::Macie2::BucketCountPolicyAllowsUnencryptedObjectUploads>

The total number of buckets whose bucket policies do or don't require
server-side encryption of objects when objects are added to the
buckets.


=head2 BucketCountBySharedAccessType => L<Paws::Macie2::BucketCountBySharedAccessType>

The total number of buckets that are or aren't shared with other Amazon
Web Services accounts, Amazon CloudFront origin access identities
(OAIs), or CloudFront origin access controls (OACs).


=head2 BucketStatisticsBySensitivity => L<Paws::Macie2::BucketStatisticsBySensitivity>

The aggregated sensitive data discovery statistics for the buckets. If
automated sensitive data discovery is currently disabled for your
account, the value for most statistics is 0.


=head2 ClassifiableObjectCount => Int

The total number of objects that Amazon Macie can analyze in the
buckets. These objects use a supported storage class and have a file
name extension for a supported file or storage format.


=head2 ClassifiableSizeInBytes => Int

The total storage size, in bytes, of all the objects that Amazon Macie
can analyze in the buckets. These objects use a supported storage class
and have a file name extension for a supported file or storage format.

If versioning is enabled for any of the buckets, this value is based on
the size of the latest version of each applicable object in the
buckets. This value doesn't reflect the storage size of all versions of
all applicable objects in the buckets.


=head2 LastUpdated => Str

The date and time, in UTC and extended ISO 8601 format, when Amazon
Macie most recently retrieved bucket or object metadata from Amazon S3
for the buckets.


=head2 ObjectCount => Int

The total number of objects in the buckets.


=head2 SizeInBytes => Int

The total storage size, in bytes, of the buckets.

If versioning is enabled for any of the buckets, this value is based on
the size of the latest version of each object in the buckets. This
value doesn't reflect the storage size of all versions of the objects
in the buckets.


=head2 SizeInBytesCompressed => Int

The total storage size, in bytes, of the objects that are compressed
(.gz, .gzip, .zip) files in the buckets.

If versioning is enabled for any of the buckets, this value is based on
the size of the latest version of each applicable object in the
buckets. This value doesn't reflect the storage size of all versions of
the applicable objects in the buckets.


=head2 UnclassifiableObjectCount => L<Paws::Macie2::ObjectLevelStatistics>

The total number of objects that Amazon Macie can't analyze in the
buckets. These objects don't use a supported storage class or don't
have a file name extension for a supported file or storage format.


=head2 UnclassifiableObjectSizeInBytes => L<Paws::Macie2::ObjectLevelStatistics>

The total storage size, in bytes, of the objects that Amazon Macie
can't analyze in the buckets. These objects don't use a supported
storage class or don't have a file name extension for a supported file
or storage format.


=head2 _request_id => Str


=cut


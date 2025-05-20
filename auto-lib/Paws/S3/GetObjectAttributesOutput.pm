
package Paws::S3::GetObjectAttributesOutput;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Paws::S3::Checksum');
  has DeleteMarker => (is => 'ro', isa => 'Bool', header_name => 'x-amz-delete-marker', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str', header_name => 'Last-Modified', traits => ['ParamInHeader']);
  has ObjectParts => (is => 'ro', isa => 'Paws::S3::GetObjectAttributesParts');
  has ObjectSize => (is => 'ro', isa => 'Int');
  has RequestCharged => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-charged', traits => ['ParamInHeader']);
  has StorageClass => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str', header_name => 'x-amz-version-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAttributesOutput

=head1 ATTRIBUTES


=head2 Checksum => L<Paws::S3::Checksum>

The checksum or digest of the object.



=head2 DeleteMarker => Bool

Specifies whether the object retrieved was (C<true>) or was not
(C<false>) a delete marker. If C<false>, this response header does not
appear in the response. To learn more about delete markers, see Working
with delete markers
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html).

This functionality is not supported for directory buckets.



=head2 ETag => Str

An ETag is an opaque identifier assigned by a web server to a specific
version of a resource found at a URL.



=head2 LastModified => Str

Date and time when the object was last modified.



=head2 ObjectParts => L<Paws::S3::GetObjectAttributesParts>

A collection of parts associated with a multipart upload.



=head2 ObjectSize => Int

The size of the object in bytes.



=head2 RequestCharged => Str



Valid values are: C<"requester">

=head2 StorageClass => Str

Provides the storage class information of the object. Amazon S3 returns
this header for all objects except for S3 Standard storage class
objects.

For more information, see Storage Classes
(https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).

B<Directory buckets> - Directory buckets only support
C<EXPRESS_ONEZONE> (the S3 Express One Zone storage class) in
Availability Zones and C<ONEZONE_IA> (the S3 One Zone-Infrequent Access
storage class) in Dedicated Local Zones.

Valid values are: C<"STANDARD">, C<"REDUCED_REDUNDANCY">, C<"STANDARD_IA">, C<"ONEZONE_IA">, C<"INTELLIGENT_TIERING">, C<"GLACIER">, C<"DEEP_ARCHIVE">, C<"OUTPOSTS">, C<"GLACIER_IR">, C<"SNOW">, C<"EXPRESS_ONEZONE">

=head2 VersionId => Str

The version ID of the object.

This functionality is not supported for directory buckets.




=cut


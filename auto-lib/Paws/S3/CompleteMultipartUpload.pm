
package Paws::S3::CompleteMultipartUpload;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumCRC32 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32', traits => ['ParamInHeader']);
  has ChecksumCRC32C => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc32c', traits => ['ParamInHeader']);
  has ChecksumCRC64NVME => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-crc64nvme', traits => ['ParamInHeader']);
  has ChecksumSHA1 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha1', traits => ['ParamInHeader']);
  has ChecksumSHA256 => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-sha256', traits => ['ParamInHeader']);
  has ChecksumType => (is => 'ro', isa => 'Str', header_name => 'x-amz-checksum-type', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'If-None-Match', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MpuObjectSize => (is => 'ro', isa => 'Int', header_name => 'x-amz-mp-object-size', traits => ['ParamInHeader']);
  has MultipartUpload => (is => 'ro', isa => 'Paws::S3::CompletedMultipartUpload', request_name => 'CompleteMultipartUpload', traits => ['NameInRequest','ParamInBody']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CompleteMultipartUploadOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CompleteMultipartUpload - Arguments for method CompleteMultipartUpload on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMultipartUpload on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CompleteMultipartUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMultipartUpload.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To complete multipart upload
    # The following example completes a multipart upload.
    my $CompleteMultipartUploadOutput = $s3->CompleteMultipartUpload(
      'Bucket'          => 'examplebucket',
      'Key'             => 'bigobject',
      'MultipartUpload' => {
        'Parts' => [

          {
            'ETag'       => '"d8c2eafd90c266e19ab9dcacc479f8af"',
            'PartNumber' => 1
          },

          {
            'ETag'       => '"d8c2eafd90c266e19ab9dcacc479f8af"',
            'PartNumber' => 2
          }
        ]
      },
      'UploadId' =>
'7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--'
    );

    # Results:
    my $Bucket   = $CompleteMultipartUploadOutput->Bucket;
    my $ETag     = $CompleteMultipartUploadOutput->ETag;
    my $Key      = $CompleteMultipartUploadOutput->Key;
    my $Location = $CompleteMultipartUploadOutput->Location;

    # Returns a L<Paws::S3::CompleteMultipartUploadOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CompleteMultipartUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Name of the bucket to which the multipart upload was initiated.

B<Directory buckets> - When you use this operation with a directory
bucket, you must use virtual-hosted-style requests in the format C<
I<Bucket-name>.s3express-I<zone-id>.I<region-code>.amazonaws.com>.
Path-style requests are not supported. Directory bucket names must be
unique in the chosen Zone (Availability Zone or Local Zone). Bucket
names must follow the format C< I<bucket-base-name>--I<zone-id>--x-s3>
(for example, C< I<amzn-s3-demo-bucket>--I<usw2-az1>--x-s3>). For
information about bucket naming restrictions, see Directory bucket
naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html)
in the I<Amazon S3 User Guide>.

B<Access points> - When you use this action with an access point for
general purpose buckets, you must provide the alias of the access point
in place of the bucket name or specify the access point ARN. When you
use this action with an access point for directory buckets, you must
provide the access point name in place of the bucket name. When using
the access point ARN, you must direct requests to the access point
hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see Using access
points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.

Object Lambda access points are not supported by directory buckets.

B<S3 on Outposts> - When you use this action with S3 on Outposts, you
must direct requests to the S3 on Outposts hostname. The S3 on Outposts
hostname takes the form C<
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com>.
When you use this action with S3 on Outposts, the destination bucket
must be the Outposts access point ARN or the access point alias. For
more information about S3 on Outposts, see What is S3 on Outposts?
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC32 => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit C<CRC32> checksum of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC32C => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 32-bit C<CRC32C> checksum of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumCRC64NVME => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 64-bit C<CRC64NVME> checksum of the
object. The C<CRC64NVME> checksum is always a full object checksum. For
more information, see Checking object integrity in the Amazon S3 User
Guide
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html).



=head2 ChecksumSHA1 => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 160-bit C<SHA1> digest of the object. For
more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumSHA256 => Str

This header can be used as a data integrity check to verify that the
data received is the same data that was originally sent. This header
specifies the Base64 encoded, 256-bit C<SHA256> digest of the object.
For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.



=head2 ChecksumType => Str

This header specifies the checksum type of the object, which determines
how part-level checksums are combined to create an object-level
checksum for multipart objects. You can use this header as a data
integrity check to verify that the checksum type that is received is
the same checksum that was specified. If the checksum type
doesnE<rsquo>t match the checksum type that was specified for the
object during the C<CreateMultipartUpload> request, itE<rsquo>ll result
in a C<BadDigest> error. For more information, see Checking object
integrity in the Amazon S3 User Guide.

Valid values are: C<"COMPOSITE">, C<"FULL_OBJECT">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 IfMatch => Str

Uploads the object only if the ETag (entity tag) value provided during
the WRITE operation matches the ETag of the object in S3. If the ETag
values do not match, the operation returns a C<412 Precondition Failed>
error.

If a conflicting operation occurs during the upload S3 returns a C<409
ConditionalRequestConflict> response. On a 409 failure you should fetch
the object's ETag, re-initiate the multipart upload with
C<CreateMultipartUpload>, and re-upload each part.

Expects the ETag value as a string.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232), or Conditional requests
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html)
in the I<Amazon S3 User Guide>.



=head2 IfNoneMatch => Str

Uploads the object only if the object key name does not already exist
in the bucket specified. Otherwise, Amazon S3 returns a C<412
Precondition Failed> error.

If a conflicting operation occurs during the upload S3 returns a C<409
ConditionalRequestConflict> response. On a 409 failure you should
re-initiate the multipart upload with C<CreateMultipartUpload> and
re-upload each part.

Expects the '*' (asterisk) character.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232), or Conditional requests
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html)
in the I<Amazon S3 User Guide>.



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 MpuObjectSize => Int

The expected total object size of the multipart upload request. If
thereE<rsquo>s a mismatch between the specified object size value and
the actual object size value, it results in an C<HTTP 400
InvalidRequest> error.



=head2 MultipartUpload => L<Paws::S3::CompletedMultipartUpload>

The container for the multipart upload request information.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

The server-side encryption (SSE) algorithm used to encrypt the object.
This parameter is required only when the object was created using a
checksum algorithm or if your bucket policy requires the use of SSE-C.
For more information, see Protecting data using SSE-C keys
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html#ssec-require-condition-key)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 SSECustomerKey => Str

The server-side encryption (SSE) customer managed key. This parameter
is needed only when the object was created using a checksum algorithm.
For more information, see Protecting data using SSE-C keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 SSECustomerKeyMD5 => Str

The MD5 server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see Protecting data using SSE-C keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 B<REQUIRED> UploadId => Str

ID for the initiated multipart upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMultipartUpload in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


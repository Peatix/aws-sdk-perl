
package Paws::S3::DeleteObjects;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bypass-governance-retention', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has Delete => (is => 'ro', isa => 'Paws::S3::Delete', traits => ['ParamInBody'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has MFA => (is => 'ro', isa => 'Str', header_name => 'x-amz-mfa', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjects - Arguments for method DeleteObjects on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjects on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjects.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
  # To delete multiple object versions from a versioned bucket
  # The following example deletes objects from a bucket. The request specifies
  # object versions. S3 deletes specific object versions and returns the key and
  # versions of deleted objects in the response.
    my $DeleteObjectsOutput = $s3->DeleteObjects(
      'Bucket' => 'examplebucket',
      'Delete' => {
        'Objects' => [

          {
            'Key'       => 'HappyFace.jpg',
            'VersionId' => '2LWg7lQLnY41.maGB5Z6SWW.dcq0vx7b'
          },

          {
            'Key'       => 'HappyFace.jpg',
            'VersionId' => 'yoz3HB.ZhCS_tKVEmIOr7qYyyAaZSKVd'
          }
        ],
        'Quiet' => 0
      }
    );

    # Results:
    my $Deleted = $DeleteObjectsOutput->Deleted;

 # Returns a L<Paws::S3::DeleteObjectsOutput> object.
 # To delete multiple objects from a versioned bucket
 # The following example deletes objects from a bucket. The bucket is versioned,
 # and the request does not specify the object version to delete. In this case,
 # all versions remain in the bucket and S3 adds a delete marker.
    my $DeleteObjectsOutput = $s3->DeleteObjects(
      'Bucket' => 'examplebucket',
      'Delete' => {
        'Objects' => [

          {
            'Key' => 'objectkey1'
          },

          {
            'Key' => 'objectkey2'
          }
        ],
        'Quiet' => 0
      }
    );

    # Results:
    my $Deleted = $DeleteObjectsOutput->Deleted;

    # Returns a L<Paws::S3::DeleteObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObjects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name containing the objects to delete.

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



=head2 BypassGovernanceRetention => Bool

Specifies whether you want to delete this object even if it has a
Governance-type Object Lock in place. To use this header, you must have
the C<s3:BypassGovernanceRetention> permission.

This functionality is not supported for directory buckets.



=head2 ChecksumAlgorithm => Str

Indicates the algorithm used to create the checksum for the object when
you use the SDK. This header will not provide any additional
functionality if you don't use the SDK. When you send this header,
there must be a corresponding C<x-amz-checksum-I<algorithm> > or
C<x-amz-trailer> header sent. Otherwise, Amazon S3 fails the request
with the HTTP status code C<400 Bad Request>.

For the C<x-amz-checksum-I<algorithm> > header, replace C< I<algorithm>
> with the supported algorithm from the following list:

=over

=item *

C<CRC32>

=item *

C<CRC32C>

=item *

C<CRC64NVME>

=item *

C<SHA1>

=item *

C<SHA256>

=back

For more information, see Checking object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

If the individual checksum value you provide through
C<x-amz-checksum-I<algorithm> > doesn't match the checksum algorithm
you set through C<x-amz-sdk-checksum-algorithm>, Amazon S3 fails the
request with a C<BadDigest> error.

If you provide an individual checksum, Amazon S3 ignores any provided
C<ChecksumAlgorithm> parameter.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 B<REQUIRED> Delete => L<Paws::S3::Delete>

Container for the request.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.
Required to permanently delete a versioned object if versioning is
configured with MFA delete enabled.

When performing the C<DeleteObjects> operation on an MFA delete enabled
bucket, which attempts to delete the specified versioned objects, you
must include an MFA token. If you don't provide an MFA token, the
entire request will fail, even if there are non-versioned objects that
you are trying to delete. If you provide an invalid token, whether
there are versioned object keys in the request or not, the entire
Multi-Object Delete request will fail. For information about MFA
Delete, see MFA Delete
(https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete)
in the I<Amazon S3 User Guide>.

This functionality is not supported for directory buckets.



=head2 RequestPayer => Str



Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjects in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


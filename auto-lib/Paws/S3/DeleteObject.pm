
package Paws::S3::DeleteObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bypass-governance-retention', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfMatchLastModifiedTime => (is => 'ro', isa => 'Str', header_name => 'x-amz-if-match-last-modified-time', traits => ['ParamInHeader']);
  has IfMatchSize => (is => 'ro', isa => 'Int', header_name => 'x-amz-if-match-size', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MFA => (is => 'ro', isa => 'Str', header_name => 'x-amz-mfa', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObject - Arguments for method DeleteObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To delete an object
    # The following example deletes an object from an S3 bucket.
    my $DeleteObjectOutput = $s3->DeleteObject(
      'Bucket' => 'examplebucket',
      'Key'    => 'objectkey.jpg'
    );

    # To delete an object (from a non-versioned bucket)
    # The following example deletes an object from a non-versioned bucket.
    my $DeleteObjectOutput = $s3->DeleteObject(
      'Bucket' => 'ExampleBucket',
      'Key'    => 'HappyFace.jpg'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name of the bucket containing the object.

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

Indicates whether S3 Object Lock should bypass Governance-mode
restrictions to process this operation. To use this header, you must
have the C<s3:BypassGovernanceRetention> permission.

This functionality is not supported for directory buckets.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 IfMatch => Str

The C<If-Match> header field makes the request method conditional on
ETags. If the ETag value does not match, the operation returns a C<412
Precondition Failed> error. If the ETag matches or if the object
doesn't exist, the operation will return a C<204 Success (No Content)
response>.

For more information about conditional requests, see RFC 7232
(https://tools.ietf.org/html/rfc7232).

This functionality is only supported for directory buckets.



=head2 IfMatchLastModifiedTime => Str

If present, the object is deleted only if its modification times
matches the provided C<Timestamp>. If the C<Timestamp> values do not
match, the operation returns a C<412 Precondition Failed> error. If the
C<Timestamp> matches or if the object doesnE<rsquo>t exist, the
operation returns a C<204 Success (No Content)> response.

This functionality is only supported for directory buckets.



=head2 IfMatchSize => Int

If present, the object is deleted only if its size matches the provided
size in bytes. If the C<Size> value does not match, the operation
returns a C<412 Precondition Failed> error. If the C<Size> matches or
if the object doesnE<rsquo>t exist, the operation returns a C<204
Success (No Content)> response.

This functionality is only supported for directory buckets.

You can use the C<If-Match>, C<x-amz-if-match-last-modified-time> and
C<x-amz-if-match-size> conditional headers in conjunction with
each-other or individually.



=head2 B<REQUIRED> Key => Str

Key name of the object to delete.



=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.
Required to permanently delete a versioned object if versioning is
configured with MFA delete enabled.

This functionality is not supported for directory buckets.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

Version ID used to reference a specific version of the object.

For directory buckets in this API operation, only the C<null> value of
the version ID is supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


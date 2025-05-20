
package Paws::S3::ListParts;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MaxParts => (is => 'ro', isa => 'Int', query_name => 'max-parts', traits => ['ParamInQuery']);
  has PartNumberMarker => (is => 'ro', isa => 'Int', query_name => 'part-number-marker', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has UploadId => (is => 'ro', isa => 'Str', query_name => 'uploadId', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListPartsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListParts - Arguments for method ListParts on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListParts on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListParts.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # To list parts of a multipart upload.
   # The following example lists parts uploaded for a specific multipart upload.
    my $ListPartsOutput = $s3->ListParts(
      'Bucket'   => 'examplebucket',
      'Key'      => 'bigobject',
      'UploadId' =>
'example7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP3WA60CEg--'
    );

    # Results:
    my $Initiator    = $ListPartsOutput->Initiator;
    my $Owner        = $ListPartsOutput->Owner;
    my $Parts        = $ListPartsOutput->Parts;
    my $StorageClass = $ListPartsOutput->StorageClass;

    # Returns a L<Paws::S3::ListPartsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListParts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which the parts are being uploaded.

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



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 B<REQUIRED> Key => Str

Object key for which the multipart upload was initiated.



=head2 MaxParts => Int

Sets the maximum number of parts to return.



=head2 PartNumberMarker => Int

Specifies the part after which listing should begin. Only parts with
higher part numbers will be listed.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

The server-side encryption (SSE) algorithm used to encrypt the object.
This parameter is needed only when the object was created using a
checksum algorithm. For more information, see Protecting data using
SSE-C keys
(https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html)
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

Upload ID identifying the multipart upload whose parts are being
listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListParts in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


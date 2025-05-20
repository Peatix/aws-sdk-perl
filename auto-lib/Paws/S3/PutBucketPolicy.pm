
package Paws::S3::PutBucketPolicy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ConfirmRemoveSelfBucketAccess => (is => 'ro', isa => 'Bool', header_name => 'x-amz-confirm-remove-self-bucket-access', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Policy => (is => 'ro', isa => 'Str', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketPolicy - Arguments for method PutBucketPolicy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketPolicy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketPolicy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # Set bucket policy
    # The following example sets a permission policy on a bucket.
    $s3->PutBucketPolicy(
      'Bucket' => 'examplebucket',
      'Policy' =>
'{"Version": "2012-10-17", "Statement": [{ "Sid": "id-1","Effect": "Allow","Principal": {"AWS": "arn:aws:iam::123456789012:root"}, "Action": [ "s3:PutObject","s3:PutObjectAcl"], "Resource": ["arn:aws:s3:::acl3/*" ] } ]}'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.

B<Directory buckets > - When you use this operation with a directory
bucket, you must use path-style requests in the format
C<https://s3express-control.I<region-code>.amazonaws.com/I<bucket-name>
>. Virtual-hosted-style requests aren't supported. Directory bucket
names must be unique in the chosen Zone (Availability Zone or Local
Zone). Bucket names must also follow the format C<
I<bucket-base-name>--I<zone-id>--x-s3> (for example, C<
I<DOC-EXAMPLE-BUCKET>--I<usw2-az1>--x-s3>). For information about
bucket naming restrictions, see Directory bucket naming rules
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html)
in the I<Amazon S3 User Guide>



=head2 ChecksumAlgorithm => Str

Indicates the algorithm used to create the checksum for the request
when you use the SDK. This header will not provide any additional
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

For directory buckets, when you use Amazon Web Services SDKs, C<CRC32>
is the default checksum algorithm that's used for performance.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ConfirmRemoveSelfBucketAccess => Bool

Set this parameter to true to confirm that you want to remove your
permissions to change this bucket policy in the future.

This functionality is not supported for directory buckets.



=head2 ContentMD5 => Str

The MD5 hash of the request body.

For requests made using the Amazon Web Services Command Line Interface
(CLI) or Amazon Web Services SDKs, this field is calculated
automatically.

This functionality is not supported for directory buckets.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).

For directory buckets, this header is not supported in this API
operation. If you specify this header, the request fails with the HTTP
status code C<501 Not Implemented>.



=head2 B<REQUIRED> Policy => Str

The bucket policy as a JSON document.

For directory buckets, the only IAM action supported in the bucket
policy is C<s3express:CreateSession>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


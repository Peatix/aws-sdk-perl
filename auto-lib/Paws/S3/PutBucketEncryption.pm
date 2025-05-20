
package Paws::S3::PutBucketEncryption;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::ServerSideEncryptionConfiguration', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketEncryption');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketEncryption - Arguments for method PutBucketEncryption on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketEncryption on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketEncryption.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketEncryption(
      Bucket                            => 'MyBucketName',
      ServerSideEncryptionConfiguration => {
        Rules => [
          {
            ApplyServerSideEncryptionByDefault => {
              SSEAlgorithm => 'AES256',  # values: AES256, aws:kms, aws:kms:dsse
              KMSMasterKeyID => 'MySSEKMSKeyId',    # OPTIONAL
            },    # OPTIONAL
            BucketKeyEnabled => 1,    # OPTIONAL
          },
          ...
        ],

      },
      ChecksumAlgorithm   => 'CRC32',           # OPTIONAL
      ContentMD5          => 'MyContentMD5',    # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketEncryption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Specifies default encryption for a bucket using server-side encryption
with different key options.

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
there must be a corresponding C<x-amz-checksum> or C<x-amz-trailer>
header sent. Otherwise, Amazon S3 fails the request with the HTTP
status code C<400 Bad Request>. For more information, see Checking
object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

If you provide an individual checksum, Amazon S3 ignores any provided
C<ChecksumAlgorithm> parameter.

For directory buckets, when you use Amazon Web Services SDKs, C<CRC32>
is the default checksum algorithm that's used for performance.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ContentMD5 => Str

The Base64 encoded 128-bit C<MD5> digest of the server-side encryption
configuration.

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



=head2 B<REQUIRED> ServerSideEncryptionConfiguration => L<Paws::S3::ServerSideEncryptionConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketEncryption in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


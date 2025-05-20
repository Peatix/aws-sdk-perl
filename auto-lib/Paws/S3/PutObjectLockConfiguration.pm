
package Paws::S3::PutObjectLockConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has ObjectLockConfiguration => (is => 'ro', isa => 'Paws::S3::ObjectLockConfiguration', traits => ['ParamInBody']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has Token => (is => 'ro', isa => 'Str', header_name => 'x-amz-bucket-object-lock-token', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectLockConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?object-lock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectLockConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectLockConfiguration - Arguments for method PutObjectLockConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectLockConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectLockConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectLockConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectLockConfigurationOutput = $s3->PutObjectLockConfiguration(
      Bucket                  => 'MyBucketName',
      ChecksumAlgorithm       => 'CRC32',           # OPTIONAL
      ContentMD5              => 'MyContentMD5',    # OPTIONAL
      ExpectedBucketOwner     => 'MyAccountId',     # OPTIONAL
      ObjectLockConfiguration => {
        ObjectLockEnabled => 'Enabled',             # values: Enabled; OPTIONAL
        Rule              => {
          DefaultRetention => {
            Days  => 1,               # OPTIONAL
            Mode  => 'GOVERNANCE',    # values: GOVERNANCE, COMPLIANCE; OPTIONAL
            Years => 1,               # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RequestPayer => 'requester',            # OPTIONAL
      Token        => 'MyObjectLockToken',    # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectLockConfigurationOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectLockConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectLockConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket whose Object Lock configuration you want to create or
replace.



=head2 ChecksumAlgorithm => Str

Indicates the algorithm used to create the checksum for the object when
you use the SDK. This header will not provide any additional
functionality if you don't use the SDK. When you send this header,
there must be a corresponding C<x-amz-checksum> or C<x-amz-trailer>
header sent. Otherwise, Amazon S3 fails the request with the HTTP
status code C<400 Bad Request>. For more information, see Checking
object integrity
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html)
in the I<Amazon S3 User Guide>.

If you provide an individual checksum, Amazon S3 ignores any provided
C<ChecksumAlgorithm> parameter.

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ContentMD5 => Str

The MD5 hash for the request body.

For requests made using the Amazon Web Services Command Line Interface
(CLI) or Amazon Web Services SDKs, this field is calculated
automatically.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 ObjectLockConfiguration => L<Paws::S3::ObjectLockConfiguration>

The Object Lock configuration that you want to apply to the specified
bucket.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 Token => Str

A token to allow Object Lock to be enabled for an existing bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectLockConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


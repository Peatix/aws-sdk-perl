
package Paws::S3::PutBucketAccelerateConfiguration;
  use Moose;
  has AccelerateConfiguration => (is => 'ro', isa => 'Paws::S3::AccelerateConfiguration', traits => ['ParamInBody'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAccelerateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?accelerate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAccelerateConfiguration - Arguments for method PutBucketAccelerateConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAccelerateConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketAccelerateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAccelerateConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketAccelerateConfiguration(
      AccelerateConfiguration => {
        Status => 'Enabled',    # values: Enabled, Suspended; OPTIONAL
      },
      Bucket              => 'MyBucketName',
      ChecksumAlgorithm   => 'CRC32',          # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketAccelerateConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccelerateConfiguration => L<Paws::S3::AccelerateConfiguration>

Container for setting the transfer acceleration state.



=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which the accelerate configuration is set.



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

Valid values are: C<"CRC32">, C<"CRC32C">, C<"SHA1">, C<"SHA256">, C<"CRC64NVME">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAccelerateConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::S3::PutBucketLogging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketLoggingStatus => (is => 'ro', isa => 'Paws::S3::BucketLoggingStatus', traits => ['ParamInBody'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLogging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?logging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketLogging - Arguments for method PutBucketLogging on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLogging on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketLogging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLogging.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
  # Set logging configuration for a bucket
  # The following example sets logging policy on a bucket. For the Log Delivery
  # group to deliver logs to the destination bucket, it needs permission for the
  # READ_ACP action which the policy grants.
    $s3->PutBucketLogging(
      'Bucket'              => 'sourcebucket',
      'BucketLoggingStatus' => {
        'LoggingEnabled' => {
          'TargetBucket' => 'targetbucket',
          'TargetGrants' => [

            {
              'Grantee' => {
                'Type' => 'Group',
                'URI'  => 'http://acs.amazonaws.com/groups/global/AllUsers'
              },
              'Permission' => 'READ'
            }
          ],
          'TargetPrefix' => 'MyBucketLogs/'
        }
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketLogging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to set the logging parameters.



=head2 B<REQUIRED> BucketLoggingStatus => L<Paws::S3::BucketLoggingStatus>

Container for logging status information.



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

=head2 ContentMD5 => Str

The MD5 hash of the C<PutBucketLogging> request body.

For requests made using the Amazon Web Services Command Line Interface
(CLI) or Amazon Web Services SDKs, this field is calculated
automatically.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLogging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


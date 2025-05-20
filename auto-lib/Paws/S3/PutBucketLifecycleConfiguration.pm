
package Paws::S3::PutBucketLifecycleConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has LifecycleConfiguration => (is => 'ro', isa => 'Paws::S3::BucketLifecycleConfiguration', traits => ['ParamInBody']);
  has TransitionDefaultMinimumObjectSize => (is => 'ro', isa => 'Str', header_name => 'x-amz-transition-default-minimum-object-size', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycleConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?lifecycle');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutBucketLifecycleConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketLifecycleConfiguration - Arguments for method PutBucketLifecycleConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLifecycleConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLifecycleConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # Put bucket lifecycle
   # The following example replaces existing lifecycle configuration, if any, on
   # the specified bucket.
    my $PutBucketLifecycleConfigurationOutput =
      $s3->PutBucketLifecycleConfiguration(
      'Bucket'                 => 'examplebucket',
      'LifecycleConfiguration' => {
        'Rules' => [

          {
            'Expiration' => {
              'Days' => 3650
            },
            'Filter' => {
              'Prefix' => 'documents/'
            },
            'ID'          => 'TestOnly',
            'Status'      => 'Enabled',
            'Transitions' => [

              {
                'Days'         => 365,
                'StorageClass' => 'GLACIER'
              }
            ]
          }
        ]
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to set the configuration.



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

This parameter applies to general purpose buckets only. It is not
supported for directory bucket lifecycle configurations.



=head2 LifecycleConfiguration => L<Paws::S3::BucketLifecycleConfiguration>

Container for lifecycle rules. You can add as many as 1,000 rules.



=head2 TransitionDefaultMinimumObjectSize => Str

Indicates which default minimum object size behavior is applied to the
lifecycle configuration.

This parameter applies to general purpose buckets only. It is not
supported for directory bucket lifecycle configurations.

=over

=item *

C<all_storage_classes_128K> - Objects smaller than 128 KB will not
transition to any storage class by default.

=item *

C<varies_by_storage_class> - Objects smaller than 128 KB will
transition to Glacier Flexible Retrieval or Glacier Deep Archive
storage classes. By default, all other storage classes will prevent
transitions smaller than 128 KB.

=back

To customize the minimum object size for any transition you can add a
filter that specifies a custom C<ObjectSizeGreaterThan> or
C<ObjectSizeLessThan> in the body of your transition rule. Custom
filters always take precedence over the default transition behavior.

Valid values are: C<"varies_by_storage_class">, C<"all_storage_classes_128K">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLifecycleConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


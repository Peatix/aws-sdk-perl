
package Paws::S3::PutBucketNotification;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::S3::NotificationConfigurationDeprecated', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketNotification');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketNotification - Arguments for method PutBucketNotification on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketNotification on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketNotification.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketNotification(
      Bucket                    => 'MyBucketName',
      NotificationConfiguration => {
        CloudFunctionConfiguration => {
          CloudFunction => 'MyCloudFunction',                 # OPTIONAL
          Event         => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          ],    # OPTIONAL
          Id             => 'MyNotificationId',                 # OPTIONAL
          InvocationRole => 'MyCloudFunctionInvocationRole',    # OPTIONAL
        },    # OPTIONAL
        QueueConfiguration => {
          Event => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          ],    # OPTIONAL
          Id    => 'MyNotificationId',    # OPTIONAL
          Queue => 'MyQueueArn',          # OPTIONAL
        },    # OPTIONAL
        TopicConfiguration => {
          Event => 's3:ReducedRedundancyLostObject'
          , # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          Events => [
            's3:ReducedRedundancyLostObject',
            ... # values: s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated, s3:ObjectRestore:*, s3:ObjectRestore:Post, s3:ObjectRestore:Completed, s3:Replication:*, s3:Replication:OperationFailedReplication, s3:Replication:OperationNotTracked, s3:Replication:OperationMissedThreshold, s3:Replication:OperationReplicatedAfterThreshold, s3:ObjectRestore:Delete, s3:LifecycleTransition, s3:IntelligentTiering, s3:ObjectAcl:Put, s3:LifecycleExpiration:*, s3:LifecycleExpiration:Delete, s3:LifecycleExpiration:DeleteMarkerCreated, s3:ObjectTagging:*, s3:ObjectTagging:Put, s3:ObjectTagging:Delete; OPTIONAL
          ],    # OPTIONAL
          Id    => 'MyNotificationId',    # OPTIONAL
          Topic => 'MyTopicArn',          # OPTIONAL
        },    # OPTIONAL
      },
      ChecksumAlgorithm   => 'CRC32',           # OPTIONAL
      ContentMD5          => 'MyContentMD5',    # OPTIONAL
      ExpectedBucketOwner => 'MyAccountId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



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

The MD5 hash of the C<PutPublicAccessBlock> request body.

For requests made using the Amazon Web Services Command Line Interface
(CLI) or Amazon Web Services SDKs, this field is calculated
automatically.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 B<REQUIRED> NotificationConfiguration => L<Paws::S3::NotificationConfigurationDeprecated>

The container for the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketNotification in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


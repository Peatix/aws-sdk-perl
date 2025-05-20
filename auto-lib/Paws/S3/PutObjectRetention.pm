
package Paws::S3::PutObjectRetention;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bypass-governance-retention', traits => ['ParamInHeader']);
  has ChecksumAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-sdk-checksum-algorithm', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has Retention => (is => 'ro', isa => 'Paws::S3::ObjectLockRetention', traits => ['ParamInBody']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectRetention');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?retention');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectRetentionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectRetention - Arguments for method PutObjectRetention on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectRetention on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectRetention.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectRetention.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectRetentionOutput = $s3->PutObjectRetention(
      Bucket                    => 'MyBucketName',
      Key                       => 'MyObjectKey',
      BypassGovernanceRetention => 1,                 # OPTIONAL
      ChecksumAlgorithm         => 'CRC32',           # OPTIONAL
      ContentMD5                => 'MyContentMD5',    # OPTIONAL
      ExpectedBucketOwner       => 'MyAccountId',     # OPTIONAL
      RequestPayer              => 'requester',       # OPTIONAL
      Retention                 => {
        Mode => 'GOVERNANCE',    # values: GOVERNANCE, COMPLIANCE; OPTIONAL
        RetainUntilDate => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      VersionId => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectRetentionOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectRetentionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectRetention>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name that contains the object you want to apply this Object
Retention configuration to.

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



=head2 BypassGovernanceRetention => Bool

Indicates whether this action should bypass Governance-mode
restrictions.



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



=head2 B<REQUIRED> Key => Str

The key name for the object that you want to apply this Object
Retention configuration to.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 Retention => L<Paws::S3::ObjectLockRetention>

The container element for the Object Retention configuration.



=head2 VersionId => Str

The version ID for the object that you want to apply this Object
Retention configuration to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectRetention in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


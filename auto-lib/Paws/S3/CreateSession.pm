
package Paws::S3::CreateSession;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SessionMode => (is => 'ro', isa => 'Str', header_name => 'x-amz-create-session-mode', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?session');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::CreateSessionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateSession - Arguments for method CreateSession on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSession on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSession.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $CreateSessionOutput = $s3->CreateSession(
      Bucket                  => 'MyBucketName',
      BucketKeyEnabled        => 1,                              # OPTIONAL
      SSEKMSEncryptionContext => 'MySSEKMSEncryptionContext',    # OPTIONAL
      SSEKMSKeyId             => 'MySSEKMSKeyId',                # OPTIONAL
      ServerSideEncryption    => 'AES256',                       # OPTIONAL
      SessionMode             => 'ReadOnly',                     # OPTIONAL
    );

    # Results:
    my $BucketKeyEnabled        = $CreateSessionOutput->BucketKeyEnabled;
    my $Credentials             = $CreateSessionOutput->Credentials;
    my $SSEKMSEncryptionContext = $CreateSessionOutput->SSEKMSEncryptionContext;
    my $SSEKMSKeyId             = $CreateSessionOutput->SSEKMSKeyId;
    my $ServerSideEncryption    = $CreateSessionOutput->ServerSideEncryption;

    # Returns a L<Paws::S3::CreateSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket that you create a session for.



=head2 BucketKeyEnabled => Bool

Specifies whether Amazon S3 should use an S3 Bucket Key for object
encryption with server-side encryption using KMS keys (SSE-KMS).

S3 Bucket Keys are always enabled for C<GET> and C<PUT> operations in a
directory bucket and canE<rsquo>t be disabled. S3 Bucket Keys aren't
supported, when you copy SSE-KMS encrypted objects from general purpose
buckets to directory buckets, from directory buckets to general purpose
buckets, or between directory buckets, through CopyObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html),
UploadPartCopy
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html),
the Copy operation in Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops),
or the import jobs
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job).
In this case, Amazon S3 makes a call to KMS every time a copy request
is made for a KMS-encrypted object.



=head2 ServerSideEncryption => Str

The server-side encryption algorithm to use when you store objects in
the directory bucket.

For directory buckets, there are only two supported options for
server-side encryption: server-side encryption with Amazon S3 managed
keys (SSE-S3) (C<AES256>) and server-side encryption with KMS keys
(SSE-KMS) (C<aws:kms>). By default, Amazon S3 encrypts data with
SSE-S3. For more information, see Protecting data with server-side
encryption
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html)
in the I<Amazon S3 User Guide>.

Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SessionMode => Str

Specifies the mode of the session that will be created, either
C<ReadWrite> or C<ReadOnly>. By default, a C<ReadWrite> session is
created. A C<ReadWrite> session is capable of executing all the Zonal
endpoint API operations on a directory bucket. A C<ReadOnly> session is
constrained to execute the following Zonal endpoint API operations:
C<GetObject>, C<HeadObject>, C<ListObjectsV2>, C<GetObjectAttributes>,
C<ListParts>, and C<ListMultipartUploads>.

Valid values are: C<"ReadOnly">, C<"ReadWrite">

=head2 SSEKMSEncryptionContext => Str

Specifies the Amazon Web Services KMS Encryption Context as an
additional encryption context to use for object encryption. The value
of this header is a Base64 encoded string of a UTF-8 encoded JSON,
which contains the encryption context as key-value pairs. This value is
stored as object metadata and automatically gets passed on to Amazon
Web Services KMS for future C<GetObject> operations on this object.

B<General purpose buckets> - This value must be explicitly added during
C<CopyObject> operations if you want an additional encryption context
for your object. For more information, see Encryption context
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context)
in the I<Amazon S3 User Guide>.

B<Directory buckets> - You can optionally provide an explicit
encryption context value. The value must match the default encryption
context - the bucket Amazon Resource Name (ARN). An additional
encryption context value is not supported.



=head2 SSEKMSKeyId => Str

If you specify C<x-amz-server-side-encryption> with C<aws:kms>, you
must specify the C< x-amz-server-side-encryption-aws-kms-key-id> header
with the ID (Key ID or Key ARN) of the KMS symmetric encryption
customer managed key to use. Otherwise, you get an HTTP C<400 Bad
Request> error. Only use the key ID or key ARN. The key alias format of
the KMS key isn't supported. Also, if the KMS key doesn't exist in the
same account that't issuing the command, you must use the full Key ARN
not the Key ID.

Your SSE-KMS configuration can only support 1 customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
per directory bucket's lifetime. The Amazon Web Services managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
(C<aws/s3>) isn't supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSession in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


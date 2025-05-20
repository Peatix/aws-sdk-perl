
package Paws::S3::CreateSessionOutput;
  use Moose;
  has BucketKeyEnabled => (is => 'ro', isa => 'Bool', header_name => 'x-amz-server-side-encryption-bucket-key-enabled', traits => ['ParamInHeader']);
  has Credentials => (is => 'ro', isa => 'Paws::S3::SessionCredentials', required => 1);
  has ServerSideEncryption => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption', traits => ['ParamInHeader']);
  has SSEKMSEncryptionContext => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-context', traits => ['ParamInHeader']);
  has SSEKMSKeyId => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-aws-kms-key-id', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateSessionOutput

=head1 ATTRIBUTES


=head2 BucketKeyEnabled => Bool

Indicates whether to use an S3 Bucket Key for server-side encryption
with KMS keys (SSE-KMS).



=head2 B<REQUIRED> Credentials => L<Paws::S3::SessionCredentials>

The established temporary security credentials for the created session.



=head2 ServerSideEncryption => Str

The server-side encryption algorithm used when you store objects in the
directory bucket.

Valid values are: C<"AES256">, C<"aws:kms">, C<"aws:kms:dsse">

=head2 SSEKMSEncryptionContext => Str

If present, indicates the Amazon Web Services KMS Encryption Context to
use for object encryption. The value of this header is a Base64 encoded
string of a UTF-8 encoded JSON, which contains the encryption context
as key-value pairs. This value is stored as object metadata and
automatically gets passed on to Amazon Web Services KMS for future
C<GetObject> operations on this object.



=head2 SSEKMSKeyId => Str

If you specify C<x-amz-server-side-encryption> with C<aws:kms>, this
header indicates the ID of the KMS symmetric encryption customer
managed key that was used for object encryption.




=cut


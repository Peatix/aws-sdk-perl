
package Paws::CodeCommit::UpdateRepositoryEncryptionKey;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRepositoryEncryptionKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdateRepositoryEncryptionKeyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateRepositoryEncryptionKey - Arguments for method UpdateRepositoryEncryptionKey on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRepositoryEncryptionKey on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateRepositoryEncryptionKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRepositoryEncryptionKey.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdateRepositoryEncryptionKeyOutput =
      $codecommit->UpdateRepositoryEncryptionKey(
      KmsKeyId       => 'MyKmsKeyId',
      RepositoryName => 'MyRepositoryName',

      );

    # Results:
    my $KmsKeyId = $UpdateRepositoryEncryptionKeyOutput->KmsKeyId;
    my $OriginalKmsKeyId =
      $UpdateRepositoryEncryptionKeyOutput->OriginalKmsKeyId;
    my $RepositoryId = $UpdateRepositoryEncryptionKeyOutput->RepositoryId;

    # Returns a L<Paws::CodeCommit::UpdateRepositoryEncryptionKeyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateRepositoryEncryptionKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KmsKeyId => Str

The ID of the encryption key. You can view the ID of an encryption key
in the KMS console, or use the KMS APIs to programmatically retrieve a
key ID. For more information about acceptable values for keyID, see
KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId)
in the Decrypt API description in the I<Key Management Service API
Reference>.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository for which you want to update the KMS
encryption key used to encrypt and decrypt the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRepositoryEncryptionKey in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


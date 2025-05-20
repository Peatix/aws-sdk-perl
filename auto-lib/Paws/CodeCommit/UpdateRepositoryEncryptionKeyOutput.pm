
package Paws::CodeCommit::UpdateRepositoryEncryptionKeyOutput;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId' );
  has OriginalKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originalKmsKeyId' );
  has RepositoryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateRepositoryEncryptionKeyOutput

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The ID of the encryption key.


=head2 OriginalKmsKeyId => Str

The ID of the encryption key formerly used to encrypt and decrypt the
repository.


=head2 RepositoryId => Str

The ID of the repository.


=head2 _request_id => Str


=cut

1;
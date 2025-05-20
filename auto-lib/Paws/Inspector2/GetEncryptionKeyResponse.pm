
package Paws::Inspector2::GetEncryptionKeyResponse;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetEncryptionKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KmsKeyId => Str

A kms key ID.


=head2 _request_id => Str


=cut


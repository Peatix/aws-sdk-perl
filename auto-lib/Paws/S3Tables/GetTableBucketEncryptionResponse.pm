
package Paws::S3Tables::GetTableBucketEncryptionResponse;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3Tables::EncryptionConfiguration', traits => ['NameInRequest'], request_name => 'encryptionConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableBucketEncryptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionConfiguration => L<Paws::S3Tables::EncryptionConfiguration>

The encryption configuration for the table bucket.


=head2 _request_id => Str


=cut


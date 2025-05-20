
package Paws::CodeGuruSecurity::GetAccountConfigurationResponse;
  use Moose;
  has EncryptionConfig => (is => 'ro', isa => 'Paws::CodeGuruSecurity::EncryptionConfig', traits => ['NameInRequest'], request_name => 'encryptionConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetAccountConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionConfig => L<Paws::CodeGuruSecurity::EncryptionConfig>

An C<EncryptionConfig> object that contains the KMS key ARN that is
used for encryption. By default, CodeGuru Security uses an AWS-managed
key for encryption. To specify your own key, call
C<UpdateAccountConfiguration>. If you do not specify a customer-managed
key, returns empty.


=head2 _request_id => Str


=cut


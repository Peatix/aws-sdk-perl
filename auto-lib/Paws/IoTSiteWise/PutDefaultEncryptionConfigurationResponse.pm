
package Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse;
  use Moose;
  has ConfigurationStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::ConfigurationStatus', traits => ['NameInRequest'], request_name => 'configurationStatus', required => 1);
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationStatus => L<Paws::IoTSiteWise::ConfigurationStatus>

The status of the account configuration. This contains the
C<ConfigurationState>. If there is an error, it also contains the
C<ErrorDetails>.


=head2 B<REQUIRED> EncryptionType => Str

The type of encryption used for the encryption configuration.

Valid values are: C<"SITEWISE_DEFAULT_ENCRYPTION">, C<"KMS_BASED_ENCRYPTION">
=head2 KmsKeyArn => Str

The Key ARN of the KMS key used for KMS encryption if you use
C<KMS_BASED_ENCRYPTION>.


=head2 _request_id => Str


=cut


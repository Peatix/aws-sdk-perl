
package Paws::IoTManagedIntegrations::PutDefaultEncryptionConfigurationResponse;
  use Moose;
  has ConfigurationStatus => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::ConfigurationStatus', traits => ['NameInRequest'], request_name => 'configurationStatus', required => 1);
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::PutDefaultEncryptionConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationStatus => L<Paws::IoTManagedIntegrations::ConfigurationStatus>

Provides the status of the default encryption configuration for an
Amazon Web Services account.


=head2 B<REQUIRED> EncryptionType => Str

The type of encryption used for the encryption configuration.

Valid values are: C<"MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION">, C<"CUSTOMER_KEY_ENCRYPTION">
=head2 KmsKeyArn => Str

The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
encryption if you use C<KMS_BASED_ENCRYPTION>.


=head2 _request_id => Str


=cut


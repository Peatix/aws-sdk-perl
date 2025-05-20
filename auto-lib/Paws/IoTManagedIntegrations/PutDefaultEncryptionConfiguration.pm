
package Paws::IoTManagedIntegrations::PutDefaultEncryptionConfiguration;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDefaultEncryptionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/account/encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::PutDefaultEncryptionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::PutDefaultEncryptionConfiguration - Arguments for method PutDefaultEncryptionConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDefaultEncryptionConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method PutDefaultEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDefaultEncryptionConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $PutDefaultEncryptionConfigurationResponse =
      $api . iotmanagedintegrations->PutDefaultEncryptionConfiguration(
      EncryptionType => 'MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION',
      KmsKeyArn      => 'MyKmsKeyArn',                               # OPTIONAL
      );

    # Results:
    my $ConfigurationStatus =
      $PutDefaultEncryptionConfigurationResponse->ConfigurationStatus;
    my $EncryptionType =
      $PutDefaultEncryptionConfigurationResponse->EncryptionType;
    my $KmsKeyArn = $PutDefaultEncryptionConfigurationResponse->KmsKeyArn;

# Returns a L<Paws::IoTManagedIntegrations::PutDefaultEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/PutDefaultEncryptionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

The type of encryption used for the encryption configuration.

Valid values are: C<"MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION">, C<"CUSTOMER_KEY_ENCRYPTION">

=head2 KmsKeyArn => Str

The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS
encryption if you use C<KMS_BASED_ENCRYPTION>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDefaultEncryptionConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


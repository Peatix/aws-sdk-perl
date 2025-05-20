
package Paws::IoTManagedIntegrations::GetDefaultEncryptionConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDefaultEncryptionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/account/encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetDefaultEncryptionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetDefaultEncryptionConfiguration - Arguments for method GetDefaultEncryptionConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDefaultEncryptionConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetDefaultEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDefaultEncryptionConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetDefaultEncryptionConfigurationResponse =
      $api . iotmanagedintegrations->GetDefaultEncryptionConfiguration();

    # Results:
    my $ConfigurationStatus =
      $GetDefaultEncryptionConfigurationResponse->ConfigurationStatus;
    my $EncryptionType =
      $GetDefaultEncryptionConfigurationResponse->EncryptionType;
    my $KmsKeyArn = $GetDefaultEncryptionConfigurationResponse->KmsKeyArn;

# Returns a L<Paws::IoTManagedIntegrations::GetDefaultEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetDefaultEncryptionConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDefaultEncryptionConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


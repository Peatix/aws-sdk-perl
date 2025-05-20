
package Paws::IoTManagedIntegrations::PutHubConfiguration;
  use Moose;
  has HubTokenTimerExpirySettingInSeconds => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutHubConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hub-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::PutHubConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::PutHubConfiguration - Arguments for method PutHubConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutHubConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method PutHubConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutHubConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $PutHubConfigurationResponse =
      $api . iotmanagedintegrations->PutHubConfiguration(
      HubTokenTimerExpirySettingInSeconds => 1,

      );

    # Results:
    my $HubTokenTimerExpirySettingInSeconds =
      $PutHubConfigurationResponse->HubTokenTimerExpirySettingInSeconds;

# Returns a L<Paws::IoTManagedIntegrations::PutHubConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/PutHubConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubTokenTimerExpirySettingInSeconds => Int

A user-defined integer value that represents the hub token timer expiry
setting in seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutHubConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


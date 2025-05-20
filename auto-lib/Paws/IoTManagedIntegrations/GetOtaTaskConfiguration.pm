
package Paws::IoTManagedIntegrations::GetOtaTaskConfiguration;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOtaTaskConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ota-task-configurations/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetOtaTaskConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetOtaTaskConfiguration - Arguments for method GetOtaTaskConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOtaTaskConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetOtaTaskConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOtaTaskConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetOtaTaskConfigurationResponse =
      $api . iotmanagedintegrations->GetOtaTaskConfiguration(
      Identifier => 'MyOtaTaskConfigurationId',

      );

    # Results:
    my $CreatedAt   = $GetOtaTaskConfigurationResponse->CreatedAt;
    my $Description = $GetOtaTaskConfigurationResponse->Description;
    my $Name        = $GetOtaTaskConfigurationResponse->Name;
    my $PushConfig  = $GetOtaTaskConfigurationResponse->PushConfig;
    my $TaskConfigurationId =
      $GetOtaTaskConfigurationResponse->TaskConfigurationId;

# Returns a L<Paws::IoTManagedIntegrations::GetOtaTaskConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetOtaTaskConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The over-the-air (OTA) task configuration id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOtaTaskConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


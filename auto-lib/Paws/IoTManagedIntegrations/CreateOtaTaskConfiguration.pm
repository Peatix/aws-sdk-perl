
package Paws::IoTManagedIntegrations::CreateOtaTaskConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PushConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::PushConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOtaTaskConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ota-task-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateOtaTaskConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateOtaTaskConfiguration - Arguments for method CreateOtaTaskConfiguration on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOtaTaskConfiguration on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateOtaTaskConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOtaTaskConfiguration.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateOtaTaskConfigurationResponse =
      $api . iotmanagedintegrations->CreateOtaTaskConfiguration(
      ClientToken => 'MyClientToken',                 # OPTIONAL
      Description => 'MyOtaDescription',              # OPTIONAL
      Name        => 'MyOtaTaskConfigurationName',    # OPTIONAL
      PushConfig  => {
        AbortConfig => {
          AbortConfigCriteriaList => [
            {
              Action      => 'CANCEL',    # values: CANCEL; OPTIONAL
              FailureType =>
                'FAILED',   # values: FAILED, REJECTED, TIMED_OUT, ALL; OPTIONAL
              MinNumberOfExecutedThings => 1,    # min: 1, max: 100; OPTIONAL
              ThresholdPercentage       => 1,    # max: 100; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RolloutConfig => {
          ExponentialRolloutRate => {
            BaseRatePerMinute    => 1,    # min: 1, max: 100; OPTIONAL
            IncrementFactor      => 1,    # min: 1.1, max: 5; OPTIONAL
            RateIncreaseCriteria => {
              NumberOfNotifiedThings  => 1,    # min: 1, max: 100; OPTIONAL
              NumberOfSucceededThings => 1,    # min: 1, max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          MaximumPerMinute => 1,    # min: 1; OPTIONAL
        },    # OPTIONAL
        TimeoutConfig => {
          InProgressTimeoutInMinutes => 1,    # min: 1, max: 10080; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $TaskConfigurationId =
      $CreateOtaTaskConfigurationResponse->TaskConfigurationId;

# Returns a L<Paws::IoTManagedIntegrations::CreateOtaTaskConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateOtaTaskConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 Description => Str

A description of the over-the-air (OTA) task configuration.



=head2 Name => Str

The name of the over-the-air (OTA) task.



=head2 PushConfig => L<Paws::IoTManagedIntegrations::PushConfig>

Describes the type of configuration used for the over-the-air (OTA)
task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOtaTaskConfiguration in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::IoTManagedIntegrations::CreateOtaTask;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has OtaMechanism => (is => 'ro', isa => 'Str');
  has OtaSchedulingConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::OtaTaskSchedulingConfig');
  has OtaTargetQueryString => (is => 'ro', isa => 'Str');
  has OtaTaskExecutionRetryConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::OtaTaskExecutionRetryConfig');
  has OtaType => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TagsMap');
  has Target => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskConfigurationId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOtaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ota-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::CreateOtaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateOtaTask - Arguments for method CreateOtaTask on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOtaTask on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method CreateOtaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOtaTask.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $CreateOtaTaskResponse = $api . iotmanagedintegrations->CreateOtaTask(
      OtaType             => 'ONE_TIME',
      S3Url               => 'MyS3Url',
      ClientToken         => 'MyClientToken',       # OPTIONAL
      Description         => 'MyOtaDescription',    # OPTIONAL
      OtaMechanism        => 'PUSH',                # OPTIONAL
      OtaSchedulingConfig => {
        EndBehavior =>
          'STOP_ROLLOUT', # values: STOP_ROLLOUT, CANCEL, FORCE_CANCEL; OPTIONAL
        EndTime            => 'MyEndTime',    # OPTIONAL
        MaintenanceWindows => [
          {
            DurationInMinutes => 1,                # min: 1, max: 1430; OPTIONAL
            StartTime         => 'MyStartTime',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        StartTime => 'MyScheduleStartTime',    # OPTIONAL
      },    # OPTIONAL
      OtaTargetQueryString        => 'MyOtaTargetQueryString',    # OPTIONAL
      OtaTaskExecutionRetryConfig => {
        RetryConfigCriteria => [
          {
            FailureType => 'FAILED',  # values: FAILED, TIMED_OUT, ALL; OPTIONAL
            MinNumberOfRetries => 1,    # max: 10; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Protocol => 'HTTP',    # OPTIONAL
      Tags     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Target              => [ 'MyString', ... ],           # OPTIONAL
      TaskConfigurationId => 'MyOtaTaskConfigurationId',    # OPTIONAL
    );

    # Results:
    my $Description = $CreateOtaTaskResponse->Description;
    my $TaskArn     = $CreateOtaTaskResponse->TaskArn;
    my $TaskId      = $CreateOtaTaskResponse->TaskId;

    # Returns a L<Paws::IoTManagedIntegrations::CreateOtaTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/CreateOtaTask>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token. If you retry a request that completed
successfully initially using the same client token and parameters, then
the retry attempt will succeed without performing any further actions.



=head2 Description => Str

The description of the over-the-air (OTA) task.



=head2 OtaMechanism => Str

The deployment mechanism for the over-the-air (OTA) task.

Valid values are: C<"PUSH">

=head2 OtaSchedulingConfig => L<Paws::IoTManagedIntegrations::OtaTaskSchedulingConfig>





=head2 OtaTargetQueryString => Str

The query string to add things to the thing group.



=head2 OtaTaskExecutionRetryConfig => L<Paws::IoTManagedIntegrations::OtaTaskExecutionRetryConfig>





=head2 B<REQUIRED> OtaType => Str

The frequency type for the over-the-air (OTA) task.

Valid values are: C<"ONE_TIME">, C<"CONTINUOUS">

=head2 Protocol => Str

The connection protocol the over-the-air (OTA) task uses to update the
device.

Valid values are: C<"HTTP">

=head2 B<REQUIRED> S3Url => Str

The URL to the Amazon S3 bucket where the over-the-air (OTA) task is
stored.



=head2 Tags => L<Paws::IoTManagedIntegrations::TagsMap>

A set of key/value pairs that are used to manage the over-the-air (OTA)
task.



=head2 Target => ArrayRef[Str|Undef]

The device targeted for the over-the-air (OTA) task.



=head2 TaskConfigurationId => Str

The identifier for the over-the-air (OTA) task configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOtaTask in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


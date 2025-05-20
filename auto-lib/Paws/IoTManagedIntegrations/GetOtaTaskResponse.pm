
package Paws::IoTManagedIntegrations::GetOtaTaskResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has OtaMechanism => (is => 'ro', isa => 'Str');
  has OtaSchedulingConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::OtaTaskSchedulingConfig');
  has OtaTargetQueryString => (is => 'ro', isa => 'Str');
  has OtaTaskExecutionRetryConfig => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::OtaTaskExecutionRetryConfig');
  has OtaType => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskConfigurationId => (is => 'ro', isa => 'Str');
  has TaskId => (is => 'ro', isa => 'Str');
  has TaskProcessingDetails => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::TaskProcessingDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetOtaTaskResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp value of when the over-the-air (OTA) task was created.


=head2 Description => Str

The description of the over-the-air (OTA) task.


=head2 LastUpdatedAt => Str

The timestamp value of when the over-the-air (OTA) task was last
updated at.


=head2 OtaMechanism => Str

The deployment mechanism for the over-the-air (OTA) task.

Valid values are: C<"PUSH">
=head2 OtaSchedulingConfig => L<Paws::IoTManagedIntegrations::OtaTaskSchedulingConfig>




=head2 OtaTargetQueryString => Str

The query string to add things to the thing group.


=head2 OtaTaskExecutionRetryConfig => L<Paws::IoTManagedIntegrations::OtaTaskExecutionRetryConfig>




=head2 OtaType => Str

The frequency type for the over-the-air (OTA) task.

Valid values are: C<"ONE_TIME">, C<"CONTINUOUS">
=head2 Protocol => Str

The connection protocol the over-the-air (OTA) task uses to update the
device.

Valid values are: C<"HTTP">
=head2 S3Url => Str

The URL to the Amazon S3 bucket where the over-the-air (OTA) task is
stored.


=head2 Status => Str

The status of the over-the-air (OTA) task.

Valid values are: C<"IN_PROGRESS">, C<"CANCELED">, C<"COMPLETED">, C<"DELETION_IN_PROGRESS">, C<"SCHEDULED">
=head2 Target => ArrayRef[Str|Undef]

The device targeted for the over-the-air (OTA) task.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the over-the-air (OTA) task


=head2 TaskConfigurationId => Str

The identifier for the over-the-air (OTA) task configuration.


=head2 TaskId => Str

The id of the over-the-air (OTA) task.


=head2 TaskProcessingDetails => L<Paws::IoTManagedIntegrations::TaskProcessingDetails>

The processing details of all over-the-air (OTA) tasks.


=head2 _request_id => Str


=cut


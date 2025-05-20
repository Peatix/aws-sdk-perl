
package Paws::EMRServerless::UpdateApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture');
  has AutoStartConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::AutoStartConfig', traits => ['NameInRequest'], request_name => 'autoStartConfiguration');
  has AutoStopConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::AutoStopConfig', traits => ['NameInRequest'], request_name => 'autoStopConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ImageConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::ImageConfigurationInput', traits => ['NameInRequest'], request_name => 'imageConfiguration');
  has InitialCapacity => (is => 'ro', isa => 'Paws::EMRServerless::InitialCapacityConfigMap', traits => ['NameInRequest'], request_name => 'initialCapacity');
  has InteractiveConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::InteractiveConfiguration', traits => ['NameInRequest'], request_name => 'interactiveConfiguration');
  has MaximumCapacity => (is => 'ro', isa => 'Paws::EMRServerless::MaximumAllowedResources', traits => ['NameInRequest'], request_name => 'maximumCapacity');
  has MonitoringConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::MonitoringConfiguration', traits => ['NameInRequest'], request_name => 'monitoringConfiguration');
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration');
  has ReleaseLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseLabel');
  has RuntimeConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::EMRServerless::Configuration]', traits => ['NameInRequest'], request_name => 'runtimeConfiguration');
  has SchedulerConfiguration => (is => 'ro', isa => 'Paws::EMRServerless::SchedulerConfiguration', traits => ['NameInRequest'], request_name => 'schedulerConfiguration');
  has WorkerTypeSpecifications => (is => 'ro', isa => 'Paws::EMRServerless::WorkerTypeSpecificationInputMap', traits => ['NameInRequest'], request_name => 'workerTypeSpecifications');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRServerless::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::UpdateApplication - Arguments for method UpdateApplication on L<Paws::EMRServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<EMR Serverless|Paws::EMRServerless> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $emr-serverless = Paws->service('EMRServerless');
    my $UpdateApplicationResponse = $emr -serverless->UpdateApplication(
      ApplicationId          => 'MyApplicationId',
      ClientToken            => 'MyClientToken',
      Architecture           => 'ARM64',             # OPTIONAL
      AutoStartConfiguration => {
        Enabled => 1,                                # OPTIONAL
      },    # OPTIONAL
      AutoStopConfiguration => {
        Enabled            => 1,    # OPTIONAL
        IdleTimeoutMinutes => 1,    # min: 1, max: 10080; OPTIONAL
      },    # OPTIONAL
      ImageConfiguration => {
        ImageUri => 'MyImageUri',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      InitialCapacity => {
        'MyWorkerTypeString' => {
          WorkerCount         => 1,    # min: 1, max: 1000000
          WorkerConfiguration => {
            Cpu      => 'MyCpuSize',       # min: 1, max: 15
            Memory   => 'MyMemorySize',    # min: 1, max: 15
            Disk     => 'MyDiskSize',      # min: 1, max: 15; OPTIONAL
            DiskType => 'MyDiskType',      # OPTIONAL
          },    # OPTIONAL
        },    # key: min: 1, max: 50
      },    # OPTIONAL
      InteractiveConfiguration => {
        LivyEndpointEnabled => 1,    # OPTIONAL
        StudioEnabled       => 1,    # OPTIONAL
      },    # OPTIONAL
      MaximumCapacity => {
        Cpu    => 'MyCpuSize',       # min: 1, max: 15
        Memory => 'MyMemorySize',    # min: 1, max: 15
        Disk   => 'MyDiskSize',      # min: 1, max: 15; OPTIONAL
      },    # OPTIONAL
      MonitoringConfiguration => {
        CloudWatchLoggingConfiguration => {
          Enabled          => 1,     # OPTIONAL
          EncryptionKeyArn =>
            'MyEncryptionKeyArn',    # min: 20, max: 2048; OPTIONAL
          LogGroupName        => 'MyLogGroupName',  # min: 1, max: 512; OPTIONAL
          LogStreamNamePrefix =>
            'MyLogStreamNamePrefix',                # min: 1, max: 512; OPTIONAL
          LogTypes => {
            'MyWorkerTypeString' => [
              'MyLogTypeString', ...                # min: 1, max: 50
            ],    # key: min: 1, max: 50, value: min: 1, max: 5
          },    # min: 1, max: 4; OPTIONAL
        },    # OPTIONAL
        ManagedPersistenceMonitoringConfiguration => {
          Enabled          => 1,     # OPTIONAL
          EncryptionKeyArn =>
            'MyEncryptionKeyArn',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
        PrometheusMonitoringConfiguration => {
          RemoteWriteUrl =>
            'MyPrometheusUrlString',    # min: 1, max: 10280; OPTIONAL
        },    # OPTIONAL
        S3MonitoringConfiguration => {
          EncryptionKeyArn =>
            'MyEncryptionKeyArn',    # min: 20, max: 2048; OPTIONAL
          LogUri => 'MyUriString',   # min: 1, max: 10280; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      NetworkConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupString', ...    # min: 1, max: 32
        ],    # max: 5; OPTIONAL
        SubnetIds => [
          'MySubnetString', ...    # min: 1, max: 32
        ],    # max: 16; OPTIONAL
      },    # OPTIONAL
      ReleaseLabel         => 'MyReleaseLabel',    # OPTIONAL
      RuntimeConfiguration => [
        {
          Classification => 'MyString1024',        # min: 1, max: 1024
          Configurations => <ConfigurationList>,
          Properties     => {
            'MyConfigurationPropertyKey' => 'MyConfigurationPropertyValue'
            ,    # key: min: 1, max: 1024, value: max: 1024
          },    # max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SchedulerConfiguration => {
        MaxConcurrentRuns   => 1,    # OPTIONAL
        QueueTimeoutMinutes => 1,    # OPTIONAL
      },    # OPTIONAL
      WorkerTypeSpecifications => {
        'MyWorkerTypeString' => {
          ImageConfiguration => {
            ImageUri => 'MyImageUri',    # min: 1, max: 1024; OPTIONAL
          },
        },    # key: min: 1, max: 50
      },    # OPTIONAL
    );

    # Results:
    my $Application = $UpdateApplicationResponse->Application;

    # Returns a L<Paws::EMRServerless::UpdateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-serverless/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application to update.



=head2 Architecture => Str

The CPU architecture of an application.

Valid values are: C<"ARM64">, C<"X86_64">

=head2 AutoStartConfiguration => L<Paws::EMRServerless::AutoStartConfig>

The configuration for an application to automatically start on job
submission.



=head2 AutoStopConfiguration => L<Paws::EMRServerless::AutoStopConfig>

The configuration for an application to automatically stop after a
certain amount of time being idle.



=head2 B<REQUIRED> ClientToken => Str

The client idempotency token of the application to update. Its value
must be unique for each request.



=head2 ImageConfiguration => L<Paws::EMRServerless::ImageConfigurationInput>

The image configuration to be used for all worker types. You can either
set this parameter or C<imageConfiguration> for each worker type in
C<WorkerTypeSpecificationInput>.



=head2 InitialCapacity => L<Paws::EMRServerless::InitialCapacityConfigMap>

The capacity to initialize when the application is updated.



=head2 InteractiveConfiguration => L<Paws::EMRServerless::InteractiveConfiguration>

The interactive configuration object that contains new interactive use
cases when the application is updated.



=head2 MaximumCapacity => L<Paws::EMRServerless::MaximumAllowedResources>

The maximum capacity to allocate when the application is updated. This
is cumulative across all workers at any given point in time during the
lifespan of the application. No new resources will be created once any
one of the defined limits is hit.



=head2 MonitoringConfiguration => L<Paws::EMRServerless::MonitoringConfiguration>

The configuration setting for monitoring.



=head2 NetworkConfiguration => L<Paws::EMRServerless::NetworkConfiguration>





=head2 ReleaseLabel => Str

The Amazon EMR release label for the application. You can change the
release label to use a different release of Amazon EMR.



=head2 RuntimeConfiguration => ArrayRef[L<Paws::EMRServerless::Configuration>]

The Configuration
(https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html)
specifications to use when updating an application. Each configuration
consists of a classification and properties. This configuration is
applied across all the job runs submitted under the application.



=head2 SchedulerConfiguration => L<Paws::EMRServerless::SchedulerConfiguration>

The scheduler configuration for batch and streaming jobs running on
this application. Supported with release labels emr-7.0.0 and above.



=head2 WorkerTypeSpecifications => L<Paws::EMRServerless::WorkerTypeSpecificationInputMap>

The key-value pairs that specify worker type to
C<WorkerTypeSpecificationInput>. This parameter must contain all valid
worker types for a Spark or Hive application. Valid worker types
include C<Driver> and C<Executor> for Spark applications and
C<HiveDriver> and C<TezTask> for Hive applications. You can either set
image details in this parameter for each worker type, or in
C<imageConfiguration> for all worker types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::EMRServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


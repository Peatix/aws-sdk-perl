
package Paws::EMRServerless::StartJobRun;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ConfigurationOverrides => (is => 'ro', isa => 'Paws::EMRServerless::ConfigurationOverrides', traits => ['NameInRequest'], request_name => 'configurationOverrides');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn', required => 1);
  has ExecutionTimeoutMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'executionTimeoutMinutes');
  has JobDriver => (is => 'ro', isa => 'Paws::EMRServerless::JobDriver', traits => ['NameInRequest'], request_name => 'jobDriver');
  has Mode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mode');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RetryPolicy => (is => 'ro', isa => 'Paws::EMRServerless::RetryPolicy', traits => ['NameInRequest'], request_name => 'retryPolicy');
  has Tags => (is => 'ro', isa => 'Paws::EMRServerless::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/jobruns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRServerless::StartJobRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::StartJobRun - Arguments for method StartJobRun on L<Paws::EMRServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJobRun on the
L<EMR Serverless|Paws::EMRServerless> service. Use the attributes of this class
as arguments to method StartJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJobRun.

=head1 SYNOPSIS

    my $emr-serverless = Paws->service('EMRServerless');
    my $StartJobRunResponse = $emr -serverless->StartJobRun(
      ApplicationId          => 'MyApplicationId',
      ClientToken            => 'MyClientToken',
      ExecutionRoleArn       => 'MyIAMRoleArn',
      ConfigurationOverrides => {
        ApplicationConfiguration => [
          {
            Classification => 'MyString1024',        # min: 1, max: 1024
            Configurations => <ConfigurationList>,
            Properties     => {
              'MyConfigurationPropertyKey' => 'MyConfigurationPropertyValue'
              ,    # key: min: 1, max: 1024, value: max: 1024
            },    # max: 100; OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        MonitoringConfiguration => {
          CloudWatchLoggingConfiguration => {
            Enabled          => 1,
            EncryptionKeyArn =>
              'MyEncryptionKeyArn',    # min: 20, max: 2048; OPTIONAL
            LogGroupName => 'MyLogGroupName',    # min: 1, max: 512; OPTIONAL
            LogStreamNamePrefix =>
              'MyLogStreamNamePrefix',           # min: 1, max: 512; OPTIONAL
            LogTypes => {
              'MyWorkerTypeString' => [
                'MyLogTypeString', ...           # min: 1, max: 50
              ],    # key: min: 1, max: 50, value: min: 1, max: 5
            },    # min: 1, max: 4; OPTIONAL
          },    # OPTIONAL
          ManagedPersistenceMonitoringConfiguration => {
            Enabled          => 1,
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
      },    # OPTIONAL
      ExecutionTimeoutMinutes => 1,    # OPTIONAL
      JobDriver               => {
        Hive => {
          Query         => 'MyQuery',             # min: 1, max: 10280
          InitQueryFile => 'MyInitScriptPath',    # min: 1, max: 256; OPTIONAL
          Parameters => 'MyHiveCliParameters',   # min: 1, max: 102400; OPTIONAL
        },    # OPTIONAL
        SparkSubmit => {
          EntryPoint          => 'MyEntryPointPath',    # min: 1, max: 4096
          EntryPointArguments => [
            'MyEntryPointArgument', ...                 # min: 1, max: 10280
          ],    # OPTIONAL
          SparkSubmitParameters =>
            'MySparkSubmitParameters',    # min: 1, max: 102400; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Mode        => 'BATCH',          # OPTIONAL
      Name        => 'MyString256',    # OPTIONAL
      RetryPolicy => {
        MaxAttempts              => 1,    # min: 1; OPTIONAL
        MaxFailedAttemptsPerHour => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationId = $StartJobRunResponse->ApplicationId;
    my $Arn           = $StartJobRunResponse->Arn;
    my $JobRunId      = $StartJobRunResponse->JobRunId;

    # Returns a L<Paws::EMRServerless::StartJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-serverless/StartJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application on which to run the job.



=head2 B<REQUIRED> ClientToken => Str

The client idempotency token of the job run to start. Its value must be
unique for each request.



=head2 ConfigurationOverrides => L<Paws::EMRServerless::ConfigurationOverrides>

The configuration overrides for the job run.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The execution role ARN for the job run.



=head2 ExecutionTimeoutMinutes => Int

The maximum duration for the job run to run. If the job run runs beyond
this duration, it will be automatically cancelled.



=head2 JobDriver => L<Paws::EMRServerless::JobDriver>

The job driver for the job run.



=head2 Mode => Str

The mode of the job run when it starts.

Valid values are: C<"BATCH">, C<"STREAMING">

=head2 Name => Str

The optional job run name. This doesn't have to be unique.



=head2 RetryPolicy => L<Paws::EMRServerless::RetryPolicy>

The retry policy when job run starts.



=head2 Tags => L<Paws::EMRServerless::TagMap>

The tags assigned to the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJobRun in L<Paws::EMRServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


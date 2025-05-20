
package Paws::Braket::CreateJob;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::Braket::AlgorithmSpecification', traits => ['NameInRequest'], request_name => 'algorithmSpecification', required => 1);
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::Braket::Association]', traits => ['NameInRequest'], request_name => 'associations');
  has CheckpointConfig => (is => 'ro', isa => 'Paws::Braket::JobCheckpointConfig', traits => ['NameInRequest'], request_name => 'checkpointConfig');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DeviceConfig => (is => 'ro', isa => 'Paws::Braket::DeviceConfig', traits => ['NameInRequest'], request_name => 'deviceConfig', required => 1);
  has HyperParameters => (is => 'ro', isa => 'Paws::Braket::HyperParameters', traits => ['NameInRequest'], request_name => 'hyperParameters');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::Braket::InputFileConfig]', traits => ['NameInRequest'], request_name => 'inputDataConfig');
  has InstanceConfig => (is => 'ro', isa => 'Paws::Braket::InstanceConfig', traits => ['NameInRequest'], request_name => 'instanceConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Braket::JobOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::Braket::JobStoppingCondition', traits => ['NameInRequest'], request_name => 'stoppingCondition');
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CreateJob - Arguments for method CreateJob on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $CreateJobResponse = $braket->CreateJob(
      AlgorithmSpecification => {
        ContainerImage => {
          Uri => 'MyUri',    # min: 1, max: 255

        },    # OPTIONAL
        ScriptModeConfig => {
          EntryPoint      => 'MyString',
          S3Uri           => 'MyS3Path',    # max: 1024
          CompressionType => 'NONE',        # values: NONE, GZIP; OPTIONAL
        },    # OPTIONAL
      },
      ClientToken  => 'MyString64',
      DeviceConfig => {
        Device => 'MyString256',    # min: 1, max: 256

      },
      InstanceConfig => {
        InstanceType => 'ml.m4.xlarge'
        , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge
        VolumeSizeInGb => 1,    # min: 1
        InstanceCount  => 1,    # min: 1; OPTIONAL
      },
      JobName          => 'MyCreateJobRequestJobNameString',
      OutputDataConfig => {
        S3Path   => 'MyS3Path',        # max: 1024
        KmsKeyId => 'MyString2048',    # min: 1, max: 2048; OPTIONAL
      },
      RoleArn      => 'MyRoleArn',
      Associations => [
        {
          Arn  => 'MyBraketResourceArn',
          Type =>
            'RESERVATION_TIME_WINDOW_ARN', # values: RESERVATION_TIME_WINDOW_ARN

        },
        ...
      ],    # OPTIONAL
      CheckpointConfig => {
        S3Uri     => 'MyS3Path',        # max: 1024
        LocalPath => 'MyString4096',    # min: 1, max: 4096; OPTIONAL
      },    # OPTIONAL
      HyperParameters => {
        'MyString256' => 'MyHyperParametersValueString'
        ,    # key: min: 1, max: 256, value: min: 1, max: 2500
      },    # OPTIONAL
      InputDataConfig => [
        {
          ChannelName => 'MyInputFileConfigChannelNameString', # min: 1, max: 64
          DataSource  => {
            S3DataSource => {
              S3Uri => 'MyS3Path',                             # max: 1024

            },

          },
          ContentType => 'MyString256',    # min: 1, max: 256
        },
        ...
      ],    # OPTIONAL
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,    # min: 1, max: 432000; OPTIONAL
      },    # OPTIONAL
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $JobArn = $CreateJobResponse->JobArn;

    # Returns a L<Paws::Braket::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/CreateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::Braket::AlgorithmSpecification>

Definition of the Amazon Braket job to be created. Specifies the
container image the job uses and information about the Python scripts
used for entry and training.



=head2 Associations => ArrayRef[L<Paws::Braket::Association>]

The list of Amazon Braket resources associated with the hybrid job.



=head2 CheckpointConfig => L<Paws::Braket::JobCheckpointConfig>

Information about the output locations for job checkpoint data.



=head2 B<REQUIRED> ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 B<REQUIRED> DeviceConfig => L<Paws::Braket::DeviceConfig>

The quantum processing unit (QPU) or simulator used to create an Amazon
Braket job.



=head2 HyperParameters => L<Paws::Braket::HyperParameters>

Algorithm-specific parameters used by an Amazon Braket job that
influence the quality of the training job. The values are set with a
string of JSON key:value pairs, where the key is the name of the
hyperparameter and the value is the value of th hyperparameter.



=head2 InputDataConfig => ArrayRef[L<Paws::Braket::InputFileConfig>]

A list of parameters that specify the name and type of input data and
where it is located.



=head2 B<REQUIRED> InstanceConfig => L<Paws::Braket::InstanceConfig>

Configuration of the resource instances to use while running the hybrid
job on Amazon Braket.



=head2 B<REQUIRED> JobName => Str

The name of the Amazon Braket job.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Braket::JobOutputDataConfig>

The path to the S3 location where you want to store job artifacts and
the encryption key used to store them.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can
assume to perform tasks on behalf of a user. It can access user
resources, run an Amazon Braket job container on behalf of user, and
output resources to the users' s3 buckets.



=head2 StoppingCondition => L<Paws::Braket::JobStoppingCondition>

The user-defined criteria that specifies when a job stops running.



=head2 Tags => L<Paws::Braket::TagsMap>

A tag object that consists of a key and an optional value, used to
manage metadata for Amazon Braket resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


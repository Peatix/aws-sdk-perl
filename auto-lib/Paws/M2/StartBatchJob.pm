
package Paws::M2::StartBatchJob;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AuthSecretsManagerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authSecretsManagerArn');
  has BatchJobIdentifier => (is => 'ro', isa => 'Paws::M2::BatchJobIdentifier', traits => ['NameInRequest'], request_name => 'batchJobIdentifier', required => 1);
  has JobParams => (is => 'ro', isa => 'Paws::M2::BatchJobParametersMap', traits => ['NameInRequest'], request_name => 'jobParams');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBatchJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/batch-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::StartBatchJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::StartBatchJob - Arguments for method StartBatchJob on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBatchJob on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method StartBatchJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBatchJob.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $StartBatchJobResponse = $m2->StartBatchJob(
      ApplicationId      => 'MyIdentifier',
      BatchJobIdentifier => {
        FileBatchJobIdentifier => {
          FileName   => 'MyString',
          FolderPath => 'MyString',
        },    # OPTIONAL
        RestartBatchJobIdentifier => {
          ExecutionId          => 'MyIdentifier',
          JobStepRestartMarker => {
            FromStep       => 'MyString',
            FromProcStep   => 'MyString',
            Skip           => 1,            # OPTIONAL
            StepCheckpoint => 1,            # OPTIONAL
            ToProcStep     => 'MyString',
            ToStep         => 'MyString',
          },

        },    # OPTIONAL
        S3BatchJobIdentifier => {
          Bucket     => 'MyString',
          Identifier => {
            FileName   => 'MyString',
            ScriptName => 'MyString',
          },
          KeyPrefix => 'MyString',
        },    # OPTIONAL
        ScriptBatchJobIdentifier => {
          ScriptName => 'MyString',

        },    # OPTIONAL
      },
      AuthSecretsManagerArn => 'MyAuthSecretsManagerArn',    # OPTIONAL
      JobParams             => {
        'MyBatchParamKey' =>
          'MyBatchParamValue',    # key: min: 1, max: 32, value: max: 1024
      },    # OPTIONAL
    );

    # Results:
    my $ExecutionId = $StartBatchJobResponse->ExecutionId;

    # Returns a L<Paws::M2::StartBatchJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/StartBatchJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application associated with this batch
job.



=head2 AuthSecretsManagerArn => Str

The Amazon Web Services Secrets Manager containing user's credentials
for authentication and authorization for Start Batch Job execution
operation.



=head2 B<REQUIRED> BatchJobIdentifier => L<Paws::M2::BatchJobIdentifier>

The unique identifier of the batch job.



=head2 JobParams => L<Paws::M2::BatchJobParametersMap>

The collection of batch job parameters. For details about limits for
keys and values, see Coding variables in JCL
(https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBatchJob in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


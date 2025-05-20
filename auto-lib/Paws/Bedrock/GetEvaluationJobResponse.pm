
package Paws::Bedrock::GetEvaluationJobResponse;
  use Moose;
  has ApplicationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationType');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has CustomerEncryptionKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerEncryptionKeyId');
  has EvaluationConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationConfig', traits => ['NameInRequest'], request_name => 'evaluationConfig', required => 1);
  has FailureMessages => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureMessages');
  has InferenceConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationInferenceConfig', traits => ['NameInRequest'], request_name => 'inferenceConfig', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);
  has JobDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDescription');
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Bedrock::EvaluationOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetEvaluationJobResponse

=head1 ATTRIBUTES


=head2 ApplicationType => Str

Specifies whether the evaluation job is for evaluating a model or
evaluating a knowledge base (retrieval and response generation).

Valid values are: C<"ModelEvaluation">, C<"RagEvaluation">
=head2 B<REQUIRED> CreationTime => Str

The time the evaluation job was created.


=head2 CustomerEncryptionKeyId => Str

The Amazon Resource Name (ARN) of the customer managed encryption key
specified when the evaluation job was created.


=head2 B<REQUIRED> EvaluationConfig => L<Paws::Bedrock::EvaluationConfig>

Contains the configuration details of either an automated or
human-based evaluation job.


=head2 FailureMessages => ArrayRef[Str|Undef]

A list of strings that specify why the evaluation job failed to create.


=head2 B<REQUIRED> InferenceConfig => L<Paws::Bedrock::EvaluationInferenceConfig>

Contains the configuration details of the inference model used for the
evaluation job.


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the evaluation job.


=head2 JobDescription => Str

The description of the evaluation job.


=head2 B<REQUIRED> JobName => Str

The name for the evaluation job.


=head2 B<REQUIRED> JobType => Str

Specifies whether the evaluation job is automated or human-based.

Valid values are: C<"Human">, C<"Automated">
=head2 LastModifiedTime => Str

The time the evaluation job was last modified.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::Bedrock::EvaluationOutputDataConfig>

Contains the configuration details of the Amazon S3 bucket for storing
the results of the evaluation job.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role used in the
evaluation job.


=head2 B<REQUIRED> Status => Str

The current status of the evaluation job.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">, C<"Deleting">
=head2 _request_id => Str


=cut


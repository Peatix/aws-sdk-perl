
package Paws::SageMaker::DescribeInferenceRecommendationsJobResponse;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointPerformances => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::EndpointPerformance]');
  has FailureReason => (is => 'ro', isa => 'Str');
  has InferenceRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::InferenceRecommendation]');
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobInputConfig', required => 1);
  has JobArn => (is => 'ro', isa => 'Str', required => 1);
  has JobDescription => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StoppingConditions => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobStoppingConditions');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeInferenceRecommendationsJobResponse

=head1 ATTRIBUTES


=head2 CompletionTime => Str

A timestamp that shows when the job completed.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the job was created.


=head2 EndpointPerformances => ArrayRef[L<Paws::SageMaker::EndpointPerformance>]

The performance results from running an Inference Recommender job on an
existing endpoint.


=head2 FailureReason => Str

If the job fails, provides information why the job failed.


=head2 InferenceRecommendations => ArrayRef[L<Paws::SageMaker::InferenceRecommendation>]

The recommendations made by Inference Recommender.


=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::RecommendationJobInputConfig>

Returns information about the versioned model package Amazon Resource
Name (ARN), the traffic pattern, and endpoint configurations you
provided when you initiated the job.


=head2 B<REQUIRED> JobArn => Str

The Amazon Resource Name (ARN) of the job.


=head2 JobDescription => Str

The job description that you provided when you initiated the job.


=head2 B<REQUIRED> JobName => Str

The name of the job. The name must be unique within an Amazon Web
Services Region in the Amazon Web Services account.


=head2 B<REQUIRED> JobType => Str

The job type that you provided when you initiated the job.

Valid values are: C<"Default">, C<"Advanced">
=head2 B<REQUIRED> LastModifiedTime => Str

A timestamp that shows when the job was last modified.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Identity and
Access Management (IAM) role you provided when you initiated the job.


=head2 B<REQUIRED> Status => Str

The status of the job.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">, C<"DELETING">, C<"DELETED">
=head2 StoppingConditions => L<Paws::SageMaker::RecommendationJobStoppingConditions>

The stopping conditions that you provided when you initiated the job.


=head2 _request_id => Str


=cut

1;
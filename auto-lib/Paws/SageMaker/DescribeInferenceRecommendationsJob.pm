
package Paws::SageMaker::DescribeInferenceRecommendationsJob;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInferenceRecommendationsJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeInferenceRecommendationsJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeInferenceRecommendationsJob - Arguments for method DescribeInferenceRecommendationsJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInferenceRecommendationsJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeInferenceRecommendationsJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInferenceRecommendationsJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeInferenceRecommendationsJobResponse =
      $api . sagemaker->DescribeInferenceRecommendationsJob(
      JobName => 'MyRecommendationJobName',

      );

    # Results:
    my $CompletionTime =
      $DescribeInferenceRecommendationsJobResponse->CompletionTime;
    my $CreationTime =
      $DescribeInferenceRecommendationsJobResponse->CreationTime;
    my $EndpointPerformances =
      $DescribeInferenceRecommendationsJobResponse->EndpointPerformances;
    my $FailureReason =
      $DescribeInferenceRecommendationsJobResponse->FailureReason;
    my $InferenceRecommendations =
      $DescribeInferenceRecommendationsJobResponse->InferenceRecommendations;
    my $InputConfig = $DescribeInferenceRecommendationsJobResponse->InputConfig;
    my $JobArn      = $DescribeInferenceRecommendationsJobResponse->JobArn;
    my $JobDescription =
      $DescribeInferenceRecommendationsJobResponse->JobDescription;
    my $JobName = $DescribeInferenceRecommendationsJobResponse->JobName;
    my $JobType = $DescribeInferenceRecommendationsJobResponse->JobType;
    my $LastModifiedTime =
      $DescribeInferenceRecommendationsJobResponse->LastModifiedTime;
    my $RoleArn = $DescribeInferenceRecommendationsJobResponse->RoleArn;
    my $Status  = $DescribeInferenceRecommendationsJobResponse->Status;
    my $StoppingConditions =
      $DescribeInferenceRecommendationsJobResponse->StoppingConditions;

# Returns a L<Paws::SageMaker::DescribeInferenceRecommendationsJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeInferenceRecommendationsJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job. The name must be unique within an Amazon Web
Services Region in the Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInferenceRecommendationsJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


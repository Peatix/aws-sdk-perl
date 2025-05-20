
package Paws::SageMaker::ListInferenceRecommendationsJobSteps;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StepType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceRecommendationsJobSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListInferenceRecommendationsJobSteps - Arguments for method ListInferenceRecommendationsJobSteps on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceRecommendationsJobSteps on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListInferenceRecommendationsJobSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceRecommendationsJobSteps.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListInferenceRecommendationsJobStepsResponse =
      $api . sagemaker->ListInferenceRecommendationsJobSteps(
      JobName    => 'MyRecommendationJobName',
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      Status     => 'PENDING',                   # OPTIONAL
      StepType   => 'BENCHMARK',                 # OPTIONAL
      );

    # Results:
    my $NextToken = $ListInferenceRecommendationsJobStepsResponse->NextToken;
    my $Steps     = $ListInferenceRecommendationsJobStepsResponse->Steps;

# Returns a L<Paws::SageMaker::ListInferenceRecommendationsJobStepsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListInferenceRecommendationsJobSteps>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name for the Inference Recommender job.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A token that you can specify to return more results from the list.
Specify this field if you have a token that was returned from a
previous request.



=head2 Status => Str

A filter to return benchmarks of a specified status. If this field is
left empty, then all benchmarks are returned.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"STOPPING">, C<"STOPPED">, C<"DELETING">, C<"DELETED">

=head2 StepType => Str

A filter to return details about the specified type of subtask.

C<BENCHMARK>: Evaluate the performance of your model on different
instance types.

Valid values are: C<"BENCHMARK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceRecommendationsJobSteps in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


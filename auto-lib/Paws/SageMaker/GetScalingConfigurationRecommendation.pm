
package Paws::SageMaker::GetScalingConfigurationRecommendation;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str');
  has InferenceRecommendationsJobName => (is => 'ro', isa => 'Str', required => 1);
  has RecommendationId => (is => 'ro', isa => 'Str');
  has ScalingPolicyObjective => (is => 'ro', isa => 'Paws::SageMaker::ScalingPolicyObjective');
  has TargetCpuUtilizationPerCore => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScalingConfigurationRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::GetScalingConfigurationRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetScalingConfigurationRecommendation - Arguments for method GetScalingConfigurationRecommendation on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScalingConfigurationRecommendation on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method GetScalingConfigurationRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScalingConfigurationRecommendation.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $GetScalingConfigurationRecommendationResponse =
      $api . sagemaker->GetScalingConfigurationRecommendation(
      InferenceRecommendationsJobName => 'MyRecommendationJobName',
      EndpointName                    => 'MyEndpointName',            # OPTIONAL
      RecommendationId                => 'MyString',                  # OPTIONAL
      ScalingPolicyObjective          => {
        MaxInvocationsPerMinute => 1,                                 # OPTIONAL
        MinInvocationsPerMinute => 1,                                 # OPTIONAL
      },    # OPTIONAL
      TargetCpuUtilizationPerCore => 1,    # OPTIONAL
      );

    # Results:
    my $DynamicScalingConfiguration =
      $GetScalingConfigurationRecommendationResponse
      ->DynamicScalingConfiguration;
    my $EndpointName =
      $GetScalingConfigurationRecommendationResponse->EndpointName;
    my $InferenceRecommendationsJobName =
      $GetScalingConfigurationRecommendationResponse
      ->InferenceRecommendationsJobName;
    my $Metric = $GetScalingConfigurationRecommendationResponse->Metric;
    my $RecommendationId =
      $GetScalingConfigurationRecommendationResponse->RecommendationId;
    my $ScalingPolicyObjective =
      $GetScalingConfigurationRecommendationResponse->ScalingPolicyObjective;
    my $TargetCpuUtilizationPerCore =
      $GetScalingConfigurationRecommendationResponse
      ->TargetCpuUtilizationPerCore;

# Returns a L<Paws::SageMaker::GetScalingConfigurationRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/GetScalingConfigurationRecommendation>

=head1 ATTRIBUTES


=head2 EndpointName => Str

The name of an endpoint benchmarked during a previously completed
inference recommendation job. This name should come from one of the
recommendations returned by the job specified in the
C<InferenceRecommendationsJobName> field.

Specify either this field or the C<RecommendationId> field.



=head2 B<REQUIRED> InferenceRecommendationsJobName => Str

The name of a previously completed Inference Recommender job.



=head2 RecommendationId => Str

The recommendation ID of a previously completed inference
recommendation. This ID should come from one of the recommendations
returned by the job specified in the C<InferenceRecommendationsJobName>
field.

Specify either this field or the C<EndpointName> field.



=head2 ScalingPolicyObjective => L<Paws::SageMaker::ScalingPolicyObjective>

An object where you specify the anticipated traffic pattern for an
endpoint.



=head2 TargetCpuUtilizationPerCore => Int

The percentage of how much utilization you want an instance to use
before autoscaling. The default value is 50%.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScalingConfigurationRecommendation in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


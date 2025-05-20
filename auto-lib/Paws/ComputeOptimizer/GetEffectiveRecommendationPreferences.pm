
package Paws::ComputeOptimizer::GetEffectiveRecommendationPreferences;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEffectiveRecommendationPreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetEffectiveRecommendationPreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEffectiveRecommendationPreferences - Arguments for method GetEffectiveRecommendationPreferences on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEffectiveRecommendationPreferences on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetEffectiveRecommendationPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEffectiveRecommendationPreferences.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetEffectiveRecommendationPreferencesResponse =
      $compute -optimizer->GetEffectiveRecommendationPreferences(
      ResourceArn => 'MyResourceArn',

      );

    # Results:
    my $EnhancedInfrastructureMetrics =
      $GetEffectiveRecommendationPreferencesResponse
      ->EnhancedInfrastructureMetrics;
    my $ExternalMetricsPreference =
      $GetEffectiveRecommendationPreferencesResponse->ExternalMetricsPreference;
    my $LookBackPeriod =
      $GetEffectiveRecommendationPreferencesResponse->LookBackPeriod;
    my $PreferredResources =
      $GetEffectiveRecommendationPreferencesResponse->PreferredResources;
    my $UtilizationPreferences =
      $GetEffectiveRecommendationPreferencesResponse->UtilizationPreferences;

# Returns a L<Paws::ComputeOptimizer::GetEffectiveRecommendationPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetEffectiveRecommendationPreferences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which to confirm
effective recommendation preferences. Only EC2 instance and Auto
Scaling group ARNs are currently supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEffectiveRecommendationPreferences in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


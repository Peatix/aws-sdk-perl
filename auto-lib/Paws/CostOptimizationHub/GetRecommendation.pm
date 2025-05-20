
package Paws::CostOptimizationHub::GetRecommendation;
  use Moose;
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostOptimizationHub::GetRecommendationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::GetRecommendation - Arguments for method GetRecommendation on L<Paws::CostOptimizationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendation on the
L<Cost Optimization Hub|Paws::CostOptimizationHub> service. Use the attributes of this class
as arguments to method GetRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendation.

=head1 SYNOPSIS

    my $cost-optimization-hub = Paws->service('CostOptimizationHub');
    my $GetRecommendationResponse = $cost -optimization-hub->GetRecommendation(
      RecommendationId => 'MyString',

    );

    # Results:
    my $AccountId  = $GetRecommendationResponse->AccountId;
    my $ActionType = $GetRecommendationResponse->ActionType;
    my $CostCalculationLookbackPeriodInDays =
      $GetRecommendationResponse->CostCalculationLookbackPeriodInDays;
    my $CurrencyCode = $GetRecommendationResponse->CurrencyCode;
    my $CurrentResourceDetails =
      $GetRecommendationResponse->CurrentResourceDetails;
    my $CurrentResourceType  = $GetRecommendationResponse->CurrentResourceType;
    my $EstimatedMonthlyCost = $GetRecommendationResponse->EstimatedMonthlyCost;
    my $EstimatedMonthlySavings =
      $GetRecommendationResponse->EstimatedMonthlySavings;
    my $EstimatedSavingsOverCostCalculationLookbackPeriod =
      $GetRecommendationResponse
      ->EstimatedSavingsOverCostCalculationLookbackPeriod;
    my $EstimatedSavingsPercentage =
      $GetRecommendationResponse->EstimatedSavingsPercentage;
    my $ImplementationEffort = $GetRecommendationResponse->ImplementationEffort;
    my $LastRefreshTimestamp = $GetRecommendationResponse->LastRefreshTimestamp;
    my $RecommendationId     = $GetRecommendationResponse->RecommendationId;
    my $RecommendationLookbackPeriodInDays =
      $GetRecommendationResponse->RecommendationLookbackPeriodInDays;
    my $RecommendedResourceDetails =
      $GetRecommendationResponse->RecommendedResourceDetails;
    my $RecommendedResourceType =
      $GetRecommendationResponse->RecommendedResourceType;
    my $Region           = $GetRecommendationResponse->Region;
    my $ResourceArn      = $GetRecommendationResponse->ResourceArn;
    my $ResourceId       = $GetRecommendationResponse->ResourceId;
    my $RestartNeeded    = $GetRecommendationResponse->RestartNeeded;
    my $RollbackPossible = $GetRecommendationResponse->RollbackPossible;
    my $Source           = $GetRecommendationResponse->Source;
    my $Tags             = $GetRecommendationResponse->Tags;

    # Returns a L<Paws::CostOptimizationHub::GetRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub/GetRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommendationId => Str

The ID for the recommendation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendation in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


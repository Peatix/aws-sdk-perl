
package Paws::CostOptimizationHub::GetRecommendationResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId' );
  has ActionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionType' );
  has CostCalculationLookbackPeriodInDays => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'costCalculationLookbackPeriodInDays' );
  has CurrencyCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currencyCode' );
  has CurrentResourceDetails => (is => 'ro', isa => 'Paws::CostOptimizationHub::ResourceDetails', traits => ['NameInRequest'], request_name => 'currentResourceDetails' );
  has CurrentResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentResourceType' );
  has EstimatedMonthlyCost => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'estimatedMonthlyCost' );
  has EstimatedMonthlySavings => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'estimatedMonthlySavings' );
  has EstimatedSavingsOverCostCalculationLookbackPeriod => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'estimatedSavingsOverCostCalculationLookbackPeriod' );
  has EstimatedSavingsPercentage => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'estimatedSavingsPercentage' );
  has ImplementationEffort => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'implementationEffort' );
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRefreshTimestamp' );
  has RecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationId' );
  has RecommendationLookbackPeriodInDays => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'recommendationLookbackPeriodInDays' );
  has RecommendedResourceDetails => (is => 'ro', isa => 'Paws::CostOptimizationHub::ResourceDetails', traits => ['NameInRequest'], request_name => 'recommendedResourceDetails' );
  has RecommendedResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendedResourceType' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' );
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId' );
  has RestartNeeded => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'restartNeeded' );
  has RollbackPossible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'rollbackPossible' );
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CostOptimizationHub::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::GetRecommendationResponse

=head1 ATTRIBUTES


=head2 AccountId => Str

The account to which the recommendation applies.


=head2 ActionType => Str

The type of action you can take by adopting the recommendation.

Valid values are: C<"Rightsize">, C<"Stop">, C<"Upgrade">, C<"PurchaseSavingsPlans">, C<"PurchaseReservedInstances">, C<"MigrateToGraviton">, C<"Delete">, C<"ScaleIn">
=head2 CostCalculationLookbackPeriodInDays => Int

The lookback period used to calculate cost impact for a recommendation.


=head2 CurrencyCode => Str

The currency code used for the recommendation.


=head2 CurrentResourceDetails => L<Paws::CostOptimizationHub::ResourceDetails>

The details for the resource.


=head2 CurrentResourceType => Str

The type of resource.

Valid values are: C<"Ec2Instance">, C<"LambdaFunction">, C<"EbsVolume">, C<"EcsService">, C<"Ec2AutoScalingGroup">, C<"Ec2InstanceSavingsPlans">, C<"ComputeSavingsPlans">, C<"SageMakerSavingsPlans">, C<"Ec2ReservedInstances">, C<"RdsReservedInstances">, C<"OpenSearchReservedInstances">, C<"RedshiftReservedInstances">, C<"ElastiCacheReservedInstances">, C<"RdsDbInstanceStorage">, C<"RdsDbInstance">, C<"DynamoDbReservedCapacity">, C<"MemoryDbReservedInstances">
=head2 EstimatedMonthlyCost => Num

The estimated monthly cost of the current resource. For Reserved
Instances and Savings Plans, it refers to the cost for eligible usage.


=head2 EstimatedMonthlySavings => Num

The estimated monthly savings amount for the recommendation.


=head2 EstimatedSavingsOverCostCalculationLookbackPeriod => Num

The estimated savings amount over the lookback period used to calculate
cost impact for a recommendation.


=head2 EstimatedSavingsPercentage => Num

The estimated savings percentage relative to the total cost over the
cost calculation lookback period.


=head2 ImplementationEffort => Str

The effort required to implement the recommendation.

Valid values are: C<"VeryLow">, C<"Low">, C<"Medium">, C<"High">, C<"VeryHigh">
=head2 LastRefreshTimestamp => Str

The time when the recommendation was last generated.


=head2 RecommendationId => Str

The ID for the recommendation.


=head2 RecommendationLookbackPeriodInDays => Int

The lookback period that's used to generate the recommendation.


=head2 RecommendedResourceDetails => L<Paws::CostOptimizationHub::ResourceDetails>

The details about the recommended resource.


=head2 RecommendedResourceType => Str

The resource type of the recommendation.

Valid values are: C<"Ec2Instance">, C<"LambdaFunction">, C<"EbsVolume">, C<"EcsService">, C<"Ec2AutoScalingGroup">, C<"Ec2InstanceSavingsPlans">, C<"ComputeSavingsPlans">, C<"SageMakerSavingsPlans">, C<"Ec2ReservedInstances">, C<"RdsReservedInstances">, C<"OpenSearchReservedInstances">, C<"RedshiftReservedInstances">, C<"ElastiCacheReservedInstances">, C<"RdsDbInstanceStorage">, C<"RdsDbInstance">, C<"DynamoDbReservedCapacity">, C<"MemoryDbReservedInstances">
=head2 Region => Str

The Amazon Web Services Region of the resource.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.


=head2 ResourceId => Str

The unique identifier for the resource. This is the same as the Amazon
Resource Name (ARN), if available.


=head2 RestartNeeded => Bool

Whether or not implementing the recommendation requires a restart.


=head2 RollbackPossible => Bool

Whether or not implementing the recommendation can be rolled back.


=head2 Source => Str

The source of the recommendation.

Valid values are: C<"ComputeOptimizer">, C<"CostExplorer">
=head2 Tags => ArrayRef[L<Paws::CostOptimizationHub::Tag>]

A list of tags associated with the resource for which the
recommendation exists.


=head2 _request_id => Str


=cut

1;
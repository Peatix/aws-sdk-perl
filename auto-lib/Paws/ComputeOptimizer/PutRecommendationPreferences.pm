
package Paws::ComputeOptimizer::PutRecommendationPreferences;
  use Moose;
  has EnhancedInfrastructureMetrics => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enhancedInfrastructureMetrics' );
  has ExternalMetricsPreference => (is => 'ro', isa => 'Paws::ComputeOptimizer::ExternalMetricsPreference', traits => ['NameInRequest'], request_name => 'externalMetricsPreference' );
  has InferredWorkloadTypes => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferredWorkloadTypes' );
  has LookBackPeriod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lookBackPeriod' );
  has PreferredResources => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::PreferredResource]', traits => ['NameInRequest'], request_name => 'preferredResources' );
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType' , required => 1);
  has SavingsEstimationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsEstimationMode' );
  has Scope => (is => 'ro', isa => 'Paws::ComputeOptimizer::Scope', traits => ['NameInRequest'], request_name => 'scope' );
  has UtilizationPreferences => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::UtilizationPreference]', traits => ['NameInRequest'], request_name => 'utilizationPreferences' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecommendationPreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::PutRecommendationPreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::PutRecommendationPreferences - Arguments for method PutRecommendationPreferences on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecommendationPreferences on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method PutRecommendationPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecommendationPreferences.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $PutRecommendationPreferencesResponse =
      $compute -optimizer->PutRecommendationPreferences(
      ResourceType                  => 'Ec2Instance',
      EnhancedInfrastructureMetrics => 'Active',        # OPTIONAL
      ExternalMetricsPreference     => {
        Source =>
          'Datadog',   # values: Datadog, Dynatrace, NewRelic, Instana; OPTIONAL
      },    # OPTIONAL
      InferredWorkloadTypes => 'Active',     # OPTIONAL
      LookBackPeriod        => 'DAYS_14',    # OPTIONAL
      PreferredResources    => [
        {
          ExcludeList => [ 'MyPreferredResourceValue', ... ],    # OPTIONAL
          IncludeList => [ 'MyPreferredResourceValue', ... ],    # OPTIONAL
          Name => 'Ec2InstanceTypes',    # values: Ec2InstanceTypes; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SavingsEstimationMode => 'AfterDiscounts',    # OPTIONAL
      Scope                 => {
        Name => 'Organization'
        ,    # values: Organization, AccountId, ResourceArn; OPTIONAL
        Value => 'MyScopeValue',    # OPTIONAL
      },    # OPTIONAL
      UtilizationPreferences => [
        {
          MetricName => 'CpuUtilization'
          ,    # values: CpuUtilization, MemoryUtilization; OPTIONAL
          MetricParameters => {
            Headroom => 'PERCENT_30'
            ,  # values: PERCENT_30, PERCENT_20, PERCENT_10, PERCENT_0; OPTIONAL
            Threshold => 'P90',    # values: P90, P95, P99_5; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/PutRecommendationPreferences>

=head1 ATTRIBUTES


=head2 EnhancedInfrastructureMetrics => Str

The status of the enhanced infrastructure metrics recommendation
preference to create or update.

Specify the C<Active> status to activate the preference, or specify
C<Inactive> to deactivate the preference.

For more information, see Enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.

Valid values are: C<"Active">, C<"Inactive">

=head2 ExternalMetricsPreference => L<Paws::ComputeOptimizer::ExternalMetricsPreference>

The provider of the external metrics recommendation preference to
create or update.

Specify a valid provider in the C<source> field to activate the
preference. To delete this preference, see the
DeleteRecommendationPreferences action.

This preference can only be set for the C<Ec2Instance> resource type.

For more information, see External metrics ingestion
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html)
in the I<Compute Optimizer User Guide>.



=head2 InferredWorkloadTypes => Str

The status of the inferred workload types recommendation preference to
create or update.

The inferred workload type feature is active by default. To deactivate
it, create a recommendation preference.

Specify the C<Inactive> status to deactivate the feature, or specify
C<Active> to activate it.

For more information, see Inferred workload types
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html)
in the I<Compute Optimizer User Guide>.

Valid values are: C<"Active">, C<"Inactive">

=head2 LookBackPeriod => Str

The preference to control the number of days the utilization metrics of
the Amazon Web Services resource are analyzed. When this preference
isn't specified, we use the default value C<DAYS_14>.

You can only set this preference for the Amazon EC2 instance and Auto
Scaling group resource types.

=over

=item *

Amazon EC2 instance lookback preferences can be set at the
organization, account, and resource levels.

=item *

Auto Scaling group lookback preferences can only be set at the resource
level.

=back


Valid values are: C<"DAYS_14">, C<"DAYS_32">, C<"DAYS_93">

=head2 PreferredResources => ArrayRef[L<Paws::ComputeOptimizer::PreferredResource>]

The preference to control which resource type values are considered
when generating rightsizing recommendations. You can specify this
preference as a combination of include and exclude lists. You must
specify either an C<includeList> or C<excludeList>. If the preference
is an empty set of resource type values, an error occurs.

You can only set this preference for the Amazon EC2 instance and Auto
Scaling group resource types.



=head2 B<REQUIRED> ResourceType => Str

The target resource type of the recommendation preference to create.

The C<Ec2Instance> option encompasses standalone instances and
instances that are part of Auto Scaling groups. The C<AutoScalingGroup>
option encompasses only instances that are part of an Auto Scaling
group.

Valid values are: C<"Ec2Instance">, C<"AutoScalingGroup">, C<"EbsVolume">, C<"LambdaFunction">, C<"NotApplicable">, C<"EcsService">, C<"License">, C<"RdsDBInstance">, C<"Idle">

=head2 SavingsEstimationMode => Str

The status of the savings estimation mode preference to create or
update.

Specify the C<AfterDiscounts> status to activate the preference, or
specify C<BeforeDiscounts> to deactivate the preference.

Only the account manager or delegated administrator of your
organization can activate this preference.

For more information, see Savings estimation mode
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/savings-estimation-mode.html)
in the I<Compute Optimizer User Guide>.

Valid values are: C<"AfterDiscounts">, C<"BeforeDiscounts">

=head2 Scope => L<Paws::ComputeOptimizer::Scope>

An object that describes the scope of the recommendation preference to
create.

You can create recommendation preferences at the organization level
(for management accounts of an organization only), account level, and
resource level. For more information, see Activating enhanced
infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.

You cannot create recommendation preferences for Auto Scaling groups at
the organization and account levels. You can create recommendation
preferences for Auto Scaling groups only at the resource level by
specifying a scope name of C<ResourceArn> and a scope value of the Auto
Scaling group Amazon Resource Name (ARN). This will configure the
preference for all instances that are part of the specified Auto
Scaling group. You also cannot create recommendation preferences at the
resource level for instances that are part of an Auto Scaling group.
You can create recommendation preferences at the resource level only
for standalone instances.



=head2 UtilizationPreferences => ArrayRef[L<Paws::ComputeOptimizer::UtilizationPreference>]

The preference to control the resourceE<rsquo>s CPU utilization
threshold, CPU utilization headroom, and memory utilization headroom.
When this preference isn't specified, we use the following default
values.

CPU utilization:

=over

=item *

C<P99_5> for threshold

=item *

C<PERCENT_20> for headroom

=back

Memory utilization:

=over

=item *

C<PERCENT_20> for headroom

=back

=over

=item *

You can only set CPU and memory utilization preferences for the Amazon
EC2 instance resource type.

=item *

The threshold setting isnE<rsquo>t available for memory utilization.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecommendationPreferences in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


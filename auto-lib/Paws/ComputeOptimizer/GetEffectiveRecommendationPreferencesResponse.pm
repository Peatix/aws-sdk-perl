
package Paws::ComputeOptimizer::GetEffectiveRecommendationPreferencesResponse;
  use Moose;
  has EnhancedInfrastructureMetrics => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enhancedInfrastructureMetrics' );
  has ExternalMetricsPreference => (is => 'ro', isa => 'Paws::ComputeOptimizer::ExternalMetricsPreference', traits => ['NameInRequest'], request_name => 'externalMetricsPreference' );
  has LookBackPeriod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lookBackPeriod' );
  has PreferredResources => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::EffectivePreferredResource]', traits => ['NameInRequest'], request_name => 'preferredResources' );
  has UtilizationPreferences => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::UtilizationPreference]', traits => ['NameInRequest'], request_name => 'utilizationPreferences' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetEffectiveRecommendationPreferencesResponse

=head1 ATTRIBUTES


=head2 EnhancedInfrastructureMetrics => Str

The status of the enhanced infrastructure metrics recommendation
preference. Considers all applicable preferences that you might have
set at the resource, account, and organization level.

A status of C<Active> confirms that the preference is applied in the
latest recommendation refresh, and a status of C<Inactive> confirms
that it's not yet applied to recommendations.

To validate whether the preference is applied to your last generated
set of recommendations, review the
C<effectiveRecommendationPreferences> value in the response of the
GetAutoScalingGroupRecommendations and GetEC2InstanceRecommendations
actions.

For more information, see Enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.

Valid values are: C<"Active">, C<"Inactive">
=head2 ExternalMetricsPreference => L<Paws::ComputeOptimizer::ExternalMetricsPreference>

The provider of the external metrics recommendation preference.
Considers all applicable preferences that you might have set at the
account and organization level.

If the preference is applied in the latest recommendation refresh, an
object with a valid C<source> value appears in the response. If the
preference isn't applied to the recommendations already, then this
object doesn't appear in the response.

To validate whether the preference is applied to your last generated
set of recommendations, review the
C<effectiveRecommendationPreferences> value in the response of the
GetEC2InstanceRecommendations actions.

For more information, see Enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html)
in the I<Compute Optimizer User Guide>.


=head2 LookBackPeriod => Str

The number of days the utilization metrics of the Amazon Web Services
resource are analyzed.

To validate that the preference is applied to your last generated set
of recommendations, review the C<effectiveRecommendationPreferences>
value in the response of the GetAutoScalingGroupRecommendations or
GetEC2InstanceRecommendations actions.

Valid values are: C<"DAYS_14">, C<"DAYS_32">, C<"DAYS_93">
=head2 PreferredResources => ArrayRef[L<Paws::ComputeOptimizer::EffectivePreferredResource>]

The resource type values that are considered as candidates when
generating rightsizing recommendations. This object resolves any
wildcard expressions and returns the effective list of candidate
resource type values. It also considers all applicable preferences that
you set at the resource, account, and organization level.

To validate that the preference is applied to your last generated set
of recommendations, review the C<effectiveRecommendationPreferences>
value in the response of the GetAutoScalingGroupRecommendations or
GetEC2InstanceRecommendations actions.


=head2 UtilizationPreferences => ArrayRef[L<Paws::ComputeOptimizer::UtilizationPreference>]

The resourceE<rsquo>s CPU and memory utilization preferences, such as
threshold and headroom, that were used to generate rightsizing
recommendations. It considers all applicable preferences that you set
at the resource, account, and organization level.

To validate that the preference is applied to your last generated set
of recommendations, review the C<effectiveRecommendationPreferences>
value in the response of the GetAutoScalingGroupRecommendations or
GetEC2InstanceRecommendations actions.


=head2 _request_id => Str


=cut

1;
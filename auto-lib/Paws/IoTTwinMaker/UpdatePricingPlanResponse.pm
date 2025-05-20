
package Paws::IoTTwinMaker::UpdatePricingPlanResponse;
  use Moose;
  has CurrentPricingPlan => (is => 'ro', isa => 'Paws::IoTTwinMaker::PricingPlan', traits => ['NameInRequest'], request_name => 'currentPricingPlan', required => 1);
  has PendingPricingPlan => (is => 'ro', isa => 'Paws::IoTTwinMaker::PricingPlan', traits => ['NameInRequest'], request_name => 'pendingPricingPlan');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdatePricingPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentPricingPlan => L<Paws::IoTTwinMaker::PricingPlan>

Update the current pricing plan.


=head2 PendingPricingPlan => L<Paws::IoTTwinMaker::PricingPlan>

Update the pending pricing plan.


=head2 _request_id => Str


=cut


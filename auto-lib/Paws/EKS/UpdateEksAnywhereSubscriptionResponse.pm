
package Paws::EKS::UpdateEksAnywhereSubscriptionResponse;
  use Moose;
  has Subscription => (is => 'ro', isa => 'Paws::EKS::EksAnywhereSubscription', traits => ['NameInRequest'], request_name => 'subscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateEksAnywhereSubscriptionResponse

=head1 ATTRIBUTES


=head2 Subscription => L<Paws::EKS::EksAnywhereSubscription>

The full description of the updated subscription.


=head2 _request_id => Str


=cut


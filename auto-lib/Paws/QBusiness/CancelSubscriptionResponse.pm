
package Paws::QBusiness::CancelSubscriptionResponse;
  use Moose;
  has CurrentSubscription => (is => 'ro', isa => 'Paws::QBusiness::SubscriptionDetails', traits => ['NameInRequest'], request_name => 'currentSubscription');
  has NextSubscription => (is => 'ro', isa => 'Paws::QBusiness::SubscriptionDetails', traits => ['NameInRequest'], request_name => 'nextSubscription');
  has SubscriptionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CancelSubscriptionResponse

=head1 ATTRIBUTES


=head2 CurrentSubscription => L<Paws::QBusiness::SubscriptionDetails>

The type of your current Amazon Q Business subscription.


=head2 NextSubscription => L<Paws::QBusiness::SubscriptionDetails>

The type of the Amazon Q Business subscription for the next month.


=head2 SubscriptionArn => Str

The Amazon Resource Name (ARN) of the Amazon Q Business subscription
being cancelled.


=head2 _request_id => Str


=cut


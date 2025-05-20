
package Paws::CodeCatalyst::GetSubscriptionResponse;
  use Moose;
  has AwsAccountName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountName');
  has PendingSubscriptionStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingSubscriptionStartTime');
  has PendingSubscriptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pendingSubscriptionType');
  has SubscriptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSubscriptionResponse

=head1 ATTRIBUTES


=head2 AwsAccountName => Str

The display name of the Amazon Web Services account used for billing
for the space.


=head2 PendingSubscriptionStartTime => Str

The day and time the pending change will be applied to the space, in
coordinated universal time (UTC) timestamp format as specified in RFC
3339 (https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 PendingSubscriptionType => Str

The type of the billing plan that the space will be changed to at the
start of the next billing cycle. This applies only to changes that
reduce the functionality available for the space. Billing plan changes
that increase functionality are applied immediately. For more
information, see Pricing (https://codecatalyst.aws/explore/pricing).


=head2 SubscriptionType => Str

The type of the billing plan for the space.


=head2 _request_id => Str


=cut


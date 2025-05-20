
package Paws::MailManager::GetAddonSubscriptionResponse;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str');
  has AddonSubscriptionArn => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddonSubscriptionResponse

=head1 ATTRIBUTES


=head2 AddonName => Str

The name of the Add On for the subscription.


=head2 AddonSubscriptionArn => Str

Amazon Resource Name (ARN) for the subscription.


=head2 CreatedTimestamp => Str

The timestamp of when the Add On subscription was created.


=head2 _request_id => Str


=cut

1;
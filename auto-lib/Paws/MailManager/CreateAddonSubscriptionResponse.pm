
package Paws::MailManager::CreateAddonSubscriptionResponse;
  use Moose;
  has AddonSubscriptionId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddonSubscriptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonSubscriptionId => Str

The unique ID of the Add On subscription created by this API.


=head2 _request_id => Str


=cut

1;
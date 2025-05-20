
package Paws::MailManager::GetAddonInstanceResponse;
  use Moose;
  has AddonInstanceArn => (is => 'ro', isa => 'Str');
  has AddonName => (is => 'ro', isa => 'Str');
  has AddonSubscriptionId => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddonInstanceResponse

=head1 ATTRIBUTES


=head2 AddonInstanceArn => Str

The Amazon Resource Name (ARN) of the Add On instance.


=head2 AddonName => Str

The name of the Add On provider associated to the subscription of the
instance.


=head2 AddonSubscriptionId => Str

The subscription ID associated to the instance.


=head2 CreatedTimestamp => Str

The timestamp of when the Add On instance was created.


=head2 _request_id => Str


=cut

1;
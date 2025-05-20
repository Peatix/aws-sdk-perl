
package Paws::MailManager::CreateAddonInstanceResponse;
  use Moose;
  has AddonInstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddonInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonInstanceId => Str

The unique ID of the Add On instance created by this API.


=head2 _request_id => Str


=cut

1;
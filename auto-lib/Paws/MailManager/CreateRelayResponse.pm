
package Paws::MailManager::CreateRelayResponse;
  use Moose;
  has RelayId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateRelayResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelayId => Str

A unique identifier of the created relay resource.


=head2 _request_id => Str


=cut

1;
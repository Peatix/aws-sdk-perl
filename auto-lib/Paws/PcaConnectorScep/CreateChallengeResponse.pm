
package Paws::PcaConnectorScep::CreateChallengeResponse;
  use Moose;
  has Challenge => (is => 'ro', isa => 'Paws::PcaConnectorScep::Challenge');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::CreateChallengeResponse

=head1 ATTRIBUTES


=head2 Challenge => L<Paws::PcaConnectorScep::Challenge>

Returns the challenge details for the specified connector.


=head2 _request_id => Str


=cut



package Paws::PcaConnectorAd::GetConnectorResponse;
  use Moose;
  has Connector => (is => 'ro', isa => 'Paws::PcaConnectorAd::Connector');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::GetConnectorResponse

=head1 ATTRIBUTES


=head2 Connector => L<Paws::PcaConnectorAd::Connector>

A structure that contains information about your connector.


=head2 _request_id => Str


=cut


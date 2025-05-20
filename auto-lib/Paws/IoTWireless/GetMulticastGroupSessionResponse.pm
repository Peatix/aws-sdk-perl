
package Paws::IoTWireless::GetMulticastGroupSessionResponse;
  use Moose;
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANMulticastSession');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetMulticastGroupSessionResponse

=head1 ATTRIBUTES


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticastSession>




=head2 _request_id => Str


=cut


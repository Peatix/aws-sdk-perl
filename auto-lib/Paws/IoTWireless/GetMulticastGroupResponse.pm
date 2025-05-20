
package Paws::IoTWireless::GetMulticastGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANMulticastGet');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetMulticastGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str




=head2 CreatedAt => Str




=head2 Description => Str




=head2 Id => Str




=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANMulticastGet>




=head2 Name => Str




=head2 Status => Str




=head2 _request_id => Str


=cut


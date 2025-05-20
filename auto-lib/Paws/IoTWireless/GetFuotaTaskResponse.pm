
package Paws::IoTWireless::GetFuotaTaskResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Descriptor => (is => 'ro', isa => 'Str');
  has FirmwareUpdateImage => (is => 'ro', isa => 'Str');
  has FirmwareUpdateRole => (is => 'ro', isa => 'Str');
  has FragmentIntervalMS => (is => 'ro', isa => 'Int');
  has FragmentSizeBytes => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANFuotaTaskGetInfo');
  has Name => (is => 'ro', isa => 'Str');
  has RedundancyPercent => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetFuotaTaskResponse

=head1 ATTRIBUTES


=head2 Arn => Str




=head2 CreatedAt => Str




=head2 Description => Str




=head2 Descriptor => Str




=head2 FirmwareUpdateImage => Str




=head2 FirmwareUpdateRole => Str




=head2 FragmentIntervalMS => Int




=head2 FragmentSizeBytes => Int




=head2 Id => Str




=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANFuotaTaskGetInfo>




=head2 Name => Str




=head2 RedundancyPercent => Int




=head2 Status => Str



Valid values are: C<"Pending">, C<"FuotaSession_Waiting">, C<"In_FuotaSession">, C<"FuotaDone">, C<"Delete_Waiting">
=head2 _request_id => Str


=cut


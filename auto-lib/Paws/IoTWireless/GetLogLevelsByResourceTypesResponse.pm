
package Paws::IoTWireless::GetLogLevelsByResourceTypesResponse;
  use Moose;
  has DefaultLogLevel => (is => 'ro', isa => 'Str');
  has FuotaTaskLogOptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::FuotaTaskLogOption]');
  has WirelessDeviceLogOptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessDeviceLogOption]');
  has WirelessGatewayLogOptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::WirelessGatewayLogOption]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetLogLevelsByResourceTypesResponse

=head1 ATTRIBUTES


=head2 DefaultLogLevel => Str



Valid values are: C<"INFO">, C<"ERROR">, C<"DISABLED">
=head2 FuotaTaskLogOptions => ArrayRef[L<Paws::IoTWireless::FuotaTaskLogOption>]




=head2 WirelessDeviceLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessDeviceLogOption>]




=head2 WirelessGatewayLogOptions => ArrayRef[L<Paws::IoTWireless::WirelessGatewayLogOption>]




=head2 _request_id => Str


=cut


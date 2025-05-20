
package Paws::IoTWireless::GetNetworkAnalyzerConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has MulticastGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has TraceContent => (is => 'ro', isa => 'Paws::IoTWireless::TraceContent');
  has WirelessDevices => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WirelessGateways => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetNetworkAnalyzerConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the new resource.


=head2 Description => Str




=head2 MulticastGroups => ArrayRef[Str|Undef]

List of multicast group resources that have been added to the network
analyzer configuration.


=head2 Name => Str




=head2 TraceContent => L<Paws::IoTWireless::TraceContent>




=head2 WirelessDevices => ArrayRef[Str|Undef]

List of wireless device resources that have been added to the network
analyzer configuration.


=head2 WirelessGateways => ArrayRef[Str|Undef]

List of wireless gateway resources that have been added to the network
analyzer configuration.


=head2 _request_id => Str


=cut


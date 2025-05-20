
package Paws::NetworkMonitor::CreateProbeOutput;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addressFamily');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has DestinationPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'destinationPort');
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt');
  has PacketSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'packetSize');
  has ProbeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'probeArn');
  has ProbeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'probeId');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol', required => 1);
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceArn', required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::CreateProbeOutput

=head1 ATTRIBUTES


=head2 AddressFamily => Str

Indicates whether the IP address is C<IPV4> or C<IPV6>.

Valid values are: C<"IPV4">, C<"IPV6">
=head2 CreatedAt => Str

The time and date that the probe was created.


=head2 B<REQUIRED> Destination => Str

The destination IP address for the monitor. This must be either an IPv4
or IPv6 address.


=head2 DestinationPort => Int

The port associated with the C<destination>. This is required only if
the C<protocol> is C<TCP> and must be a number between C<1> and
C<65536>.


=head2 ModifiedAt => Str

The time and date when the probe was last modified.


=head2 PacketSize => Int

The size of the packets sent between the source and destination. This
must be a number between C<56> and C<8500>.


=head2 ProbeArn => Str

The ARN of the probe.


=head2 ProbeId => Str

The ID of the probe for which details are returned.


=head2 B<REQUIRED> Protocol => Str

The protocol used for the network traffic between the C<source> and
C<destination>. This must be either C<TCP> or C<ICMP>.

Valid values are: C<"TCP">, C<"ICMP">
=head2 B<REQUIRED> SourceArn => Str

The ARN of the probe.


=head2 State => Str

The state of the probe.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs assigned to the probe.


=head2 VpcId => Str

The ID of the source VPC or subnet.


=head2 _request_id => Str


=cut



package Paws::NetworkMonitor::UpdateProbeOutput;
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

Paws::NetworkMonitor::UpdateProbeOutput

=head1 ATTRIBUTES


=head2 AddressFamily => Str

The updated IP address family. This must be either C<IPV4> or C<IPV6>.

Valid values are: C<"IPV4">, C<"IPV6">
=head2 CreatedAt => Str

The time and date that the probe was created.


=head2 B<REQUIRED> Destination => Str

The updated destination IP address for the probe.


=head2 DestinationPort => Int

The updated destination port. This must be a number between C<1> and
C<65536>.


=head2 ModifiedAt => Str

The time and date that the probe was last updated.


=head2 PacketSize => Int

The updated packet size for the probe.


=head2 ProbeArn => Str

The updated ARN of the probe.


=head2 ProbeId => Str

The updated ID of the probe.


=head2 B<REQUIRED> Protocol => Str

The updated protocol for the probe.

Valid values are: C<"TCP">, C<"ICMP">
=head2 B<REQUIRED> SourceArn => Str

The updated ARN of the source subnet.


=head2 State => Str

The state of the updated probe.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::NetworkMonitor::TagMap>

Update tags for a probe.


=head2 VpcId => Str

The updated ID of the source VPC subnet ID.


=head2 _request_id => Str


=cut


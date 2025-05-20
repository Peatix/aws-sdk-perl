
package Paws::NetworkMonitor::UpdateProbe;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination');
  has DestinationPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'destinationPort');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has PacketSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'packetSize');
  has ProbeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'probeId', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProbe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/probes/{probeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::UpdateProbeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::UpdateProbe - Arguments for method UpdateProbe on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProbe on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method UpdateProbe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProbe.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $UpdateProbeOutput = $networkmonitor->UpdateProbe(
      MonitorName     => 'MyResourceName',
      ProbeId         => 'MyProbeId',
      Destination     => 'MyDestination',    # OPTIONAL
      DestinationPort => 1,                  # OPTIONAL
      PacketSize      => 1,                  # OPTIONAL
      Protocol        => 'TCP',              # OPTIONAL
      State           => 'PENDING',          # OPTIONAL
    );

    # Results:
    my $AddressFamily   = $UpdateProbeOutput->AddressFamily;
    my $CreatedAt       = $UpdateProbeOutput->CreatedAt;
    my $Destination     = $UpdateProbeOutput->Destination;
    my $DestinationPort = $UpdateProbeOutput->DestinationPort;
    my $ModifiedAt      = $UpdateProbeOutput->ModifiedAt;
    my $PacketSize      = $UpdateProbeOutput->PacketSize;
    my $ProbeArn        = $UpdateProbeOutput->ProbeArn;
    my $ProbeId         = $UpdateProbeOutput->ProbeId;
    my $Protocol        = $UpdateProbeOutput->Protocol;
    my $SourceArn       = $UpdateProbeOutput->SourceArn;
    my $State           = $UpdateProbeOutput->State;
    my $Tags            = $UpdateProbeOutput->Tags;
    my $VpcId           = $UpdateProbeOutput->VpcId;

    # Returns a L<Paws::NetworkMonitor::UpdateProbeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/UpdateProbe>

=head1 ATTRIBUTES


=head2 Destination => Str

The updated IP address for the probe destination. This must be either
an IPv4 or IPv6 address.



=head2 DestinationPort => Int

The updated port for the probe destination. This is required only if
the C<protocol> is C<TCP> and must be a number between C<1> and
C<65536>.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor that the probe was updated for.



=head2 PacketSize => Int

he updated packets size for network traffic between the source and
destination. This must be a number between C<56> and C<8500>.



=head2 B<REQUIRED> ProbeId => Str

The ID of the probe to update.



=head2 Protocol => Str

The updated network protocol for the destination. This can be either
C<TCP> or C<ICMP>. If the protocol is C<TCP>, then C<port> is also
required.

Valid values are: C<"TCP">, C<"ICMP">

=head2 State => Str

The state of the probe update.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProbe in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


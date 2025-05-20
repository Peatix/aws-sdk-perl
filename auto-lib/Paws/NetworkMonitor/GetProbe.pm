
package Paws::NetworkMonitor::GetProbe;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has ProbeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'probeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProbe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/probes/{probeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::GetProbeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::GetProbe - Arguments for method GetProbe on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProbe on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method GetProbe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProbe.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $GetProbeOutput = $networkmonitor->GetProbe(
      MonitorName => 'MyResourceName',
      ProbeId     => 'MyProbeId',

    );

    # Results:
    my $AddressFamily   = $GetProbeOutput->AddressFamily;
    my $CreatedAt       = $GetProbeOutput->CreatedAt;
    my $Destination     = $GetProbeOutput->Destination;
    my $DestinationPort = $GetProbeOutput->DestinationPort;
    my $ModifiedAt      = $GetProbeOutput->ModifiedAt;
    my $PacketSize      = $GetProbeOutput->PacketSize;
    my $ProbeArn        = $GetProbeOutput->ProbeArn;
    my $ProbeId         = $GetProbeOutput->ProbeId;
    my $Protocol        = $GetProbeOutput->Protocol;
    my $SourceArn       = $GetProbeOutput->SourceArn;
    my $State           = $GetProbeOutput->State;
    my $Tags            = $GetProbeOutput->Tags;
    my $VpcId           = $GetProbeOutput->VpcId;

    # Returns a L<Paws::NetworkMonitor::GetProbeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/GetProbe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor associated with the probe. Run C<ListMonitors>
to get a list of monitor names.



=head2 B<REQUIRED> ProbeId => Str

The ID of the probe to get information about. Run C<GetMonitor> action
to get a list of probes and probe IDs for the monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProbe in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::NetworkMonitor::CreateProbe;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has Probe => (is => 'ro', isa => 'Paws::NetworkMonitor::ProbeInput', traits => ['NameInRequest'], request_name => 'probe', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProbe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/probes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::CreateProbeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::CreateProbe - Arguments for method CreateProbe on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProbe on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method CreateProbe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProbe.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $CreateProbeOutput = $networkmonitor->CreateProbe(
      MonitorName => 'MyResourceName',
      Probe       => {
        Destination     => 'MyDestination',    # min: 1, max: 255
        Protocol        => 'TCP',              # values: TCP, ICMP
        SourceArn       => 'MyArn',            # min: 20, max: 2048
        DestinationPort => 1,                  # max: 65536; OPTIONAL
        PacketSize      => 1,                  # min: 56, max: 8500; OPTIONAL
        Tags            => {
          'MyTagKey' => 'MyTagValue',   # key: min: 1, max: 128, value: max: 256
        },    # max: 200; OPTIONAL
      },
      ClientToken => 'MyString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AddressFamily   = $CreateProbeOutput->AddressFamily;
    my $CreatedAt       = $CreateProbeOutput->CreatedAt;
    my $Destination     = $CreateProbeOutput->Destination;
    my $DestinationPort = $CreateProbeOutput->DestinationPort;
    my $ModifiedAt      = $CreateProbeOutput->ModifiedAt;
    my $PacketSize      = $CreateProbeOutput->PacketSize;
    my $ProbeArn        = $CreateProbeOutput->ProbeArn;
    my $ProbeId         = $CreateProbeOutput->ProbeId;
    my $Protocol        = $CreateProbeOutput->Protocol;
    my $SourceArn       = $CreateProbeOutput->SourceArn;
    my $State           = $CreateProbeOutput->State;
    my $Tags            = $CreateProbeOutput->Tags;
    my $VpcId           = $CreateProbeOutput->VpcId;

    # Returns a L<Paws::NetworkMonitor::CreateProbeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/CreateProbe>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor to associated with the probe.



=head2 B<REQUIRED> Probe => L<Paws::NetworkMonitor::ProbeInput>

Describes the details of an individual probe for a monitor.



=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs created and assigned to the probe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProbe in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


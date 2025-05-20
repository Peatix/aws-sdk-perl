
package Paws::NetworkMonitor::CreateMonitor;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'aggregationPeriod');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorName', required => 1);
  has Probes => (is => 'ro', isa => 'ArrayRef[Paws::NetworkMonitor::CreateMonitorProbeInput]', traits => ['NameInRequest'], request_name => 'probes');
  has Tags => (is => 'ro', isa => 'Paws::NetworkMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::CreateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::CreateMonitor - Arguments for method CreateMonitor on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMonitor on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method CreateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMonitor.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $CreateMonitorOutput = $networkmonitor->CreateMonitor(
      MonitorName       => 'MyResourceName',
      AggregationPeriod => 1,                  # OPTIONAL
      ClientToken       => 'MyString',         # OPTIONAL
      Probes            => [
        {
          Destination     => 'MyDestination',    # min: 1, max: 255
          Protocol        => 'TCP',              # values: TCP, ICMP
          SourceArn       => 'MyArn',            # min: 20, max: 2048
          DestinationPort => 1,                  # max: 65536; OPTIONAL
          PacketSize      => 1,                  # min: 56, max: 8500; OPTIONAL
          ProbeTags       => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 200; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AggregationPeriod = $CreateMonitorOutput->AggregationPeriod;
    my $MonitorArn        = $CreateMonitorOutput->MonitorArn;
    my $MonitorName       = $CreateMonitorOutput->MonitorName;
    my $State             = $CreateMonitorOutput->State;
    my $Tags              = $CreateMonitorOutput->Tags;

    # Returns a L<Paws::NetworkMonitor::CreateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/CreateMonitor>

=head1 ATTRIBUTES


=head2 AggregationPeriod => Int

The time, in seconds, that metrics are aggregated and sent to Amazon
CloudWatch. Valid values are either C<30> or C<60>. C<60> is the
default if no period is chosen.



=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.



=head2 B<REQUIRED> MonitorName => Str

The name identifying the monitor. It can contain only letters,
underscores (_), or dashes (-), and can be up to 200 characters.



=head2 Probes => ArrayRef[L<Paws::NetworkMonitor::CreateMonitorProbeInput>]

Displays a list of all of the probes created for a monitor.



=head2 Tags => L<Paws::NetworkMonitor::TagMap>

The list of key-value pairs created and assigned to the monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMonitor in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


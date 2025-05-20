
package Paws::NetworkMonitor::UpdateMonitor;
  use Moose;
  has AggregationPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'aggregationPeriod', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::UpdateMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::UpdateMonitor - Arguments for method UpdateMonitor on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitor on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method UpdateMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitor.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $UpdateMonitorOutput = $networkmonitor->UpdateMonitor(
      AggregationPeriod => 1,
      MonitorName       => 'MyResourceName',

    );

    # Results:
    my $AggregationPeriod = $UpdateMonitorOutput->AggregationPeriod;
    my $MonitorArn        = $UpdateMonitorOutput->MonitorArn;
    my $MonitorName       = $UpdateMonitorOutput->MonitorName;
    my $State             = $UpdateMonitorOutput->State;
    my $Tags              = $UpdateMonitorOutput->Tags;

    # Returns a L<Paws::NetworkMonitor::UpdateMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/UpdateMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationPeriod => Int

The aggregation time, in seconds, to change to. This must be either
C<30> or C<60>.



=head2 B<REQUIRED> MonitorName => Str

The name of the monitor to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitor in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


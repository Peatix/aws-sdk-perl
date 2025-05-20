
package Paws::NetworkFlowMonitor::GetMonitor;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMonitor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::GetMonitorOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::GetMonitor - Arguments for method GetMonitor on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMonitor on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method GetMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMonitor.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $GetMonitorOutput = $networkflowmonitor->GetMonitor(
      MonitorName => 'MyResourceName',

    );

    # Results:
    my $CreatedAt       = $GetMonitorOutput->CreatedAt;
    my $LocalResources  = $GetMonitorOutput->LocalResources;
    my $ModifiedAt      = $GetMonitorOutput->ModifiedAt;
    my $MonitorArn      = $GetMonitorOutput->MonitorArn;
    my $MonitorName     = $GetMonitorOutput->MonitorName;
    my $MonitorStatus   = $GetMonitorOutput->MonitorStatus;
    my $RemoteResources = $GetMonitorOutput->RemoteResources;
    my $Tags            = $GetMonitorOutput->Tags;

    # Returns a L<Paws::NetworkFlowMonitor::GetMonitorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/GetMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMonitor in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


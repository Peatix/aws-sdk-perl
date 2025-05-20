
package Paws::NetworkMonitor::DeleteProbe;
  use Moose;
  has MonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'monitorName', required => 1);
  has ProbeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'probeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProbe');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors/{monitorName}/probes/{probeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkMonitor::DeleteProbeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor::DeleteProbe - Arguments for method DeleteProbe on L<Paws::NetworkMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProbe on the
L<Amazon CloudWatch Network Monitor|Paws::NetworkMonitor> service. Use the attributes of this class
as arguments to method DeleteProbe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProbe.

=head1 SYNOPSIS

    my $networkmonitor = Paws->service('NetworkMonitor');
    my $DeleteProbeOutput = $networkmonitor->DeleteProbe(
      MonitorName => 'MyResourceName',
      ProbeId     => 'MyProbeId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor/DeleteProbe>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor to delete.



=head2 B<REQUIRED> ProbeId => Str

The ID of the probe to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProbe in L<Paws::NetworkMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


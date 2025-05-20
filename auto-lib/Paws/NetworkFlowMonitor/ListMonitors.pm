
package Paws::NetworkFlowMonitor::ListMonitors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has MonitorStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'monitorStatus');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/monitors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFlowMonitor::ListMonitorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::ListMonitors - Arguments for method ListMonitors on L<Paws::NetworkFlowMonitor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitors on the
L<Network Flow Monitor|Paws::NetworkFlowMonitor> service. Use the attributes of this class
as arguments to method ListMonitors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitors.

=head1 SYNOPSIS

    my $networkflowmonitor = Paws->service('NetworkFlowMonitor');
    my $ListMonitorsOutput = $networkflowmonitor->ListMonitors(
      MaxResults    => 1,             # OPTIONAL
      MonitorStatus => 'PENDING',     # OPTIONAL
      NextToken     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Monitors  = $ListMonitorsOutput->Monitors;
    my $NextToken = $ListMonitorsOutput->NextToken;

    # Returns a L<Paws::NetworkFlowMonitor::ListMonitorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkflowmonitor/ListMonitors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of query results that you want to return with this call.



=head2 MonitorStatus => Str

The status of a monitor. The status can be one of the following

=over

=item *

C<PENDING>: The monitor is in the process of being created.

=item *

C<ACTIVE>: The monitor is active.

=item *

C<INACTIVE>: The monitor is inactive.

=item *

C<ERROR>: Monitor creation failed due to an error.

=item *

C<DELETING>: The monitor is in the process of being deleted.

=back


Valid values are: C<"PENDING">, C<"ACTIVE">, C<"INACTIVE">, C<"ERROR">, C<"DELETING">

=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitors in L<Paws::NetworkFlowMonitor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


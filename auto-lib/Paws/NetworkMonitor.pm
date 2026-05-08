package Paws::NetworkMonitor;
  use Moose;
  sub service { 'networkmonitor' }
  sub signing_name { 'networkmonitor' }
  sub version { '2023-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::CreateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProbe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::CreateProbe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::DeleteMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProbe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::DeleteProbe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::GetMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProbe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::GetProbe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::ListMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::UpdateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProbe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkMonitor::UpdateProbe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllMonitors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMonitors(@_, nextToken => $next_result->nextToken);
        push @{ $result->monitors }, @{ $next_result->monitors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'monitors') foreach (@{ $result->monitors });
        $result = $self->ListMonitors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'monitors') foreach (@{ $result->monitors });
    }

    return undef
  }


  sub operations { qw/CreateMonitor CreateProbe DeleteMonitor DeleteProbe GetMonitor GetProbe ListMonitors ListTagsForResource TagResource UntagResource UpdateMonitor UpdateProbe / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkMonitor - Perl Interface to AWS Amazon CloudWatch Network Monitor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NetworkMonitor');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon CloudWatch Network Monitor is an Amazon Web Services active
network monitoring service that identifies if a network issues exists
within the Amazon Web Services network or your own company network.
Within Network Monitor you'll choose the source VPCs and subnets from
the Amazon Web Services network in which you operate and then you'll
choose the destination IP addresses from your on-premises network. From
these sources and destinations, Network Monitor creates a monitor
containing all the possible source and destination combinations, each
of which is called a probe, within a single monitor. These probes then
monitor network traffic to help you identify where network issues might
be affecting your traffic.

Before you begin, ensure the Amazon Web Services CLI is configured in
the Amazon Web Services Account where you will create the Network
Monitor resource. Network Monitor doesnE<rsquo>t support creation on
cross-account resources, but you can create a Network Monitor in any
subnet belonging to a VPC owned by your Account.

For more information, see Using Amazon CloudWatch Network Monitor
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/what-is-network-monitor.html)
in the I<Amazon CloudWatch User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmonitor-2023-08-01>


=head1 METHODS

=head2 CreateMonitor

=over

=item MonitorName => Str

=item [AggregationPeriod => Int]

=item [ClientToken => Str]

=item [Probes => ArrayRef[L<Paws::NetworkMonitor::CreateMonitorProbeInput>]]

=item [Tags => L<Paws::NetworkMonitor::TagMap>]


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::CreateMonitor>

Returns: a L<Paws::NetworkMonitor::CreateMonitorOutput> instance

Creates a monitor between a source subnet and destination IP address.
Within a monitor you'll create one or more probes that monitor network
traffic between your source Amazon Web Services VPC subnets and your
destination IP addresses. Each probe then aggregates and sends metrics
to Amazon CloudWatch.

You can also create a monitor with probes using this command. For each
probe, you define the following:

=over

=item *

C<source>E<mdash>The subnet IDs where the probes will be created.

=item *

C<destination>E<mdash> The target destination IP address for the probe.

=item *

C<destinationPort>E<mdash>Required only if the protocol is C<TCP>.

=item *

C<protocol>E<mdash>The communication protocol between the source and
destination. This will be either C<TCP> or C<ICMP>.

=item *

C<packetSize>E<mdash>The size of the packets. This must be a number
between C<56> and C<8500>.

=item *

(Optional) C<tags> E<mdash>Key-value pairs created and assigned to the
probe.

=back



=head2 CreateProbe

=over

=item MonitorName => Str

=item Probe => L<Paws::NetworkMonitor::ProbeInput>

=item [ClientToken => Str]

=item [Tags => L<Paws::NetworkMonitor::TagMap>]


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::CreateProbe>

Returns: a L<Paws::NetworkMonitor::CreateProbeOutput> instance

Create a probe within a monitor. Once you create a probe, and it begins
monitoring your network traffic, you'll incur billing charges for that
probe. This action requires the C<monitorName> parameter. Run
C<ListMonitors> to get a list of monitor names. Note the name of the
C<monitorName> you want to create the probe for.


=head2 DeleteMonitor

=over

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::DeleteMonitor>

Returns: a L<Paws::NetworkMonitor::DeleteMonitorOutput> instance

Deletes a specified monitor.

This action requires the C<monitorName> parameter. Run C<ListMonitors>
to get a list of monitor names.


=head2 DeleteProbe

=over

=item MonitorName => Str

=item ProbeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::DeleteProbe>

Returns: a L<Paws::NetworkMonitor::DeleteProbeOutput> instance

Deletes the specified probe. Once a probe is deleted you'll no longer
incur any billing fees for that probe.

This action requires both the C<monitorName> and C<probeId> parameters.
Run C<ListMonitors> to get a list of monitor names. Run C<GetMonitor>
to get a list of probes and probe IDs. You can only delete a single
probe at a time using this action.


=head2 GetMonitor

=over

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::GetMonitor>

Returns: a L<Paws::NetworkMonitor::GetMonitorOutput> instance

Returns details about a specific monitor.

This action requires the C<monitorName> parameter. Run C<ListMonitors>
to get a list of monitor names.


=head2 GetProbe

=over

=item MonitorName => Str

=item ProbeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::GetProbe>

Returns: a L<Paws::NetworkMonitor::GetProbeOutput> instance

Returns the details about a probe. This action requires both the
C<monitorName> and C<probeId> parameters. Run C<ListMonitors> to get a
list of monitor names. Run C<GetMonitor> to get a list of probes and
probe IDs.


=head2 ListMonitors

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::ListMonitors>

Returns: a L<Paws::NetworkMonitor::ListMonitorsOutput> instance

Returns a list of all of your monitors.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::ListTagsForResource>

Returns: a L<Paws::NetworkMonitor::ListTagsForResourceOutput> instance

Lists the tags assigned to this resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::NetworkMonitor::TagMap>


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::TagResource>

Returns: a L<Paws::NetworkMonitor::TagResourceOutput> instance

Adds key-value pairs to a monitor or probe.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::UntagResource>

Returns: a L<Paws::NetworkMonitor::UntagResourceOutput> instance

Removes a key-value pair from a monitor or probe.


=head2 UpdateMonitor

=over

=item AggregationPeriod => Int

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::UpdateMonitor>

Returns: a L<Paws::NetworkMonitor::UpdateMonitorOutput> instance

Updates the C<aggregationPeriod> for a monitor. Monitors support an
C<aggregationPeriod> of either C<30> or C<60> seconds. This action
requires the C<monitorName> and C<probeId> parameter. Run
C<ListMonitors> to get a list of monitor names.


=head2 UpdateProbe

=over

=item MonitorName => Str

=item ProbeId => Str

=item [Destination => Str]

=item [DestinationPort => Int]

=item [PacketSize => Int]

=item [Protocol => Str]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::NetworkMonitor::UpdateProbe>

Returns: a L<Paws::NetworkMonitor::UpdateProbeOutput> instance

Updates a monitor probe. This action requires both the C<monitorName>
and C<probeId> parameters. Run C<ListMonitors> to get a list of monitor
names. Run C<GetMonitor> to get a list of probes and probe IDs.

You can update the following para create a monitor with probes using
this command. For each probe, you define the following:

=over

=item *

C<state>E<mdash>The state of the probe.

=item *

C<destination>E<mdash> The target destination IP address for the probe.

=item *

C<destinationPort>E<mdash>Required only if the protocol is C<TCP>.

=item *

C<protocol>E<mdash>The communication protocol between the source and
destination. This will be either C<TCP> or C<ICMP>.

=item *

C<packetSize>E<mdash>The size of the packets. This must be a number
between C<56> and C<8500>.

=item *

(Optional) C<tags> E<mdash>Key-value pairs created and assigned to the
probe.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllMonitors(sub { },[MaxResults => Int, NextToken => Str, State => Str])

=head2 ListAllMonitors([MaxResults => Int, NextToken => Str, State => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - monitors, passing the object as the first parameter, and the string 'monitors' as the second parameter 

If not, it will return a a L<Paws::NetworkMonitor::ListMonitorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


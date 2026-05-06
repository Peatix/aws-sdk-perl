package Paws::NetworkFlowMonitor;
  use Moose;
  sub service { 'networkflowmonitor' }
  sub signing_name { 'networkflowmonitor' }
  sub version { '2023-04-19' }
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
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::CreateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::CreateScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::DeleteMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::DeleteScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResultsMonitorTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResultsWorkloadInsightsTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResultsWorkloadInsightsTopContributorsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryStatusMonitorTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryStatusMonitorTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryStatusWorkloadInsightsTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryStatusWorkloadInsightsTopContributorsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::GetScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::ListMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScopes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::ListScopes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryMonitorTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StartQueryMonitorTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryWorkloadInsightsTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQueryWorkloadInsightsTopContributorsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQueryMonitorTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StopQueryMonitorTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQueryWorkloadInsightsTopContributors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQueryWorkloadInsightsTopContributorsData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributorsData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::UpdateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFlowMonitor::UpdateScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllQueryResultsMonitorTopContributors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetQueryResultsMonitorTopContributors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetQueryResultsMonitorTopContributors(@_, nextToken => $next_result->nextToken);
        push @{ $result->topContributors }, @{ $next_result->topContributors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'topContributors') foreach (@{ $result->topContributors });
        $result = $self->GetQueryResultsMonitorTopContributors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'topContributors') foreach (@{ $result->topContributors });
    }

    return undef
  }
  sub GetAllQueryResultsWorkloadInsightsTopContributors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetQueryResultsWorkloadInsightsTopContributors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetQueryResultsWorkloadInsightsTopContributors(@_, nextToken => $next_result->nextToken);
        push @{ $result->topContributors }, @{ $next_result->topContributors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'topContributors') foreach (@{ $result->topContributors });
        $result = $self->GetQueryResultsWorkloadInsightsTopContributors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'topContributors') foreach (@{ $result->topContributors });
    }

    return undef
  }
  sub GetAllQueryResultsWorkloadInsightsTopContributorsData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetQueryResultsWorkloadInsightsTopContributorsData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetQueryResultsWorkloadInsightsTopContributorsData(@_, nextToken => $next_result->nextToken);
        push @{ $result->datapoints }, @{ $next_result->datapoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datapoints') foreach (@{ $result->datapoints });
        $result = $self->GetQueryResultsWorkloadInsightsTopContributorsData(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datapoints') foreach (@{ $result->datapoints });
    }

    return undef
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
  sub ListAllScopes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScopes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListScopes(@_, nextToken => $next_result->nextToken);
        push @{ $result->scopes }, @{ $next_result->scopes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scopes') foreach (@{ $result->scopes });
        $result = $self->ListScopes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scopes') foreach (@{ $result->scopes });
    }

    return undef
  }


  sub operations { qw/CreateMonitor CreateScope DeleteMonitor DeleteScope GetMonitor GetQueryResultsMonitorTopContributors GetQueryResultsWorkloadInsightsTopContributors GetQueryResultsWorkloadInsightsTopContributorsData GetQueryStatusMonitorTopContributors GetQueryStatusWorkloadInsightsTopContributors GetQueryStatusWorkloadInsightsTopContributorsData GetScope ListMonitors ListScopes ListTagsForResource StartQueryMonitorTopContributors StartQueryWorkloadInsightsTopContributors StartQueryWorkloadInsightsTopContributorsData StopQueryMonitorTopContributors StopQueryWorkloadInsightsTopContributors StopQueryWorkloadInsightsTopContributorsData TagResource UntagResource UpdateMonitor UpdateScope / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor - Perl Interface to AWS Network Flow Monitor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NetworkFlowMonitor');
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

Network Flow Monitor is a feature of Amazon CloudWatch Network
Monitoring that provides visibility into the performance of network
flows for your Amazon Web Services workloads, between instances in
subnets, as well as to and from Amazon Web Services. Lightweight agents
that you install on the instances capture performance metrics for your
network flows, such as packet loss and latency, and send them to the
Network Flow Monitor backend. Then, you can view and analyze metrics
from the top contributors for each metric type, to help troubleshoot
issues.

In addition, when you create a monitor, Network Flow Monitor provides a
network health indicator (NHI) that informs you whether there were
Amazon Web Services network issues for one or more of the network flows
tracked by a monitor, during a time period that you choose. By using
this value, you can independently determine if the Amazon Web Services
network is impacting your workload during a specific time frame, to
help you focus troubleshooting efforts.

To learn more about Network Flow Monitor, see the Network Flow Monitor
User Guide
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-NetworkFlowMonitor.html)
in the Amazon CloudWatch User Guide.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateMonitor

=over

=item LocalResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]

=item MonitorName => Str

=item ScopeArn => Str

=item [ClientToken => Str]

=item [RemoteResources => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]]

=item [Tags => L<Paws::NetworkFlowMonitor::TagMap>]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::CreateMonitor>

Returns: a L<Paws::NetworkFlowMonitor::CreateMonitorOutput> instance

Create a monitor for specific network flows between local and remote
resources, so that you can monitor network performance for one or
several of your workloads. For each monitor, Network Flow Monitor
publishes detailed end-to-end performance metrics and a network health
indicators (NHI) that informs you whether there were Amazon Web
Services network issues for one or more of the network flows tracked by
a monitor, during a time period that you choose.


=head2 CreateScope

=over

=item Targets => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]

=item [ClientToken => Str]

=item [Tags => L<Paws::NetworkFlowMonitor::TagMap>]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::CreateScope>

Returns: a L<Paws::NetworkFlowMonitor::CreateScopeOutput> instance

Create a scope of resources that you want to be available for Network
Flow Monitor to generate metrics for, when you have active agents on
those resources sending metrics reports to the Network Flow Monitor
backend. This call returns a scope ID to identify the scope.

When you create a scope, you enable permissions for Network Flow
Monitor. The scope is set to the resources for the Amazon Web Services
that enables the feature.


=head2 DeleteMonitor

=over

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::DeleteMonitor>

Returns: a L<Paws::NetworkFlowMonitor::DeleteMonitorOutput> instance

Deletes a monitor in Network Flow Monitor.


=head2 DeleteScope

=over

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::DeleteScope>

Returns: a L<Paws::NetworkFlowMonitor::DeleteScopeOutput> instance

Deletes a scope that has been defined.


=head2 GetMonitor

=over

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetMonitor>

Returns: a L<Paws::NetworkFlowMonitor::GetMonitorOutput> instance

Gets information about a monitor in Network Flow Monitor based on a
monitor name. The information returned includes the Amazon Resource
Name (ARN), create time, modified time, resources included in the
monitor, and status information.


=head2 GetQueryResultsMonitorTopContributors

=over

=item MonitorName => Str

=item QueryId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributorsOutput> instance

Return the data for a query with the Network Flow Monitor query
interface. You specify the query that you want to return results for by
providing a query ID and a monitor name. This query returns the top
contributors for a specific monitor.

Create a query ID for this call by calling the corresponding API call
to start the query, C<StartQueryMonitorTopContributors>. Use the scope
ID that was returned for your account by C<CreateScope>.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 GetQueryResultsWorkloadInsightsTopContributors

=over

=item QueryId => Str

=item ScopeId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsOutput> instance

Return the data for a query with the Network Flow Monitor query
interface. You specify the query that you want to return results for by
providing a query ID and a monitor name.

This query returns the top contributors for a scope for workload
insights. Workload insights provide a high level view of network flow
performance data collected by agents. To return the data for the top
contributors, see
C<GetQueryResultsWorkloadInsightsTopContributorsData>.

Create a query ID for this call by calling the corresponding API call
to start the query, C<StartQueryWorkloadInsightsTopContributors>. Use
the scope ID that was returned for your account by C<CreateScope>.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 GetQueryResultsWorkloadInsightsTopContributorsData

=over

=item QueryId => Str

=item ScopeId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsData>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsDataOutput> instance

Return the data for a query with the Network Flow Monitor query
interface. Specify the query that you want to return results for by
providing a query ID and a scope ID.

This query returns the data for top contributors for workload insights
for a specific scope. Workload insights provide a high level view of
network flow performance data collected by agents for a scope. To
return just the top contributors, see
C<GetQueryResultsWorkloadInsightsTopContributors>.

Create a query ID for this call by calling the corresponding API call
to start the query, C<StartQueryWorkloadInsightsTopContributorsData>.
Use the scope ID that was returned for your account by C<CreateScope>.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.

The top contributor network flows overall for a specific metric type,
for example, the number of retransmissions.


=head2 GetQueryStatusMonitorTopContributors

=over

=item MonitorName => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryStatusMonitorTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryStatusMonitorTopContributorsOutput> instance

Returns the current status of a query for the Network Flow Monitor
query interface, for a specified query ID and monitor. This call
returns the query status for the top contributors for a monitor.

When you start a query, use this call to check the status of the query
to make sure that it has has C<SUCCEEDED> before you
reviewStartQueryWorkloadInsightsTopContributorsData the results. Use
the same query ID that you used for the corresponding API call to start
the query, C<StartQueryMonitorTopContributors>.

When you run a query, use this call to check the status of the query to
make sure that the query has C<SUCCEEDED> before you review the
results.


=head2 GetQueryStatusWorkloadInsightsTopContributors

=over

=item QueryId => Str

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsOutput> instance

Return the data for a query with the Network Flow Monitor query
interface. Specify the query that you want to return results for by
providing a query ID and a monitor name. This query returns the top
contributors for workload insights.

When you start a query, use this call to check the status of the query
to make sure that it has has C<SUCCEEDED> before you review the
results. Use the same query ID that you used for the corresponding API
call to start the query, C<StartQueryWorkloadInsightsTopContributors>.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 GetQueryStatusWorkloadInsightsTopContributorsData

=over

=item QueryId => Str

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsData>

Returns: a L<Paws::NetworkFlowMonitor::GetQueryStatusWorkloadInsightsTopContributorsDataOutput> instance

Returns the current status of a query for the Network Flow Monitor
query interface, for a specified query ID and monitor. This call
returns the query status for the top contributors data for workload
insights.

When you start a query, use this call to check the status of the query
to make sure that it has has C<SUCCEEDED> before you review the
results. Use the same query ID that you used for the corresponding API
call to start the query,
C<StartQueryWorkloadInsightsTopContributorsData>.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.

The top contributor network flows overall for a specific metric type,
for example, the number of retransmissions.


=head2 GetScope

=over

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::GetScope>

Returns: a L<Paws::NetworkFlowMonitor::GetScopeOutput> instance

Gets information about a scope, including the name, status, tags, and
target details. The scope in Network Flow Monitor is an account.


=head2 ListMonitors

=over

=item [MaxResults => Int]

=item [MonitorStatus => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::ListMonitors>

Returns: a L<Paws::NetworkFlowMonitor::ListMonitorsOutput> instance

List all monitors in an account. Optionally, you can list only monitors
that have a specific status, by using the C<STATUS> parameter.


=head2 ListScopes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::ListScopes>

Returns: a L<Paws::NetworkFlowMonitor::ListScopesOutput> instance

List all the scopes for an account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::ListTagsForResource>

Returns: a L<Paws::NetworkFlowMonitor::ListTagsForResourceOutput> instance

Returns all the tags for a resource.


=head2 StartQueryMonitorTopContributors

=over

=item DestinationCategory => Str

=item EndTime => Str

=item MetricName => Str

=item MonitorName => Str

=item StartTime => Str

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StartQueryMonitorTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::StartQueryMonitorTopContributorsOutput> instance

Start a query to return the data with the Network Flow Monitor query
interface. Specify the query that you want to return results for by
providing a query ID and a monitor name. This query returns the top
contributors for a specific monitor.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 StartQueryWorkloadInsightsTopContributors

=over

=item DestinationCategory => Str

=item EndTime => Str

=item MetricName => Str

=item ScopeId => Str

=item StartTime => Str

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsOutput> instance

Start a query to return the data with the Network Flow Monitor query
interface. Specify the query that you want to start by providing a
query ID and a monitor name. This query returns the top contributors
for a specific monitor.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 StartQueryWorkloadInsightsTopContributorsData

=over

=item DestinationCategory => Str

=item EndTime => Str

=item MetricName => Str

=item ScopeId => Str

=item StartTime => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsData>

Returns: a L<Paws::NetworkFlowMonitor::StartQueryWorkloadInsightsTopContributorsDataOutput> instance

Start a query to return the with the Network Flow Monitor query
interface. Specify the query that you want to start by providing a
query ID and a monitor name. This query returns the data for top
contributors for workload insights.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 StopQueryMonitorTopContributors

=over

=item MonitorName => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StopQueryMonitorTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::StopQueryMonitorTopContributorsOutput> instance

Stop a query with the Network Flow Monitor query interface. Specify the
query that you want to stop by providing a query ID and a monitor name.
This query returns the top contributors for a specific monitor.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 StopQueryWorkloadInsightsTopContributors

=over

=item QueryId => Str

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributors>

Returns: a L<Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributorsOutput> instance

Stop a query with the Network Flow Monitor query interface. Specify the
query that you want to stop by providing a query ID and a monitor name.
This query returns the top contributors for a specific monitor.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.


=head2 StopQueryWorkloadInsightsTopContributorsData

=over

=item QueryId => Str

=item ScopeId => Str


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributorsData>

Returns: a L<Paws::NetworkFlowMonitor::StopQueryWorkloadInsightsTopContributorsDataOutput> instance

Return the data for a query with the Network Flow Monitor query
interface. Specify the query that you want to return results for by
providing a query ID and a scope ID. This query returns data for the
top contributors for workload insights. Workload insights provide a
high level view of network flow performance data collected by agents
for a scope.

Top contributors in Network Flow Monitor are network flows with the
highest values for a specific metric type, related to a scope (for
workload insights) or a monitor.

The top contributor network flows overall for a specific metric type,
for example, the number of retransmissions.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::NetworkFlowMonitor::TagMap>


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::TagResource>

Returns: a L<Paws::NetworkFlowMonitor::TagResourceOutput> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::UntagResource>

Returns: a L<Paws::NetworkFlowMonitor::UntagResourceOutput> instance

Removes a tag from a resource.


=head2 UpdateMonitor

=over

=item MonitorName => Str

=item [ClientToken => Str]

=item [LocalResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]]

=item [LocalResourcesToRemove => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorLocalResource>]]

=item [RemoteResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]]

=item [RemoteResourcesToRemove => ArrayRef[L<Paws::NetworkFlowMonitor::MonitorRemoteResource>]]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::UpdateMonitor>

Returns: a L<Paws::NetworkFlowMonitor::UpdateMonitorOutput> instance

Update a monitor to add or remove local or remote resources.


=head2 UpdateScope

=over

=item ScopeId => Str

=item [ResourcesToAdd => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]]

=item [ResourcesToDelete => ArrayRef[L<Paws::NetworkFlowMonitor::TargetResource>]]


=back

Each argument is described in detail in: L<Paws::NetworkFlowMonitor::UpdateScope>

Returns: a L<Paws::NetworkFlowMonitor::UpdateScopeOutput> instance

Update a scope to add or remove resources that you want to be available
for Network Flow Monitor to generate metrics for, when you have active
agents on those resources sending metrics reports to the Network Flow
Monitor backend.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllQueryResultsMonitorTopContributors(sub { },MonitorName => Str, QueryId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllQueryResultsMonitorTopContributors(MonitorName => Str, QueryId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - topContributors, passing the object as the first parameter, and the string 'topContributors' as the second parameter 

If not, it will return a a L<Paws::NetworkFlowMonitor::GetQueryResultsMonitorTopContributorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllQueryResultsWorkloadInsightsTopContributors(sub { },QueryId => Str, ScopeId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllQueryResultsWorkloadInsightsTopContributors(QueryId => Str, ScopeId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - topContributors, passing the object as the first parameter, and the string 'topContributors' as the second parameter 

If not, it will return a a L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllQueryResultsWorkloadInsightsTopContributorsData(sub { },QueryId => Str, ScopeId => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllQueryResultsWorkloadInsightsTopContributorsData(QueryId => Str, ScopeId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datapoints, passing the object as the first parameter, and the string 'datapoints' as the second parameter 

If not, it will return a a L<Paws::NetworkFlowMonitor::GetQueryResultsWorkloadInsightsTopContributorsDataOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitors(sub { },[MaxResults => Int, MonitorStatus => Str, NextToken => Str])

=head2 ListAllMonitors([MaxResults => Int, MonitorStatus => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - monitors, passing the object as the first parameter, and the string 'monitors' as the second parameter 

If not, it will return a a L<Paws::NetworkFlowMonitor::ListMonitorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScopes(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllScopes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scopes, passing the object as the first parameter, and the string 'scopes' as the second parameter 

If not, it will return a a L<Paws::NetworkFlowMonitor::ListScopesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


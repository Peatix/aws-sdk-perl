package Paws::InternetMonitor;
  use Moose;
  sub service { 'internetmonitor' }
  sub signing_name { 'internetmonitor' }
  sub version { '2021-06-03' }
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
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::CreateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::DeleteMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHealthEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::GetHealthEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInternetEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::GetInternetEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::GetMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::GetQueryResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueryStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::GetQueryStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHealthEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::ListHealthEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInternetEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::ListInternetEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::ListMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::StartQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::StopQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::InternetMonitor::UpdateMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllHealthEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHealthEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHealthEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->HealthEvents }, @{ $next_result->HealthEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HealthEvents') foreach (@{ $result->HealthEvents });
        $result = $self->ListHealthEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HealthEvents') foreach (@{ $result->HealthEvents });
    }

    return undef
  }
  sub ListAllInternetEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInternetEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInternetEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->InternetEvents }, @{ $next_result->InternetEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InternetEvents') foreach (@{ $result->InternetEvents });
        $result = $self->ListInternetEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InternetEvents') foreach (@{ $result->InternetEvents });
    }

    return undef
  }
  sub ListAllMonitors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Monitors }, @{ $next_result->Monitors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Monitors') foreach (@{ $result->Monitors });
        $result = $self->ListMonitors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Monitors') foreach (@{ $result->Monitors });
    }

    return undef
  }


  sub operations { qw/CreateMonitor DeleteMonitor GetHealthEvent GetInternetEvent GetMonitor GetQueryResults GetQueryStatus ListHealthEvents ListInternetEvents ListMonitors ListTagsForResource StartQuery StopQuery TagResource UntagResource UpdateMonitor / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor - Perl Interface to AWS Amazon CloudWatch Internet Monitor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('InternetMonitor');
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

Amazon CloudWatch Internet Monitor provides visibility into how
internet issues impact the performance and availability between your
applications hosted on Amazon Web Services and your end users. It can
reduce the time it takes for you to diagnose internet issues from days
to minutes. Internet Monitor uses the connectivity data that Amazon Web
Services captures from its global networking footprint to calculate a
baseline of performance and availability for internet traffic. This is
the same data that Amazon Web Services uses to monitor internet uptime
and availability. With those measurements as a baseline, Internet
Monitor raises awareness for you when there are significant problems
for your end users in the different geographic locations where your
application runs.

Internet Monitor publishes internet measurements to CloudWatch Logs and
CloudWatch Metrics, to easily support using CloudWatch tools with
health information for geographies and networks specific to your
application. Internet Monitor sends health events to Amazon EventBridge
so that you can set up notifications. If an issue is caused by the
Amazon Web Services network, you also automatically receive an Amazon
Web Services Health Dashboard notification with the steps that Amazon
Web Services is taking to mitigate the problem.

To use Internet Monitor, you create a I<monitor> and associate your
application's resources with it - VPCs, NLBs, CloudFront distributions,
or WorkSpaces directories - so Internet Monitor can determine where
your application's internet traffic is. Internet Monitor then provides
internet measurements from Amazon Web Services that are specific to the
locations and ASNs (typically, internet service providers or ISPs) that
communicate with your application.

For more information, see Using Amazon CloudWatch Internet Monitor
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
in the I<Amazon CloudWatch User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateMonitor

=over

=item MonitorName => Str

=item [ClientToken => Str]

=item [HealthEventsConfig => L<Paws::InternetMonitor::HealthEventsConfig>]

=item [InternetMeasurementsLogDelivery => L<Paws::InternetMonitor::InternetMeasurementsLogDelivery>]

=item [MaxCityNetworksToMonitor => Int]

=item [Resources => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::InternetMonitor::TagMap>]

=item [TrafficPercentageToMonitor => Int]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::CreateMonitor>

Returns: a L<Paws::InternetMonitor::CreateMonitorOutput> instance

Creates a monitor in Amazon CloudWatch Internet Monitor. A monitor is
built based on information from the application resources that you add:
VPCs, Network Load Balancers (NLBs), Amazon CloudFront distributions,
and Amazon WorkSpaces directories. Internet Monitor then publishes
internet measurements from Amazon Web Services that are specific to the
I<city-networks>. That is, the locations and ASNs (typically internet
service providers or ISPs), where clients access your application. For
more information, see Using Amazon CloudWatch Internet Monitor
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-InternetMonitor.html)
in the I<Amazon CloudWatch User Guide>.

When you create a monitor, you choose the percentage of traffic that
you want to monitor. You can also set a maximum limit for the number of
city-networks where client traffic is monitored, that caps the total
traffic that Internet Monitor monitors. A city-network maximum is the
limit of city-networks, but you only pay for the number of
city-networks that are actually monitored. You can update your monitor
at any time to change the percentage of traffic to monitor or the
city-networks maximum. For more information, see Choosing a
city-network maximum value
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
in the I<Amazon CloudWatch User Guide>.


=head2 DeleteMonitor

=over

=item MonitorName => Str


=back

Each argument is described in detail in: L<Paws::InternetMonitor::DeleteMonitor>

Returns: a L<Paws::InternetMonitor::DeleteMonitorOutput> instance

Deletes a monitor in Amazon CloudWatch Internet Monitor.


=head2 GetHealthEvent

=over

=item EventId => Str

=item MonitorName => Str

=item [LinkedAccountId => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::GetHealthEvent>

Returns: a L<Paws::InternetMonitor::GetHealthEventOutput> instance

Gets information that Amazon CloudWatch Internet Monitor has created
and stored about a health event for a specified monitor. This
information includes the impacted locations, and all the information
related to the event, by location.

The information returned includes the impact on performance,
availability, and round-trip time, information about the network
providers (ASNs), the event type, and so on.

Information rolled up at the global traffic level is also returned,
including the impact type and total traffic impact.


=head2 GetInternetEvent

=over

=item EventId => Str


=back

Each argument is described in detail in: L<Paws::InternetMonitor::GetInternetEvent>

Returns: a L<Paws::InternetMonitor::GetInternetEventOutput> instance

Gets information that Amazon CloudWatch Internet Monitor has generated
about an internet event. Internet Monitor displays information about
recent global health events, called internet events, on a global
outages map that is available to all Amazon Web Services customers.

The information returned here includes the impacted location, when the
event started and (if the event is over) ended, the type of event
(C<PERFORMANCE> or C<AVAILABILITY>), and the status (C<ACTIVE> or
C<RESOLVED>).


=head2 GetMonitor

=over

=item MonitorName => Str

=item [LinkedAccountId => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::GetMonitor>

Returns: a L<Paws::InternetMonitor::GetMonitorOutput> instance

Gets information about a monitor in Amazon CloudWatch Internet Monitor
based on a monitor name. The information returned includes the Amazon
Resource Name (ARN), create time, modified time, resources included in
the monitor, and status information.


=head2 GetQueryResults

=over

=item MonitorName => Str

=item QueryId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::GetQueryResults>

Returns: a L<Paws::InternetMonitor::GetQueryResultsOutput> instance

Return the data for a query with the Amazon CloudWatch Internet Monitor
query interface. Specify the query that you want to return results for
by providing a C<QueryId> and a monitor name.

For more information about using the query interface, including
examples, see Using the Amazon CloudWatch Internet Monitor query
interface
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
in the Amazon CloudWatch Internet Monitor User Guide.


=head2 GetQueryStatus

=over

=item MonitorName => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::InternetMonitor::GetQueryStatus>

Returns: a L<Paws::InternetMonitor::GetQueryStatusOutput> instance

Returns the current status of a query for the Amazon CloudWatch
Internet Monitor query interface, for a specified query ID and monitor.
When you run a query, check the status to make sure that the query has
C<SUCCEEDED> before you review the results.

=over

=item *

C<QUEUED>: The query is scheduled to run.

=item *

C<RUNNING>: The query is in progress but not complete.

=item *

C<SUCCEEDED>: The query completed sucessfully.

=item *

C<FAILED>: The query failed due to an error.

=item *

C<CANCELED>: The query was canceled.

=back



=head2 ListHealthEvents

=over

=item MonitorName => Str

=item [EndTime => Str]

=item [EventStatus => Str]

=item [LinkedAccountId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::ListHealthEvents>

Returns: a L<Paws::InternetMonitor::ListHealthEventsOutput> instance

Lists all health events for a monitor in Amazon CloudWatch Internet
Monitor. Returns information for health events including the event
start and end times, and the status.

Health events that have start times during the time frame that is
requested are not included in the list of health events.


=head2 ListInternetEvents

=over

=item [EndTime => Str]

=item [EventStatus => Str]

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::ListInternetEvents>

Returns: a L<Paws::InternetMonitor::ListInternetEventsOutput> instance

Lists internet events that cause performance or availability issues for
client locations. Amazon CloudWatch Internet Monitor displays
information about recent global health events, called internet events,
on a global outages map that is available to all Amazon Web Services
customers.

You can constrain the list of internet events returned by providing a
start time and end time to define a total time frame for events you
want to list. Both start time and end time specify the time when an
event started. End time is optional. If you don't include it, the
default end time is the current time.

You can also limit the events returned to a specific status (C<ACTIVE>
or C<RESOLVED>) or type (C<PERFORMANCE> or C<AVAILABILITY>).


=head2 ListMonitors

=over

=item [IncludeLinkedAccounts => Bool]

=item [MaxResults => Int]

=item [MonitorStatus => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::ListMonitors>

Returns: a L<Paws::InternetMonitor::ListMonitorsOutput> instance

Lists all of your monitors for Amazon CloudWatch Internet Monitor and
their statuses, along with the Amazon Resource Name (ARN) and name of
each monitor.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::InternetMonitor::ListTagsForResource>

Returns: a L<Paws::InternetMonitor::ListTagsForResourceOutput> instance

Lists the tags for a resource. Tags are supported only for monitors in
Amazon CloudWatch Internet Monitor.


=head2 StartQuery

=over

=item EndTime => Str

=item MonitorName => Str

=item QueryType => Str

=item StartTime => Str

=item [FilterParameters => ArrayRef[L<Paws::InternetMonitor::FilterParameter>]]

=item [LinkedAccountId => Str]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::StartQuery>

Returns: a L<Paws::InternetMonitor::StartQueryOutput> instance

Start a query to return data for a specific query type for the Amazon
CloudWatch Internet Monitor query interface. Specify a time period for
the data that you want returned by using C<StartTime> and C<EndTime>.
You filter the query results to return by providing parameters that you
specify with C<FilterParameters>.

For more information about using the query interface, including
examples, see Using the Amazon CloudWatch Internet Monitor query
interface
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-IM-view-cw-tools-cwim-query.html)
in the Amazon CloudWatch Internet Monitor User Guide.


=head2 StopQuery

=over

=item MonitorName => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::InternetMonitor::StopQuery>

Returns: a L<Paws::InternetMonitor::StopQueryOutput> instance

Stop a query that is progress for a specific monitor.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::InternetMonitor::TagMap>


=back

Each argument is described in detail in: L<Paws::InternetMonitor::TagResource>

Returns: a L<Paws::InternetMonitor::TagResourceOutput> instance

Adds a tag to a resource. Tags are supported only for monitors in
Amazon CloudWatch Internet Monitor. You can add a maximum of 50 tags in
Internet Monitor.

A minimum of one tag is required for this call. It returns an error if
you use the C<TagResource> request with 0 tags.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::UntagResource>

Returns: a L<Paws::InternetMonitor::UntagResourceOutput> instance

Removes a tag from a resource.


=head2 UpdateMonitor

=over

=item MonitorName => Str

=item [ClientToken => Str]

=item [HealthEventsConfig => L<Paws::InternetMonitor::HealthEventsConfig>]

=item [InternetMeasurementsLogDelivery => L<Paws::InternetMonitor::InternetMeasurementsLogDelivery>]

=item [MaxCityNetworksToMonitor => Int]

=item [ResourcesToAdd => ArrayRef[Str|Undef]]

=item [ResourcesToRemove => ArrayRef[Str|Undef]]

=item [Status => Str]

=item [TrafficPercentageToMonitor => Int]


=back

Each argument is described in detail in: L<Paws::InternetMonitor::UpdateMonitor>

Returns: a L<Paws::InternetMonitor::UpdateMonitorOutput> instance

Updates a monitor. You can update a monitor to change the percentage of
traffic to monitor or the maximum number of city-networks (locations
and ASNs), to add or remove resources, or to change the status of the
monitor. Note that you can't change the name of a monitor.

The city-network maximum that you choose is the limit, but you only pay
for the number of city-networks that are actually monitored. For more
information, see Choosing a city-network maximum value
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/IMCityNetworksMaximum.html)
in the I<Amazon CloudWatch User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllHealthEvents(sub { },MonitorName => Str, [EndTime => Str, EventStatus => Str, LinkedAccountId => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 ListAllHealthEvents(MonitorName => Str, [EndTime => Str, EventStatus => Str, LinkedAccountId => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HealthEvents, passing the object as the first parameter, and the string 'HealthEvents' as the second parameter 

If not, it will return a a L<Paws::InternetMonitor::ListHealthEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInternetEvents(sub { },[EndTime => Str, EventStatus => Str, EventType => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 ListAllInternetEvents([EndTime => Str, EventStatus => Str, EventType => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InternetEvents, passing the object as the first parameter, and the string 'InternetEvents' as the second parameter 

If not, it will return a a L<Paws::InternetMonitor::ListInternetEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitors(sub { },[IncludeLinkedAccounts => Bool, MaxResults => Int, MonitorStatus => Str, NextToken => Str])

=head2 ListAllMonitors([IncludeLinkedAccounts => Bool, MaxResults => Int, MonitorStatus => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Monitors, passing the object as the first parameter, and the string 'Monitors' as the second parameter 

If not, it will return a a L<Paws::InternetMonitor::ListMonitorsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


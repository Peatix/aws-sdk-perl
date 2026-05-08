package Paws::RUM;
  use Moose;
  sub service { 'rum' }
  sub signing_name { 'rum' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchCreateRumMetricDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::BatchCreateRumMetricDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteRumMetricDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::BatchDeleteRumMetricDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetRumMetricDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::BatchGetRumMetricDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::CreateAppMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAppMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::DeleteAppMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRumMetricsDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::DeleteRumMetricsDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::GetAppMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAppMonitorData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::GetAppMonitorData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppMonitors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::ListAppMonitors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRumMetricsDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::ListRumMetricsDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRumEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::PutRumEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRumMetricsDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::PutRumMetricsDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppMonitor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::UpdateAppMonitor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRumMetricDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RUM::UpdateRumMetricDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub BatchGetAllRumMetricDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->BatchGetRumMetricDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->BatchGetRumMetricDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricDefinitions }, @{ $next_result->MetricDefinitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricDefinitions') foreach (@{ $result->MetricDefinitions });
        $result = $self->BatchGetRumMetricDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricDefinitions') foreach (@{ $result->MetricDefinitions });
    }

    return undef
  }
  sub GetAllAppMonitorData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAppMonitorData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAppMonitorData(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->GetAppMonitorData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub ListAllAppMonitors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppMonitors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAppMonitors(@_, NextToken => $next_result->NextToken);
        push @{ $result->AppMonitorSummaries }, @{ $next_result->AppMonitorSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AppMonitorSummaries') foreach (@{ $result->AppMonitorSummaries });
        $result = $self->ListAppMonitors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AppMonitorSummaries') foreach (@{ $result->AppMonitorSummaries });
    }

    return undef
  }
  sub ListAllRumMetricsDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRumMetricsDestinations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRumMetricsDestinations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Destinations }, @{ $next_result->Destinations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Destinations') foreach (@{ $result->Destinations });
        $result = $self->ListRumMetricsDestinations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Destinations') foreach (@{ $result->Destinations });
    }

    return undef
  }


  sub operations { qw/BatchCreateRumMetricDefinitions BatchDeleteRumMetricDefinitions BatchGetRumMetricDefinitions CreateAppMonitor DeleteAppMonitor DeleteResourcePolicy DeleteRumMetricsDestination GetAppMonitor GetAppMonitorData GetResourcePolicy ListAppMonitors ListRumMetricsDestinations ListTagsForResource PutResourcePolicy PutRumEvents PutRumMetricsDestination TagResource UntagResource UpdateAppMonitor UpdateRumMetricDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM - Perl Interface to AWS CloudWatch RUM

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RUM');
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

With Amazon CloudWatch RUM, you can perform real-user monitoring to
collect client-side data about your web application performance from
actual user sessions in real time. The data collected includes page
load times, client-side errors, and user behavior. When you view this
data, you can see it all aggregated together and also see breakdowns by
the browsers and devices that your customers use.

You can use the collected data to quickly identify and debug
client-side performance issues. CloudWatch RUM helps you visualize
anomalies in your application performance and find relevant debugging
data such as error messages, stack traces, and user sessions. You can
also use RUM to understand the range of end-user impact including the
number of users, geolocations, and browsers used.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum-2018-05-10>


=head1 METHODS

=head2 BatchCreateRumMetricDefinitions

=over

=item AppMonitorName => Str

=item Destination => Str

=item MetricDefinitions => ArrayRef[L<Paws::RUM::MetricDefinitionRequest>]

=item [DestinationArn => Str]


=back

Each argument is described in detail in: L<Paws::RUM::BatchCreateRumMetricDefinitions>

Returns: a L<Paws::RUM::BatchCreateRumMetricDefinitionsResponse> instance

Specifies the extended metrics and custom metrics that you want a
CloudWatch RUM app monitor to send to a destination. Valid destinations
include CloudWatch and Evidently.

By default, RUM app monitors send some metrics to CloudWatch. These
default metrics are listed in CloudWatch metrics that you can collect
with CloudWatch RUM
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html).

In addition to these default metrics, you can choose to send extended
metrics, custom metrics, or both.

=over

=item *

Extended metrics let you send metrics with additional dimensions that
aren't included in the default metrics. You can also send extended
metrics to both Evidently and CloudWatch. The valid dimension names for
the additional dimensions for extended metrics are C<BrowserName>,
C<CountryCode>, C<DeviceType>, C<FileType>, C<OSName>, and C<PageId>.
For more information, see Extended metrics that you can send to
CloudWatch and CloudWatch Evidently
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html).

=item *

Custom metrics are metrics that you define. You can send custom metrics
to CloudWatch. CloudWatch Evidently, or both. With custom metrics, you
can use any metric name and namespace. To derive the metrics, you can
use any custom events, built-in events, custom attributes, or default
attributes.

You can't send custom metrics to the C<AWS/RUM> namespace. You must
send custom metrics to a custom namespace that you define. The
namespace that you use can't start with C<AWS/>. CloudWatch RUM
prepends C<RUM/CustomMetrics/> to the custom namespace that you define,
so the final namespace for your metrics in CloudWatch is
C<RUM/CustomMetrics/I<your-custom-namespace> >.

=back

The maximum number of metric definitions that you can specify in one
C<BatchCreateRumMetricDefinitions> operation is 200.

The maximum number of metric definitions that one destination can
contain is 2000.

Extended metrics sent to CloudWatch and RUM custom metrics are charged
as CloudWatch custom metrics. Each combination of additional dimension
name and dimension value counts as a custom metric. For more
information, see Amazon CloudWatch Pricing
(https://aws.amazon.com/cloudwatch/pricing/).

You must have already created a destination for the metrics before you
send them. For more information, see PutRumMetricsDestination
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html).

If some metric definitions specified in a
C<BatchCreateRumMetricDefinitions> operations are not valid, those
metric definitions fail and return errors, but all valid metric
definitions in the same operation still succeed.


=head2 BatchDeleteRumMetricDefinitions

=over

=item AppMonitorName => Str

=item Destination => Str

=item MetricDefinitionIds => ArrayRef[Str|Undef]

=item [DestinationArn => Str]


=back

Each argument is described in detail in: L<Paws::RUM::BatchDeleteRumMetricDefinitions>

Returns: a L<Paws::RUM::BatchDeleteRumMetricDefinitionsResponse> instance

Removes the specified metrics from being sent to an extended metrics
destination.

If some metric definition IDs specified in a
C<BatchDeleteRumMetricDefinitions> operations are not valid, those
metric definitions fail and return errors, but all valid metric
definition IDs in the same operation are still deleted.

The maximum number of metric definitions that you can specify in one
C<BatchDeleteRumMetricDefinitions> operation is 200.


=head2 BatchGetRumMetricDefinitions

=over

=item AppMonitorName => Str

=item Destination => Str

=item [DestinationArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RUM::BatchGetRumMetricDefinitions>

Returns: a L<Paws::RUM::BatchGetRumMetricDefinitionsResponse> instance

Retrieves the list of metrics and dimensions that a RUM app monitor is
sending to a single destination.


=head2 CreateAppMonitor

=over

=item Name => Str

=item [AppMonitorConfiguration => L<Paws::RUM::AppMonitorConfiguration>]

=item [CustomEvents => L<Paws::RUM::CustomEvents>]

=item [CwLogEnabled => Bool]

=item [DeobfuscationConfiguration => L<Paws::RUM::DeobfuscationConfiguration>]

=item [Domain => Str]

=item [DomainList => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::RUM::TagMap>]


=back

Each argument is described in detail in: L<Paws::RUM::CreateAppMonitor>

Returns: a L<Paws::RUM::CreateAppMonitorResponse> instance

Creates a Amazon CloudWatch RUM app monitor, which collects telemetry
data from your application and sends that data to RUM. The data
includes performance and reliability information such as page load
time, client-side errors, and user behavior.

You use this operation only to create a new app monitor. To update an
existing app monitor, use UpdateAppMonitor
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html)
instead.

After you create an app monitor, sign in to the CloudWatch RUM console
to get the JavaScript code snippet to add to your web application. For
more information, see How do I find a code snippet that I've already
generated?
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)


=head2 DeleteAppMonitor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::RUM::DeleteAppMonitor>

Returns: a L<Paws::RUM::DeleteAppMonitorResponse> instance

Deletes an existing app monitor. This immediately stops the collection
of data.


=head2 DeleteResourcePolicy

=over

=item Name => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::RUM::DeleteResourcePolicy>

Returns: a L<Paws::RUM::DeleteResourcePolicyResponse> instance

Removes the association of a resource-based policy from an app monitor.


=head2 DeleteRumMetricsDestination

=over

=item AppMonitorName => Str

=item Destination => Str

=item [DestinationArn => Str]


=back

Each argument is described in detail in: L<Paws::RUM::DeleteRumMetricsDestination>

Returns: a L<Paws::RUM::DeleteRumMetricsDestinationResponse> instance

Deletes a destination for CloudWatch RUM extended metrics, so that the
specified app monitor stops sending extended metrics to that
destination.


=head2 GetAppMonitor

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::RUM::GetAppMonitor>

Returns: a L<Paws::RUM::GetAppMonitorResponse> instance

Retrieves the complete configuration information for one app monitor.


=head2 GetAppMonitorData

=over

=item Name => Str

=item TimeRange => L<Paws::RUM::TimeRange>

=item [Filters => ArrayRef[L<Paws::RUM::QueryFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RUM::GetAppMonitorData>

Returns: a L<Paws::RUM::GetAppMonitorDataResponse> instance

Retrieves the raw performance events that RUM has collected from your
web application, so that you can do your own processing or analysis of
this data.


=head2 GetResourcePolicy

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::RUM::GetResourcePolicy>

Returns: a L<Paws::RUM::GetResourcePolicyResponse> instance

Use this operation to retrieve information about a resource-based
policy that is attached to an app monitor.


=head2 ListAppMonitors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RUM::ListAppMonitors>

Returns: a L<Paws::RUM::ListAppMonitorsResponse> instance

Returns a list of the Amazon CloudWatch RUM app monitors in the
account.


=head2 ListRumMetricsDestinations

=over

=item AppMonitorName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::RUM::ListRumMetricsDestinations>

Returns: a L<Paws::RUM::ListRumMetricsDestinationsResponse> instance

Returns a list of destinations that you have created to receive RUM
extended metrics, for the specified app monitor.

For more information about extended metrics, see AddRumMetrics
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::RUM::ListTagsForResource>

Returns: a L<Paws::RUM::ListTagsForResourceResponse> instance

Displays the tags associated with a CloudWatch RUM resource.


=head2 PutResourcePolicy

=over

=item Name => Str

=item PolicyDocument => Str

=item [PolicyRevisionId => Str]


=back

Each argument is described in detail in: L<Paws::RUM::PutResourcePolicy>

Returns: a L<Paws::RUM::PutResourcePolicyResponse> instance

Use this operation to assign a resource-based policy to a CloudWatch
RUM app monitor to control access to it. Each app monitor can have one
resource-based policy. The maximum size of the policy is 4 KB. To learn
more about using resource policies with RUM, see Using resource-based
policies with CloudWatch RUM
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html).


=head2 PutRumEvents

=over

=item AppMonitorDetails => L<Paws::RUM::AppMonitorDetails>

=item BatchId => Str

=item Id => Str

=item RumEvents => ArrayRef[L<Paws::RUM::RumEvent>]

=item UserDetails => L<Paws::RUM::UserDetails>

=item [Alias => Str]


=back

Each argument is described in detail in: L<Paws::RUM::PutRumEvents>

Returns: a L<Paws::RUM::PutRumEventsResponse> instance

Sends telemetry events about your application performance and user
behavior to CloudWatch RUM. The code snippet that RUM generates for you
to add to your application includes C<PutRumEvents> operations to send
this data to RUM.

Each C<PutRumEvents> operation can send a batch of events from one user
session.


=head2 PutRumMetricsDestination

=over

=item AppMonitorName => Str

=item Destination => Str

=item [DestinationArn => Str]

=item [IamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::RUM::PutRumMetricsDestination>

Returns: a L<Paws::RUM::PutRumMetricsDestinationResponse> instance

Creates or updates a destination to receive extended metrics from
CloudWatch RUM. You can send extended metrics to CloudWatch or to a
CloudWatch Evidently experiment.

For more information about extended metrics, see
BatchCreateRumMetricDefinitions
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::RUM::TagMap>


=back

Each argument is described in detail in: L<Paws::RUM::TagResource>

Returns: a L<Paws::RUM::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified CloudWatch
RUM resource. Currently, the only resources that can be tagged app
monitors.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a resource that already has
tags. If you specify a new tag key for the resource, this tag is
appended to the list of tags associated with the alarm. If you specify
a tag key that is already associated with the resource, the new tag
value that you specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::RUM::UntagResource>

Returns: a L<Paws::RUM::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateAppMonitor

=over

=item Name => Str

=item [AppMonitorConfiguration => L<Paws::RUM::AppMonitorConfiguration>]

=item [CustomEvents => L<Paws::RUM::CustomEvents>]

=item [CwLogEnabled => Bool]

=item [DeobfuscationConfiguration => L<Paws::RUM::DeobfuscationConfiguration>]

=item [Domain => Str]

=item [DomainList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::RUM::UpdateAppMonitor>

Returns: a L<Paws::RUM::UpdateAppMonitorResponse> instance

Updates the configuration of an existing app monitor. When you use this
operation, only the parts of the app monitor configuration that you
specify in this operation are changed. For any parameters that you
omit, the existing values are kept.

You can't use this operation to change the tags of an existing app
monitor. To change the tags of an existing app monitor, use TagResource
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html).

To create a new app monitor, use CreateAppMonitor
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html).

After you update an app monitor, sign in to the CloudWatch RUM console
to get the updated JavaScript code snippet to add to your web
application. For more information, see How do I find a code snippet
that I've already generated?
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)


=head2 UpdateRumMetricDefinition

=over

=item AppMonitorName => Str

=item Destination => Str

=item MetricDefinition => L<Paws::RUM::MetricDefinitionRequest>

=item MetricDefinitionId => Str

=item [DestinationArn => Str]


=back

Each argument is described in detail in: L<Paws::RUM::UpdateRumMetricDefinition>

Returns: a L<Paws::RUM::UpdateRumMetricDefinitionResponse> instance

Modifies one existing metric definition for CloudWatch RUM extended
metrics. For more information about extended metrics, see
BatchCreateRumMetricsDefinitions
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 BatchGetAllRumMetricDefinitions(sub { },AppMonitorName => Str, Destination => Str, [DestinationArn => Str, MaxResults => Int, NextToken => Str])

=head2 BatchGetAllRumMetricDefinitions(AppMonitorName => Str, Destination => Str, [DestinationArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricDefinitions, passing the object as the first parameter, and the string 'MetricDefinitions' as the second parameter 

If not, it will return a a L<Paws::RUM::BatchGetRumMetricDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAppMonitorData(sub { },Name => Str, TimeRange => L<Paws::RUM::TimeRange>, [Filters => ArrayRef[L<Paws::RUM::QueryFilter>], MaxResults => Int, NextToken => Str])

=head2 GetAllAppMonitorData(Name => Str, TimeRange => L<Paws::RUM::TimeRange>, [Filters => ArrayRef[L<Paws::RUM::QueryFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::RUM::GetAppMonitorDataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAppMonitors(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllAppMonitors([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AppMonitorSummaries, passing the object as the first parameter, and the string 'AppMonitorSummaries' as the second parameter 

If not, it will return a a L<Paws::RUM::ListAppMonitorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRumMetricsDestinations(sub { },AppMonitorName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRumMetricsDestinations(AppMonitorName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Destinations, passing the object as the first parameter, and the string 'Destinations' as the second parameter 

If not, it will return a a L<Paws::RUM::ListRumMetricsDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


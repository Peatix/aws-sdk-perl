package Paws::ApplicationSignals;
  use Moose;
  sub service { 'application-signals' }
  sub signing_name { 'application-signals' }
  sub version { '2024-04-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetServiceLevelObjectiveBudgetReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateExclusionWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::BatchUpdateExclusionWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceLevelObjective {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::CreateServiceLevelObjective', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceLevelObjective {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::DeleteServiceLevelObjective', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceLevelObjective {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::GetServiceLevelObjective', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceDependencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServiceDependencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceDependents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServiceDependents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceLevelObjectiveExclusionWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceLevelObjectives {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServiceLevelObjectives', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServiceOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDiscovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::StartDiscovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceLevelObjective {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationSignals::UpdateServiceLevelObjective', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllServiceDependencies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceDependencies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceDependencies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceDependencies }, @{ $next_result->ServiceDependencies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceDependencies') foreach (@{ $result->ServiceDependencies });
        $result = $self->ListServiceDependencies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceDependencies') foreach (@{ $result->ServiceDependencies });
    }

    return undef
  }
  sub ListAllServiceDependents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceDependents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceDependents(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceDependents }, @{ $next_result->ServiceDependents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceDependents') foreach (@{ $result->ServiceDependents });
        $result = $self->ListServiceDependents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceDependents') foreach (@{ $result->ServiceDependents });
    }

    return undef
  }
  sub ListAllServiceLevelObjectiveExclusionWindows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceLevelObjectiveExclusionWindows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceLevelObjectiveExclusionWindows(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExclusionWindows }, @{ $next_result->ExclusionWindows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExclusionWindows') foreach (@{ $result->ExclusionWindows });
        $result = $self->ListServiceLevelObjectiveExclusionWindows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExclusionWindows') foreach (@{ $result->ExclusionWindows });
    }

    return undef
  }
  sub ListAllServiceLevelObjectives {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceLevelObjectives(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceLevelObjectives(@_, NextToken => $next_result->NextToken);
        push @{ $result->SloSummaries }, @{ $next_result->SloSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SloSummaries') foreach (@{ $result->SloSummaries });
        $result = $self->ListServiceLevelObjectives(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SloSummaries') foreach (@{ $result->SloSummaries });
    }

    return undef
  }
  sub ListAllServiceOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServiceOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceOperations }, @{ $next_result->ServiceOperations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceOperations') foreach (@{ $result->ServiceOperations });
        $result = $self->ListServiceOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceOperations') foreach (@{ $result->ServiceOperations });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceSummaries }, @{ $next_result->ServiceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceSummaries') foreach (@{ $result->ServiceSummaries });
        $result = $self->ListServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceSummaries') foreach (@{ $result->ServiceSummaries });
    }

    return undef
  }


  sub operations { qw/BatchGetServiceLevelObjectiveBudgetReport BatchUpdateExclusionWindows CreateServiceLevelObjective DeleteServiceLevelObjective GetService GetServiceLevelObjective ListServiceDependencies ListServiceDependents ListServiceLevelObjectiveExclusionWindows ListServiceLevelObjectives ListServiceOperations ListServices ListTagsForResource StartDiscovery TagResource UntagResource UpdateServiceLevelObjective / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals - Perl Interface to AWS Amazon CloudWatch Application Signals

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationSignals');
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

Use CloudWatch Application Signals for comprehensive observability of
your cloud-based applications. It enables real-time service health
dashboards and helps you track long-term performance trends against
your business goals. The application-centric view provides you with
unified visibility across your applications, services, and
dependencies, so you can proactively monitor and efficiently triage any
issues that may arise, ensuring optimal customer experience.

Application Signals provides the following benefits:

=over

=item *

Automatically collect metrics and traces from your applications, and
display key metrics such as call volume, availability, latency, faults,
and errors.

=item *

Create and monitor service level objectives (SLOs).

=item *

See a map of your application topology that Application Signals
automatically discovers, that gives you a visual representation of your
applications, dependencies, and their connectivity.

=back

Application Signals works with CloudWatch RUM, CloudWatch Synthetics
canaries, and Amazon Web Services Service Catalog AppRegistry, to
display your client pages, Synthetics canaries, and application names
within dashboards and maps.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetServiceLevelObjectiveBudgetReport

=over

=item SloIds => ArrayRef[Str|Undef]

=item Timestamp => Str


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReport>

Returns: a L<Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReportOutput> instance

Use this operation to retrieve one or more I<service level objective
(SLO) budget reports>.

An I<error budget> is the amount of time or requests in an unhealthy
state that your service can accumulate during an interval before your
overall SLO budget health is breached and the SLO is considered to be
unmet. For example, an SLO with a threshold of 99.95% and a monthly
interval translates to an error budget of 21.9 minutes of downtime in a
30-day month.

Budget reports include a health indicator, the attainment value, and
remaining budget.

For more information about SLO error budgets, see SLO concepts
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-concepts).


=head2 BatchUpdateExclusionWindows

=over

=item SloIds => ArrayRef[Str|Undef]

=item [AddExclusionWindows => ArrayRef[L<Paws::ApplicationSignals::ExclusionWindow>]]

=item [RemoveExclusionWindows => ArrayRef[L<Paws::ApplicationSignals::ExclusionWindow>]]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::BatchUpdateExclusionWindows>

Returns: a L<Paws::ApplicationSignals::BatchUpdateExclusionWindowsOutput> instance

Add or remove time window exclusions for one or more Service Level
Objectives (SLOs).


=head2 CreateServiceLevelObjective

=over

=item Name => Str

=item [BurnRateConfigurations => ArrayRef[L<Paws::ApplicationSignals::BurnRateConfiguration>]]

=item [Description => Str]

=item [Goal => L<Paws::ApplicationSignals::Goal>]

=item [RequestBasedSliConfig => L<Paws::ApplicationSignals::RequestBasedServiceLevelIndicatorConfig>]

=item [SliConfig => L<Paws::ApplicationSignals::ServiceLevelIndicatorConfig>]

=item [Tags => ArrayRef[L<Paws::ApplicationSignals::Tag>]]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::CreateServiceLevelObjective>

Returns: a L<Paws::ApplicationSignals::CreateServiceLevelObjectiveOutput> instance

Creates a service level objective (SLO), which can help you ensure that
your critical business operations are meeting customer expectations.
Use SLOs to set and track specific target levels for the reliability
and availability of your applications and services. SLOs use service
level indicators (SLIs) to calculate whether the application is
performing at the level that you want.

Create an SLO to set a target for a service or operationE<rsquo>s
availability or latency. CloudWatch measures this target frequently you
can find whether it has been breached.

The target performance quality that is defined for an SLO is the
I<attainment goal>.

You can set SLO targets for your applications that are discovered by
Application Signals, using critical metrics such as latency and
availability. You can also set SLOs against any CloudWatch metric or
math expression that produces a time series.

You can't create an SLO for a service operation that was discovered by
Application Signals until after that operation has reported standard
metrics to Application Signals.

When you create an SLO, you specify whether it is a I<period-based SLO>
or a I<request-based SLO>. Each type of SLO has a different way of
evaluating your application's performance against its attainment goal.

=over

=item *

A I<period-based SLO> uses defined I<periods> of time within a
specified total time interval. For each period of time, Application
Signals determines whether the application met its goal. The attainment
rate is calculated as the C<number of good periods/number of total
periods>.

For example, for a period-based SLO, meeting an attainment goal of
99.9% means that within your interval, your application must meet its
performance goal during at least 99.9% of the time periods.

=item *

A I<request-based SLO> doesn't use pre-defined periods of time.
Instead, the SLO measures C<number of good requests/number of total
requests> during the interval. At any time, you can find the ratio of
good requests to total requests for the interval up to the time stamp
that you specify, and measure that ratio against the goal set in your
SLO.

=back

After you have created an SLO, you can retrieve error budget reports
for it. An I<error budget> is the amount of time or amount of requests
that your application can be non-compliant with the SLO's goal, and
still have your application meet the goal.

=over

=item *

For a period-based SLO, the error budget starts at a number defined by
the highest number of periods that can fail to meet the threshold,
while still meeting the overall goal. The I<remaining error budget>
decreases with every failed period that is recorded. The error budget
within one interval can never increase.

For example, an SLO with a threshold that 99.95% of requests must be
completed under 2000ms every month translates to an error budget of
21.9 minutes of downtime per month.

=item *

For a request-based SLO, the remaining error budget is dynamic and can
increase or decrease, depending on the ratio of good requests to total
requests.

=back

For more information about SLOs, see Service level objectives (SLOs)
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html).

When you perform a C<CreateServiceLevelObjective> operation,
Application Signals creates the
I<AWSServiceRoleForCloudWatchApplicationSignals> service-linked role,
if it doesn't already exist in your account. This service- linked role
has the following permissions:

=over

=item *

C<xray:GetServiceGraph>

=item *

C<logs:StartQuery>

=item *

C<logs:GetQueryResults>

=item *

C<cloudwatch:GetMetricData>

=item *

C<cloudwatch:ListMetrics>

=item *

C<tag:GetResources>

=item *

C<autoscaling:DescribeAutoScalingGroups>

=back



=head2 DeleteServiceLevelObjective

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::DeleteServiceLevelObjective>

Returns: a L<Paws::ApplicationSignals::DeleteServiceLevelObjectiveOutput> instance

Deletes the specified service level objective.


=head2 GetService

=over

=item EndTime => Str

=item KeyAttributes => L<Paws::ApplicationSignals::Attributes>

=item StartTime => Str


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::GetService>

Returns: a L<Paws::ApplicationSignals::GetServiceOutput> instance

Returns information about a service discovered by Application Signals.


=head2 GetServiceLevelObjective

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::GetServiceLevelObjective>

Returns: a L<Paws::ApplicationSignals::GetServiceLevelObjectiveOutput> instance

Returns information about one SLO created in the account.


=head2 ListServiceDependencies

=over

=item EndTime => Str

=item KeyAttributes => L<Paws::ApplicationSignals::Attributes>

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServiceDependencies>

Returns: a L<Paws::ApplicationSignals::ListServiceDependenciesOutput> instance

Returns a list of service dependencies of the service that you specify.
A dependency is an infrastructure component that an operation of this
service connects with. Dependencies can include Amazon Web Services
services, Amazon Web Services resources, and third-party services.


=head2 ListServiceDependents

=over

=item EndTime => Str

=item KeyAttributes => L<Paws::ApplicationSignals::Attributes>

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServiceDependents>

Returns: a L<Paws::ApplicationSignals::ListServiceDependentsOutput> instance

Returns the list of dependents that invoked the specified service
during the provided time range. Dependents include other services,
CloudWatch Synthetics canaries, and clients that are instrumented with
CloudWatch RUM app monitors.


=head2 ListServiceLevelObjectiveExclusionWindows

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindows>

Returns: a L<Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput> instance

Retrieves all exclusion windows configured for a specific SLO.


=head2 ListServiceLevelObjectives

=over

=item [DependencyConfig => L<Paws::ApplicationSignals::DependencyConfig>]

=item [IncludeLinkedAccounts => Bool]

=item [KeyAttributes => L<Paws::ApplicationSignals::Attributes>]

=item [MaxResults => Int]

=item [MetricSourceTypes => ArrayRef[Str|Undef]]

=item [NextToken => Str]

=item [OperationName => Str]

=item [SloOwnerAwsAccountId => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServiceLevelObjectives>

Returns: a L<Paws::ApplicationSignals::ListServiceLevelObjectivesOutput> instance

Returns a list of SLOs created in this account.


=head2 ListServiceOperations

=over

=item EndTime => Str

=item KeyAttributes => L<Paws::ApplicationSignals::Attributes>

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServiceOperations>

Returns: a L<Paws::ApplicationSignals::ListServiceOperationsOutput> instance

Returns a list of the I<operations> of this service that have been
discovered by Application Signals. Only the operations that were
invoked during the specified time range are returned.


=head2 ListServices

=over

=item EndTime => Str

=item StartTime => Str

=item [AwsAccountId => Str]

=item [IncludeLinkedAccounts => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListServices>

Returns: a L<Paws::ApplicationSignals::ListServicesOutput> instance

Returns a list of services that have been discovered by Application
Signals. A service represents a minimum logical and transactional unit
that completes a business function. Services are discovered through
Application Signals instrumentation.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::ListTagsForResource>

Returns: a L<Paws::ApplicationSignals::ListTagsForResourceResponse> instance

Displays the tags associated with a CloudWatch resource. Tags can be
assigned to service level objectives.


=head2 StartDiscovery






Each argument is described in detail in: L<Paws::ApplicationSignals::StartDiscovery>

Returns: a L<Paws::ApplicationSignals::StartDiscoveryOutput> instance

Enables this Amazon Web Services account to be able to use CloudWatch
Application Signals by creating the
I<AWSServiceRoleForCloudWatchApplicationSignals> service-linked role.
This service- linked role has the following permissions:

=over

=item *

C<xray:GetServiceGraph>

=item *

C<logs:StartQuery>

=item *

C<logs:GetQueryResults>

=item *

C<cloudwatch:GetMetricData>

=item *

C<cloudwatch:ListMetrics>

=item *

C<tag:GetResources>

=item *

C<autoscaling:DescribeAutoScalingGroups>

=back

After completing this step, you still need to instrument your Java and
Python applications to send data to Application Signals. For more
information, see Enabling Application Signals
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals-Enable.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::ApplicationSignals::Tag>]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::TagResource>

Returns: a L<Paws::ApplicationSignals::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified CloudWatch
resource, such as a service level objective.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with an alarm that already has
tags. If you specify a new tag key for the alarm, this tag is appended
to the list of tags associated with the alarm. If you specify a tag key
that is already associated with the alarm, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a CloudWatch resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::UntagResource>

Returns: a L<Paws::ApplicationSignals::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateServiceLevelObjective

=over

=item Id => Str

=item [BurnRateConfigurations => ArrayRef[L<Paws::ApplicationSignals::BurnRateConfiguration>]]

=item [Description => Str]

=item [Goal => L<Paws::ApplicationSignals::Goal>]

=item [RequestBasedSliConfig => L<Paws::ApplicationSignals::RequestBasedServiceLevelIndicatorConfig>]

=item [SliConfig => L<Paws::ApplicationSignals::ServiceLevelIndicatorConfig>]


=back

Each argument is described in detail in: L<Paws::ApplicationSignals::UpdateServiceLevelObjective>

Returns: a L<Paws::ApplicationSignals::UpdateServiceLevelObjectiveOutput> instance

Updates an existing service level objective (SLO). If you omit
parameters, the previous values of those parameters are retained.

You cannot change from a period-based SLO to a request-based SLO, or
change from a request-based SLO to a period-based SLO.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllServiceDependencies(sub { },EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceDependencies(EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceDependencies, passing the object as the first parameter, and the string 'ServiceDependencies' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServiceDependenciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceDependents(sub { },EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceDependents(EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceDependents, passing the object as the first parameter, and the string 'ServiceDependents' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServiceDependentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceLevelObjectiveExclusionWindows(sub { },Id => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceLevelObjectiveExclusionWindows(Id => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExclusionWindows, passing the object as the first parameter, and the string 'ExclusionWindows' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceLevelObjectives(sub { },[DependencyConfig => L<Paws::ApplicationSignals::DependencyConfig>, IncludeLinkedAccounts => Bool, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, MaxResults => Int, MetricSourceTypes => ArrayRef[Str|Undef], NextToken => Str, OperationName => Str, SloOwnerAwsAccountId => Str])

=head2 ListAllServiceLevelObjectives([DependencyConfig => L<Paws::ApplicationSignals::DependencyConfig>, IncludeLinkedAccounts => Bool, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, MaxResults => Int, MetricSourceTypes => ArrayRef[Str|Undef], NextToken => Str, OperationName => Str, SloOwnerAwsAccountId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SloSummaries, passing the object as the first parameter, and the string 'SloSummaries' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServiceLevelObjectivesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceOperations(sub { },EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServiceOperations(EndTime => Str, KeyAttributes => L<Paws::ApplicationSignals::Attributes>, StartTime => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceOperations, passing the object as the first parameter, and the string 'ServiceOperations' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServiceOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },EndTime => Str, StartTime => Str, [AwsAccountId => Str, IncludeLinkedAccounts => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllServices(EndTime => Str, StartTime => Str, [AwsAccountId => Str, IncludeLinkedAccounts => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceSummaries, passing the object as the first parameter, and the string 'ServiceSummaries' as the second parameter 

If not, it will return a a L<Paws::ApplicationSignals::ListServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


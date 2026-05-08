package Paws::ARCZonalShift;
  use Moose;
  sub service { 'arc-zonal-shift' }
  sub signing_name { 'arc-zonal-shift' }
  sub version { '2022-10-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelZonalShift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::CancelZonalShift', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePracticeRunConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::CreatePracticeRunConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePracticeRunConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::DeletePracticeRunConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutoshiftObserverNotificationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::GetManagedResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutoshifts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::ListAutoshifts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::ListManagedResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListZonalShifts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::ListZonalShifts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartZonalShift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::StartZonalShift', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAutoshiftObserverNotificationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePracticeRunConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::UpdatePracticeRunConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateZonalAutoshiftConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::UpdateZonalAutoshiftConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateZonalShift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ARCZonalShift::UpdateZonalShift', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAutoshifts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAutoshifts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAutoshifts(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListAutoshifts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllManagedResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListManagedResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListManagedResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllZonalShifts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListZonalShifts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListZonalShifts(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListZonalShifts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/CancelZonalShift CreatePracticeRunConfiguration DeletePracticeRunConfiguration GetAutoshiftObserverNotificationStatus GetManagedResource ListAutoshifts ListManagedResources ListZonalShifts StartZonalShift UpdateAutoshiftObserverNotificationStatus UpdatePracticeRunConfiguration UpdateZonalAutoshiftConfiguration UpdateZonalShift / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift - Perl Interface to AWS AWS ARC - Zonal Shift

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ARCZonalShift');
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

Welcome to the API Reference Guide for zonal shift and zonal autoshift
in Amazon Route 53 Application Recovery Controller (ARC).

You can start a zonal shift to move traffic for a load balancer
resource away from an Availability Zone to help your application
recover quickly from an impairment in an Availability Zone. For
example, you can recover your application from a developer's bad code
deployment or from an Amazon Web Services infrastructure failure in a
single Availability Zone.

You can also configure zonal autoshift for supported load balancer
resources. Zonal autoshift is a capability in ARC where you authorize
Amazon Web Services to shift away application resource traffic from an
Availability Zone during events, on your behalf, to help reduce your
time to recovery. Amazon Web Services starts an autoshift when internal
telemetry indicates that there is an Availability Zone impairment that
could potentially impact customers.

To help make sure that zonal autoshift is safe for your application,
you must also configure practice runs when you enable zonal autoshift
for a resource. Practice runs start weekly zonal shifts for a resource,
to shift traffic for the resource away from an Availability Zone.
Practice runs help you to make sure, on a regular basis, that you have
enough capacity in all the Availability Zones in an Amazon Web Services
Region for your application to continue to operate normally when
traffic for a resource is shifted away from one Availability Zone.

Before you configure practice runs or enable zonal autoshift, we
strongly recommend that you prescale your application resource capacity
in all Availability Zones in the Region where your application
resources are deployed. You should not rely on scaling on demand when
an autoshift or practice run starts. Zonal autoshift, including
practice runs, works independently, and does not wait for auto scaling
actions to complete. Relying on auto scaling, instead of pre-scaling,
can result in loss of availability.

If you use auto scaling to handle regular cycles of traffic, we
strongly recommend that you configure the minimum capacity of your auto
scaling to continue operating normally with the loss of an Availability
Zone.

Be aware that ARC does not inspect the health of individual resources.
Amazon Web Services only starts an autoshift when Amazon Web Services
telemetry detects that there is an Availability Zone impairment that
could potentially impact customers. In some cases, resources might be
shifted away that are not experiencing impact.

For more information about using zonal shift and zonal autoshift, see
the Amazon Route 53 Application Recovery Controller Developer Guide
(https://docs.aws.amazon.com/r53recovery/latest/dg/what-is-route53-recovery.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift-2022-10-30>


=head1 METHODS

=head2 CancelZonalShift

=over

=item ZonalShiftId => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::CancelZonalShift>

Returns: a L<Paws::ARCZonalShift::ZonalShift> instance

Cancel a zonal shift in Amazon Route 53 Application Recovery
Controller. To cancel the zonal shift, specify the zonal shift ID.

A zonal shift can be one that you've started for a resource in your
Amazon Web Services account in an Amazon Web Services Region, or it can
be a zonal shift started by a practice run with zonal autoshift.


=head2 CreatePracticeRunConfiguration

=over

=item OutcomeAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]

=item ResourceIdentifier => Str

=item [BlockedDates => ArrayRef[Str|Undef]]

=item [BlockedWindows => ArrayRef[Str|Undef]]

=item [BlockingAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::CreatePracticeRunConfiguration>

Returns: a L<Paws::ARCZonalShift::CreatePracticeRunConfigurationResponse> instance

A practice run configuration for zonal autoshift is required when you
enable zonal autoshift. A practice run configuration includes
specifications for blocked dates and blocked time windows, and for
Amazon CloudWatch alarms that you create to use with practice runs. The
alarms that you specify are an I<outcome alarm>, to monitor application
health during practice runs and, optionally, a I<blocking alarm>, to
block practice runs from starting.

When a resource has a practice run configuration, ARC starts zonal
shifts for the resource weekly, to shift traffic for practice runs.
Practice runs help you to ensure that shifting away traffic from an
Availability Zone during an autoshift is safe for your application.

For more information, see Considerations when you configure zonal
autoshift
(https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.considerations.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.


=head2 DeletePracticeRunConfiguration

=over

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::DeletePracticeRunConfiguration>

Returns: a L<Paws::ARCZonalShift::DeletePracticeRunConfigurationResponse> instance

Deletes the practice run configuration for a resource. Before you can
delete a practice run configuration for a resource., you must disable
zonal autoshift for the resource. Practice runs must be configured for
zonal autoshift to be enabled.


=head2 GetAutoshiftObserverNotificationStatus






Each argument is described in detail in: L<Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatus>

Returns: a L<Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatusResponse> instance

Returns the status of the autoshift observer notification. Autoshift
observer notifications notify you through Amazon EventBridge when there
is an autoshift event for zonal autoshift. The status can be C<ENABLED>
or C<DISABLED>. When C<ENABLED>, a notification is sent when an
autoshift is triggered. When C<DISABLED>, notifications are not sent.


=head2 GetManagedResource

=over

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::GetManagedResource>

Returns: a L<Paws::ARCZonalShift::GetManagedResourceResponse> instance

Get information about a resource that's been registered for zonal
shifts with Amazon Route 53 Application Recovery Controller in this
Amazon Web Services Region. Resources that are registered for zonal
shifts are managed resources in ARC. You can start zonal shifts and
configure zonal autoshift for managed resources.


=head2 ListAutoshifts

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::ListAutoshifts>

Returns: a L<Paws::ARCZonalShift::ListAutoshiftsResponse> instance

Returns the autoshifts for an Amazon Web Services Region. By default,
the call returns only C<ACTIVE> autoshifts. Optionally, you can specify
the C<status> parameter to return C<COMPLETED> autoshifts.


=head2 ListManagedResources

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::ListManagedResources>

Returns: a L<Paws::ARCZonalShift::ListManagedResourcesResponse> instance

Lists all the resources in your Amazon Web Services account in this
Amazon Web Services Region that are managed for zonal shifts in Amazon
Route 53 Application Recovery Controller, and information about them.
The information includes the zonal autoshift status for the resource,
as well as the Amazon Resource Name (ARN), the Availability Zones that
each resource is deployed in, and the resource name.


=head2 ListZonalShifts

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifier => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::ListZonalShifts>

Returns: a L<Paws::ARCZonalShift::ListZonalShiftsResponse> instance

Lists all active and completed zonal shifts in Amazon Route 53
Application Recovery Controller in your Amazon Web Services account in
this Amazon Web Services Region.


=head2 StartZonalShift

=over

=item AwayFrom => Str

=item Comment => Str

=item ExpiresIn => Str

=item ResourceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::StartZonalShift>

Returns: a L<Paws::ARCZonalShift::ZonalShift> instance

You start a zonal shift to temporarily move load balancer traffic away
from an Availability Zone in an Amazon Web Services Region, to help
your application recover immediately, for example, from a developer's
bad code deployment or from an Amazon Web Services infrastructure
failure in a single Availability Zone. You can start a zonal shift in
ARC only for managed resources in your Amazon Web Services account in
an Amazon Web Services Region. Resources are automatically registered
with ARC by Amazon Web Services services.

At this time, you can only start a zonal shift for Network Load
Balancers and Application Load Balancers with cross-zone load balancing
turned off.

When you start a zonal shift, traffic for the resource is no longer
routed to the Availability Zone. The zonal shift is created immediately
in ARC. However, it can take a short time, typically up to a few
minutes, for existing, in-progress connections in the Availability Zone
to complete.

For more information, see Zonal shift
(https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-shift.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.


=head2 UpdateAutoshiftObserverNotificationStatus

=over

=item Status => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatus>

Returns: a L<Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatusResponse> instance

Update the status of autoshift observer notification. Autoshift
observer notification enables you to be notified, through Amazon
EventBridge, when there is an autoshift event for zonal autoshift.

If the status is C<ENABLED>, ARC includes all autoshift events when you
use the EventBridge pattern C<Autoshift In Progress>. When the status
is C<DISABLED>, ARC includes only autoshift events for autoshifts when
one or more of your resources is included in the autoshift.

For more information, see Notifications for practice runs and
autoshifts
(https://docs.aws.amazon.com/r53recovery/latest/dg/arc-zonal-autoshift.how-it-works.html#ZAShiftNotification)
in the Amazon Route 53 Application Recovery Controller Developer Guide.


=head2 UpdatePracticeRunConfiguration

=over

=item ResourceIdentifier => Str

=item [BlockedDates => ArrayRef[Str|Undef]]

=item [BlockedWindows => ArrayRef[Str|Undef]]

=item [BlockingAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]]

=item [OutcomeAlarms => ArrayRef[L<Paws::ARCZonalShift::ControlCondition>]]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::UpdatePracticeRunConfiguration>

Returns: a L<Paws::ARCZonalShift::UpdatePracticeRunConfigurationResponse> instance

Update a practice run configuration to change one or more of the
following: add, change, or remove the blocking alarm; change the
outcome alarm; or add, change, or remove blocking dates or time
windows.


=head2 UpdateZonalAutoshiftConfiguration

=over

=item ResourceIdentifier => Str

=item ZonalAutoshiftStatus => Str


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::UpdateZonalAutoshiftConfiguration>

Returns: a L<Paws::ARCZonalShift::UpdateZonalAutoshiftConfigurationResponse> instance

The zonal autoshift configuration for a resource includes the practice
run configuration and the status for running autoshifts, zonal
autoshift status. When a resource has a practice run configuation,
Route 53 ARC starts weekly zonal shifts for the resource, to shift
traffic away from an Availability Zone. Weekly practice runs help you
to make sure that your application can continue to operate normally
with the loss of one Availability Zone.

You can update the zonal autoshift autoshift status to enable or
disable zonal autoshift. When zonal autoshift is C<ENABLED>, you
authorize Amazon Web Services to shift away resource traffic for an
application from an Availability Zone during events, on your behalf, to
help reduce time to recovery. Traffic is also shifted away for the
required weekly practice runs.


=head2 UpdateZonalShift

=over

=item ZonalShiftId => Str

=item [Comment => Str]

=item [ExpiresIn => Str]


=back

Each argument is described in detail in: L<Paws::ARCZonalShift::UpdateZonalShift>

Returns: a L<Paws::ARCZonalShift::ZonalShift> instance

Update an active zonal shift in Amazon Route 53 Application Recovery
Controller in your Amazon Web Services account. You can update a zonal
shift to set a new expiration, or edit or replace the comment for the
zonal shift.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAutoshifts(sub { },[MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllAutoshifts([MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ARCZonalShift::ListAutoshiftsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedResources(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllManagedResources([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ARCZonalShift::ListManagedResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllZonalShifts(sub { },[MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, Status => Str])

=head2 ListAllZonalShifts([MaxResults => Int, NextToken => Str, ResourceIdentifier => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ARCZonalShift::ListZonalShiftsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


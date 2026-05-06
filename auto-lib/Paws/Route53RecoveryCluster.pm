package Paws::Route53RecoveryCluster;
  use Moose;
  sub service { 'route53-recovery-cluster' }
  sub signing_name { 'route53-recovery-cluster' }
  sub version { '2019-12-02' }
  sub target_prefix { 'ToggleCustomerAPI' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetRoutingControlState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryCluster::GetRoutingControlState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryCluster::ListRoutingControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingControlState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryCluster::UpdateRoutingControlState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingControlStates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryCluster::UpdateRoutingControlStates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRoutingControls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingControls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingControls(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingControls }, @{ $next_result->RoutingControls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingControls') foreach (@{ $result->RoutingControls });
        $result = $self->ListRoutingControls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingControls') foreach (@{ $result->RoutingControls });
    }

    return undef
  }


  sub operations { qw/GetRoutingControlState ListRoutingControls UpdateRoutingControlState UpdateRoutingControlStates / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster - Perl Interface to AWS Route53 Recovery Cluster

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53RecoveryCluster');
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

Welcome to the Routing Control (Recovery Cluster) API Reference Guide
for Amazon Route 53 Application Recovery Controller.

With Route 53 ARC, you can use routing control with extreme reliability
to recover applications by rerouting traffic across Availability Zones
or Amazon Web Services Regions. Routing controls are simple on/off
switches hosted on a highly available cluster in Route 53 ARC. A
cluster provides a set of five redundant Regional endpoints against
which you can run API calls to get or update the state of routing
controls. To implement failover, you set one routing control to ON and
another one to OFF, to reroute traffic from one Availability Zone or
Amazon Web Services Region to another.

I<Be aware that you must specify a Regional endpoint for a cluster when
you work with API cluster operations to get or update routing control
states in Route 53 ARC.> In addition, you must specify the US West
(Oregon) Region for Route 53 ARC API calls. For example, use the
parameter C<--region us-west-2> with AWS CLI commands. For more
information, see Get and update routing control states using the API
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.api.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

This API guide includes information about the API operations for how to
get and update routing control states in Route 53 ARC. To work with
routing control in Route 53 ARC, you must first create the required
components (clusters, control panels, and routing controls) using the
recovery cluster configuration API.

For more information about working with routing control in Route 53
ARC, see the following:

=over

=item *

Create clusters, control panels, and routing controls by using API
operations. For more information, see the Recovery Control
Configuration API Reference Guide for Amazon Route 53 Application
Recovery Controller
(https://docs.aws.amazon.com/recovery-cluster/latest/api/).

=item *

Learn about the components in recovery control, including clusters,
routing controls, and control panels, and how to work with Route 53 ARC
in the Amazon Web Services console. For more information, see Recovery
control components
(https://docs.aws.amazon.com/r53recovery/latest/dg/introduction-components.html#introduction-components-routing)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

=item *

Route 53 ARC also provides readiness checks that continually audit
resources to help make sure that your applications are scaled and ready
to handle failover traffic. For more information about the related API
operations, see the Recovery Readiness API Reference Guide for Amazon
Route 53 Application Recovery Controller
(https://docs.aws.amazon.com/recovery-readiness/latest/api/).

=item *

For more information about creating resilient applications and
preparing for recovery readiness with Route 53 ARC, see the Amazon
Route 53 Application Recovery Controller Developer Guide
(https://docs.aws.amazon.com/r53recovery/latest/dg/).

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 GetRoutingControlState

=over

=item RoutingControlArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryCluster::GetRoutingControlState>

Returns: a L<Paws::Route53RecoveryCluster::GetRoutingControlStateResponse> instance

Get the state for a routing control. A routing control is a simple
on/off switch that you can use to route traffic to cells. When a
routing control state is set to ON, traffic flows to a cell. When the
state is set to OFF, traffic does not flow.

Before you can create a routing control, you must first create a
cluster, and then host the control in a control panel on the cluster.
For more information, see Create routing control structures
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.
You access one of the endpoints for the cluster to get or update the
routing control state to redirect traffic for your application.

I<You must specify Regional endpoints when you work with API cluster
operations to get or update routing control states in Route 53 ARC.>

To see a code example for getting a routing control state, including
accessing Regional cluster endpoints in sequence, see API examples
(https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

Learn more about working with routing controls in the following topics
in the Amazon Route 53 Application Recovery Controller Developer Guide:

=over

=item *

Viewing and updating routing control states
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

=item *

Working with routing controls in Route 53 ARC
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)

=back



=head2 ListRoutingControls

=over

=item [ControlPanelArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryCluster::ListRoutingControls>

Returns: a L<Paws::Route53RecoveryCluster::ListRoutingControlsResponse> instance

List routing control names and Amazon Resource Names (ARNs), as well as
the routing control state for each routing control, along with the
control panel name and control panel ARN for the routing controls. If
you specify a control panel ARN, this call lists the routing controls
in the control panel. Otherwise, it lists all the routing controls in
the cluster.

A routing control is a simple on/off switch in Route 53 ARC that you
can use to route traffic to cells. When a routing control state is set
to ON, traffic flows to a cell. When the state is set to OFF, traffic
does not flow.

Before you can create a routing control, you must first create a
cluster, and then host the control in a control panel on the cluster.
For more information, see Create routing control structures
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.create.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.
You access one of the endpoints for the cluster to get or update the
routing control state to redirect traffic for your application.

I<You must specify Regional endpoints when you work with API cluster
operations to use this API operation to list routing controls in Route
53 ARC.>

Learn more about working with routing controls in the following topics
in the Amazon Route 53 Application Recovery Controller Developer Guide:

=over

=item *

Viewing and updating routing control states
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

=item *

Working with routing controls in Route 53 ARC
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)

=back



=head2 UpdateRoutingControlState

=over

=item RoutingControlArn => Str

=item RoutingControlState => Str

=item [SafetyRulesToOverride => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryCluster::UpdateRoutingControlState>

Returns: a L<Paws::Route53RecoveryCluster::UpdateRoutingControlStateResponse> instance

Set the state of the routing control to reroute traffic. You can set
the value to ON or OFF. When the state is ON, traffic flows to a cell.
When the state is OFF, traffic does not flow.

With Route 53 ARC, you can add safety rules for routing controls, which
are safeguards for routing control state updates that help prevent
unexpected outcomes, like fail open traffic routing. However, there are
scenarios when you might want to bypass the routing control safeguards
that are enforced with safety rules that you've configured. For
example, you might want to fail over quickly for disaster recovery, and
one or more safety rules might be unexpectedly preventing you from
updating a routing control state to reroute traffic. In a "break glass"
scenario like this, you can override one or more safety rules to change
a routing control state and fail over your application.

The C<SafetyRulesToOverride> property enables you override one or more
safety rules and update routing control states. For more information,
see Override safety rules to reroute traffic
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

I<You must specify Regional endpoints when you work with API cluster
operations to get or update routing control states in Route 53 ARC.>

To see a code example for getting a routing control state, including
accessing Regional cluster endpoints in sequence, see API examples
(https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

=over

=item *

Viewing and updating routing control states
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

=item *

Working with routing controls overall
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)

=back



=head2 UpdateRoutingControlStates

=over

=item UpdateRoutingControlStateEntries => ArrayRef[L<Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry>]

=item [SafetyRulesToOverride => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryCluster::UpdateRoutingControlStates>

Returns: a L<Paws::Route53RecoveryCluster::UpdateRoutingControlStatesResponse> instance

Set multiple routing control states. You can set the value for each
state to be ON or OFF. When the state is ON, traffic flows to a cell.
When it's OFF, traffic does not flow.

With Route 53 ARC, you can add safety rules for routing controls, which
are safeguards for routing control state updates that help prevent
unexpected outcomes, like fail open traffic routing. However, there are
scenarios when you might want to bypass the routing control safeguards
that are enforced with safety rules that you've configured. For
example, you might want to fail over quickly for disaster recovery, and
one or more safety rules might be unexpectedly preventing you from
updating a routing control state to reroute traffic. In a "break glass"
scenario like this, you can override one or more safety rules to change
a routing control state and fail over your application.

The C<SafetyRulesToOverride> property enables you override one or more
safety rules and update routing control states. For more information,
see Override safety rules to reroute traffic
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

I<You must specify Regional endpoints when you work with API cluster
operations to get or update routing control states in Route 53 ARC.>

To see a code example for getting a routing control state, including
accessing Regional cluster endpoints in sequence, see API examples
(https://docs.aws.amazon.com/r53recovery/latest/dg/service_code_examples_actions.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.

=over

=item *

Viewing and updating routing control states
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.update.html)

=item *

Working with routing controls overall
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRoutingControls(sub { },[ControlPanelArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingControls([ControlPanelArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingControls, passing the object as the first parameter, and the string 'RoutingControls' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryCluster::ListRoutingControlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


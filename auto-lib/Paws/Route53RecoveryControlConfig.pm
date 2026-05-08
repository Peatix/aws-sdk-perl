package Paws::Route53RecoveryControlConfig;
  use Moose;
  sub service { 'route53-recovery-control-config' }
  sub signing_name { 'route53-recovery-control-config' }
  sub version { '2020-11-02' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateControlPanel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::CreateControlPanel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoutingControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::CreateRoutingControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSafetyRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::CreateSafetyRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteControlPanel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DeleteControlPanel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoutingControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DeleteRoutingControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSafetyRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DeleteSafetyRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeControlPanel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DescribeControlPanel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRoutingControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DescribeRoutingControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSafetyRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::DescribeSafetyRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociatedRoute53HealthChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControlPanels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListControlPanels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListRoutingControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSafetyRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListSafetyRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateControlPanel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::UpdateControlPanel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::UpdateRoutingControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSafetyRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53RecoveryControlConfig::UpdateSafetyRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssociatedRoute53HealthChecks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociatedRoute53HealthChecks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociatedRoute53HealthChecks(@_, NextToken => $next_result->NextToken);
        push @{ $result->HealthCheckIds }, @{ $next_result->HealthCheckIds };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HealthCheckIds') foreach (@{ $result->HealthCheckIds });
        $result = $self->ListAssociatedRoute53HealthChecks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HealthCheckIds') foreach (@{ $result->HealthCheckIds });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->ListClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub ListAllControlPanels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListControlPanels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListControlPanels(@_, NextToken => $next_result->NextToken);
        push @{ $result->ControlPanels }, @{ $next_result->ControlPanels };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ControlPanels') foreach (@{ $result->ControlPanels });
        $result = $self->ListControlPanels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ControlPanels') foreach (@{ $result->ControlPanels });
    }

    return undef
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
  sub ListAllSafetyRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSafetyRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSafetyRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->SafetyRules }, @{ $next_result->SafetyRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SafetyRules') foreach (@{ $result->SafetyRules });
        $result = $self->ListSafetyRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SafetyRules') foreach (@{ $result->SafetyRules });
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateControlPanel CreateRoutingControl CreateSafetyRule DeleteCluster DeleteControlPanel DeleteRoutingControl DeleteSafetyRule DescribeCluster DescribeControlPanel DescribeRoutingControl DescribeSafetyRule GetResourcePolicy ListAssociatedRoute53HealthChecks ListClusters ListControlPanels ListRoutingControls ListSafetyRules ListTagsForResource TagResource UntagResource UpdateCluster UpdateControlPanel UpdateRoutingControl UpdateSafetyRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig - Perl Interface to AWS AWS Route53 Recovery Control Config

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53RecoveryControlConfig');
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

Recovery Control Configuration API Reference for Amazon Route 53
Application Recovery Controller

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCluster

=over

=item ClusterName => Str

=item [ClientToken => Str]

=item [NetworkType => Str]

=item [Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::CreateCluster>

Returns: a L<Paws::Route53RecoveryControlConfig::CreateClusterResponse> instance

Create a new cluster. A cluster is a set of redundant Regional
endpoints against which you can run API calls to update or get the
state of one or more routing controls. Each cluster has a name, status,
Amazon Resource Name (ARN), and an array of the five cluster endpoints
(one for each supported Amazon Web Services Region) that you can use
with API calls to the cluster data plane.


=head2 CreateControlPanel

=over

=item ClusterArn => Str

=item ControlPanelName => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::CreateControlPanel>

Returns: a L<Paws::Route53RecoveryControlConfig::CreateControlPanelResponse> instance

Creates a new control panel. A control panel represents a group of
routing controls that can be changed together in a single transaction.
You can use a control panel to centrally view the operational status of
applications across your organization, and trigger multi-app failovers
in a single transaction, for example, to fail over an Availability Zone
or Amazon Web Services Region.


=head2 CreateRoutingControl

=over

=item ClusterArn => Str

=item RoutingControlName => Str

=item [ClientToken => Str]

=item [ControlPanelArn => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::CreateRoutingControl>

Returns: a L<Paws::Route53RecoveryControlConfig::CreateRoutingControlResponse> instance

Creates a new routing control.

A routing control has one of two states: ON and OFF. You can map the
routing control state to the state of an Amazon Route 53 health check,
which can be used to control traffic routing.

To get or update the routing control state, see the Recovery Cluster
(data plane) API actions for Amazon Route 53 Application Recovery
Controller.


=head2 CreateSafetyRule

=over

=item [AssertionRule => L<Paws::Route53RecoveryControlConfig::NewAssertionRule>]

=item [ClientToken => Str]

=item [GatingRule => L<Paws::Route53RecoveryControlConfig::NewGatingRule>]

=item [Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::CreateSafetyRule>

Returns: a L<Paws::Route53RecoveryControlConfig::CreateSafetyRuleResponse> instance

Creates a safety rule in a control panel. Safety rules let you add
safeguards around changing routing control states, and for enabling and
disabling routing controls, to help prevent unexpected outcomes.

There are two types of safety rules: assertion rules and gating rules.

Assertion rule: An assertion rule enforces that, when you change a
routing control state, that a certain criteria is met. For example, the
criteria might be that at least one routing control state is On after
the transaction so that traffic continues to flow to at least one cell
for the application. This ensures that you avoid a fail-open scenario.

Gating rule: A gating rule lets you configure a gating routing control
as an overall "on/off" switch for a group of routing controls. Or, you
can configure more complex gating scenarios, for example by configuring
multiple gating routing controls.

For more information, see Safety rules
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.


=head2 DeleteCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DeleteCluster>

Returns: a L<Paws::Route53RecoveryControlConfig::DeleteClusterResponse> instance

Delete a cluster.


=head2 DeleteControlPanel

=over

=item ControlPanelArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DeleteControlPanel>

Returns: a L<Paws::Route53RecoveryControlConfig::DeleteControlPanelResponse> instance

Deletes a control panel.


=head2 DeleteRoutingControl

=over

=item RoutingControlArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DeleteRoutingControl>

Returns: a L<Paws::Route53RecoveryControlConfig::DeleteRoutingControlResponse> instance

Deletes a routing control.


=head2 DeleteSafetyRule

=over

=item SafetyRuleArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DeleteSafetyRule>

Returns: a L<Paws::Route53RecoveryControlConfig::DeleteSafetyRuleResponse> instance

Deletes a safety rule.

/E<gt>


=head2 DescribeCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DescribeCluster>

Returns: a L<Paws::Route53RecoveryControlConfig::DescribeClusterResponse> instance

Display the details about a cluster. The response includes the cluster
name, endpoints, status, and Amazon Resource Name (ARN).


=head2 DescribeControlPanel

=over

=item ControlPanelArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DescribeControlPanel>

Returns: a L<Paws::Route53RecoveryControlConfig::DescribeControlPanelResponse> instance

Displays details about a control panel.


=head2 DescribeRoutingControl

=over

=item RoutingControlArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DescribeRoutingControl>

Returns: a L<Paws::Route53RecoveryControlConfig::DescribeRoutingControlResponse> instance

Displays details about a routing control. A routing control has one of
two states: ON and OFF. You can map the routing control state to the
state of an Amazon Route 53 health check, which can be used to control
routing.

To get or update the routing control state, see the Recovery Cluster
(data plane) API actions for Amazon Route 53 Application Recovery
Controller.


=head2 DescribeSafetyRule

=over

=item SafetyRuleArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::DescribeSafetyRule>

Returns: a L<Paws::Route53RecoveryControlConfig::DescribeSafetyRuleResponse> instance

Returns information about a safety rule.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::GetResourcePolicy>

Returns: a L<Paws::Route53RecoveryControlConfig::GetResourcePolicyResponse> instance

Get information about the resource policy for a cluster.


=head2 ListAssociatedRoute53HealthChecks

=over

=item RoutingControlArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecks>

Returns: a L<Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse> instance

Returns an array of all Amazon Route 53 health checks associated with a
specific routing control.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListClusters>

Returns: a L<Paws::Route53RecoveryControlConfig::ListClustersResponse> instance

Returns an array of all the clusters in an account.


=head2 ListControlPanels

=over

=item [ClusterArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListControlPanels>

Returns: a L<Paws::Route53RecoveryControlConfig::ListControlPanelsResponse> instance

Returns an array of control panels in an account or in a cluster.


=head2 ListRoutingControls

=over

=item ControlPanelArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListRoutingControls>

Returns: a L<Paws::Route53RecoveryControlConfig::ListRoutingControlsResponse> instance

Returns an array of routing controls for a control panel. A routing
control is an Amazon Route 53 Application Recovery Controller construct
that has one of two states: ON and OFF. You can map the routing control
state to the state of an Amazon Route 53 health check, which can be
used to control routing.


=head2 ListSafetyRules

=over

=item ControlPanelArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListSafetyRules>

Returns: a L<Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse> instance

List the safety rules (the assertion rules and gating rules) that
you've defined for the routing controls in a control panel.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::ListTagsForResource>

Returns: a L<Paws::Route53RecoveryControlConfig::ListTagsForResourceResponse> instance

Lists the tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::TagResource>

Returns: a L<Paws::Route53RecoveryControlConfig::TagResourceResponse> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::UntagResource>

Returns: a L<Paws::Route53RecoveryControlConfig::UntagResourceResponse> instance

Removes a tag from a resource.


=head2 UpdateCluster

=over

=item ClusterArn => Str

=item NetworkType => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::UpdateCluster>

Returns: a L<Paws::Route53RecoveryControlConfig::UpdateClusterResponse> instance

Updates an existing cluster. You can only update the network type of a
cluster.


=head2 UpdateControlPanel

=over

=item ControlPanelArn => Str

=item ControlPanelName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::UpdateControlPanel>

Returns: a L<Paws::Route53RecoveryControlConfig::UpdateControlPanelResponse> instance

Updates a control panel. The only update you can make to a control
panel is to change the name of the control panel.


=head2 UpdateRoutingControl

=over

=item RoutingControlArn => Str

=item RoutingControlName => Str


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::UpdateRoutingControl>

Returns: a L<Paws::Route53RecoveryControlConfig::UpdateRoutingControlResponse> instance

Updates a routing control. You can only update the name of the routing
control. To get or update the routing control state, see the Recovery
Cluster (data plane) API actions for Amazon Route 53 Application
Recovery Controller.


=head2 UpdateSafetyRule

=over

=item [AssertionRuleUpdate => L<Paws::Route53RecoveryControlConfig::AssertionRuleUpdate>]

=item [GatingRuleUpdate => L<Paws::Route53RecoveryControlConfig::GatingRuleUpdate>]


=back

Each argument is described in detail in: L<Paws::Route53RecoveryControlConfig::UpdateSafetyRule>

Returns: a L<Paws::Route53RecoveryControlConfig::UpdateSafetyRuleResponse> instance

Update a safety rule (an assertion rule or gating rule). You can only
update the name and the waiting period for a safety rule. To make other
updates, delete the safety rule and create a new one.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAssociatedRoute53HealthChecks(sub { },RoutingControlArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAssociatedRoute53HealthChecks(RoutingControlArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HealthCheckIds, passing the object as the first parameter, and the string 'HealthCheckIds' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryControlConfig::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllControlPanels(sub { },[ClusterArn => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllControlPanels([ClusterArn => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ControlPanels, passing the object as the first parameter, and the string 'ControlPanels' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryControlConfig::ListControlPanelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingControls(sub { },ControlPanelArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingControls(ControlPanelArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingControls, passing the object as the first parameter, and the string 'RoutingControls' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryControlConfig::ListRoutingControlsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSafetyRules(sub { },ControlPanelArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSafetyRules(ControlPanelArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SafetyRules, passing the object as the first parameter, and the string 'SafetyRules' as the second parameter 

If not, it will return a a L<Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


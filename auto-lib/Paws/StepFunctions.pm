package Paws::StepFunctions;
  use Moose;
  sub service { 'states' }
  sub signing_name { 'states' }
  sub version { '2016-11-23' }
  sub target_prefix { 'AWSStepFunctions' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::CreateActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::CreateStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStateMachineAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::CreateStateMachineAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStateMachineAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteStateMachineAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStateMachineVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DeleteStateMachineVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeActivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMapRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeMapRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStateMachineAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeStateMachineAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStateMachineForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::DescribeStateMachineForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetActivityTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::GetActivityTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExecutionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::GetExecutionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMapRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListMapRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStateMachineAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListStateMachineAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStateMachines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListStateMachines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStateMachineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListStateMachineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishStateMachineVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::PublishStateMachineVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedriveExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::RedriveExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskFailure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskFailure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendTaskSuccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::SendTaskSuccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::StartExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSyncExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::StartSyncExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::StopExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::TestState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMapRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UpdateMapRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStateMachine {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UpdateStateMachine', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStateMachineAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::UpdateStateMachineAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateStateMachineDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::StepFunctions::ValidateStateMachineDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllExecutionHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetExecutionHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetExecutionHistory(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->GetExecutionHistory(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllActivities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActivities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActivities(@_, nextToken => $next_result->nextToken);
        push @{ $result->activities }, @{ $next_result->activities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'activities') foreach (@{ $result->activities });
        $result = $self->ListActivities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'activities') foreach (@{ $result->activities });
    }

    return undef
  }
  sub ListAllExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->executions }, @{ $next_result->executions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'executions') foreach (@{ $result->executions });
        $result = $self->ListExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'executions') foreach (@{ $result->executions });
    }

    return undef
  }
  sub ListAllMapRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMapRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMapRuns(@_, nextToken => $next_result->nextToken);
        push @{ $result->mapRuns }, @{ $next_result->mapRuns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'mapRuns') foreach (@{ $result->mapRuns });
        $result = $self->ListMapRuns(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'mapRuns') foreach (@{ $result->mapRuns });
    }

    return undef
  }
  sub ListAllStateMachines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStateMachines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStateMachines(@_, nextToken => $next_result->nextToken);
        push @{ $result->stateMachines }, @{ $next_result->stateMachines };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'stateMachines') foreach (@{ $result->stateMachines });
        $result = $self->ListStateMachines(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'stateMachines') foreach (@{ $result->stateMachines });
    }

    return undef
  }


  sub operations { qw/CreateActivity CreateStateMachine CreateStateMachineAlias DeleteActivity DeleteStateMachine DeleteStateMachineAlias DeleteStateMachineVersion DescribeActivity DescribeExecution DescribeMapRun DescribeStateMachine DescribeStateMachineAlias DescribeStateMachineForExecution GetActivityTask GetExecutionHistory ListActivities ListExecutions ListMapRuns ListStateMachineAliases ListStateMachines ListStateMachineVersions ListTagsForResource PublishStateMachineVersion RedriveExecution SendTaskFailure SendTaskHeartbeat SendTaskSuccess StartExecution StartSyncExecution StopExecution TagResource TestState UntagResource UpdateMapRun UpdateStateMachine UpdateStateMachineAlias ValidateStateMachineDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions - Perl Interface to AWS AWS Step Functions

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('StepFunctions');
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

Step Functions

Step Functions coordinates the components of distributed applications
and microservices using visual workflows.

You can use Step Functions to build applications from individual
components, each of which performs a discrete function, or I<task>,
allowing you to scale and change applications quickly. Step Functions
provides a console that helps visualize the components of your
application as a series of steps. Step Functions automatically triggers
and tracks each step, and retries steps when there are errors, so your
application executes predictably and in the right order every time.
Step Functions logs the state of each step, so you can quickly diagnose
and debug any issues.

Step Functions manages operations and underlying infrastructure to
ensure your application is available at any scale. You can run tasks on
Amazon Web Services, your own servers, or any system that has access to
Amazon Web Services. You can access and use Step Functions using the
console, the Amazon Web Services SDKs, or an HTTP API. For more
information about Step Functions, see the I< Step Functions Developer
Guide
(https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html) >.

If you use the Step Functions API actions using Amazon Web Services SDK
integrations, make sure the API actions are in camel case and parameter
names are in Pascal case. For example, you could use Step Functions API
action C<startSyncExecution> and specify its parameter as
C<StateMachineArn>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateActivity

=over

=item Name => Str

=item [EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::StepFunctions::Tag>]]


=back

Each argument is described in detail in: L<Paws::StepFunctions::CreateActivity>

Returns: a L<Paws::StepFunctions::CreateActivityOutput> instance

Creates an activity. An activity is a task that you write in any
programming language and host on any machine that has access to Step
Functions. Activities must poll Step Functions using the
C<GetActivityTask> API action and respond using C<SendTask*> API
actions. This function lets Step Functions know the existence of your
activity and returns an identifier for use in a state machine and when
polling from the activity.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.

C<CreateActivity> is an idempotent API. Subsequent requests
wonE<rsquo>t create a duplicate resource if it was already created.
C<CreateActivity>'s idempotency check is based on the activity C<name>.
If a following request has different C<tags> values, Step Functions
will ignore these differences and treat it as an idempotent request of
the previous. In this case, C<tags> will not be updated, even if they
are different.


=head2 CreateStateMachine

=over

=item Definition => Str

=item Name => Str

=item RoleArn => Str

=item [EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>]

=item [LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>]

=item [Publish => Bool]

=item [Tags => ArrayRef[L<Paws::StepFunctions::Tag>]]

=item [TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>]

=item [Type => Str]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::CreateStateMachine>

Returns: a L<Paws::StepFunctions::CreateStateMachineOutput> instance

Creates a state machine. A state machine consists of a collection of
states that can do work (C<Task> states), determine to which states to
transition next (C<Choice> states), stop an execution with an error
(C<Fail> states), and so on. State machines are specified using a
JSON-based, structured language. For more information, see Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
in the Step Functions User Guide.

If you set the C<publish> parameter of this API action to C<true>, it
publishes version C<1> as the first revision of the state machine.

For additional control over security, you can encrypt your data using a
B<customer-managed key> for Step Functions state machines. You can
configure a symmetric KMS key and data key reuse period when creating
or updating a B<State Machine>. The execution history and state machine
definition will be encrypted with the key applied to the State Machine.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.

C<CreateStateMachine> is an idempotent API. Subsequent requests
wonE<rsquo>t create a duplicate resource if it was already created.
C<CreateStateMachine>'s idempotency check is based on the state machine
C<name>, C<definition>, C<type>, C<LoggingConfiguration>,
C<TracingConfiguration>, and C<EncryptionConfiguration> The check is
also based on the C<publish> and C<versionDescription> parameters. If a
following request has a different C<roleArn> or C<tags>, Step Functions
will ignore these differences and treat it as an idempotent request of
the previous. In this case, C<roleArn> and C<tags> will not be updated,
even if they are different.


=head2 CreateStateMachineAlias

=over

=item Name => Str

=item RoutingConfiguration => ArrayRef[L<Paws::StepFunctions::RoutingConfigurationListItem>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::CreateStateMachineAlias>

Returns: a L<Paws::StepFunctions::CreateStateMachineAliasOutput> instance

Creates an alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
for a state machine that points to one or two versions
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
of the same state machine. You can set your application to call
StartExecution with an alias and update the version the alias uses
without changing the client's code.

You can also map an alias to split StartExecution requests between two
versions of a state machine. To do this, add a second C<RoutingConfig>
object in the C<routingConfiguration> parameter. You must also specify
the percentage of execution run requests each version should receive in
both C<RoutingConfig> objects. Step Functions randomly chooses which
version runs a given execution based on the percentage you specify.

To create an alias that points to a single version, specify a single
C<RoutingConfig> object with a C<weight> set to 100.

You can create up to 100 aliases for each state machine. You must
delete unused aliases using the DeleteStateMachineAlias API action.

C<CreateStateMachineAlias> is an idempotent API. Step Functions bases
the idempotency check on the C<stateMachineArn>, C<description>,
C<name>, and C<routingConfiguration> parameters. Requests that contain
the same values for these parameters return a successful idempotent
response without creating a duplicate resource.

B<Related operations:>

=over

=item *

DescribeStateMachineAlias

=item *

ListStateMachineAliases

=item *

UpdateStateMachineAlias

=item *

DeleteStateMachineAlias

=back



=head2 DeleteActivity

=over

=item ActivityArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteActivity>

Returns: a L<Paws::StepFunctions::DeleteActivityOutput> instance

Deletes an activity.


=head2 DeleteStateMachine

=over

=item StateMachineArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteStateMachine>

Returns: a L<Paws::StepFunctions::DeleteStateMachineOutput> instance

Deletes a state machine. This is an asynchronous operation. It sets the
state machine's status to C<DELETING> and begins the deletion process.
A state machine is deleted only when all its executions are completed.
On the next state transition, the state machine's executions are
terminated.

A qualified state machine ARN can either refer to a I<Distributed Map
state> defined within a state machine, a version ARN, or an alias ARN.

The following are some examples of qualified and unqualified state
machine ARNs:

=over

=item *

The following qualified state machine ARN refers to a I<Distributed Map
state> with a label C<mapStateLabel> in a state machine named
C<myStateMachine>.

C<arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel>

If you provide a qualified state machine ARN that refers to a
I<Distributed Map state>, the request fails with
C<ValidationException>.

=item *

The following unqualified state machine ARN refers to a state machine
named C<myStateMachine>.

C<arn:partition:states:region:account-id:stateMachine:myStateMachine>

=back

This API action also deletes all versions
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
and aliases
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
associated with a state machine.

For C<EXPRESS> state machines, the deletion happens eventually (usually
in less than a minute). Running executions may emit logs after
C<DeleteStateMachine> API is called.


=head2 DeleteStateMachineAlias

=over

=item StateMachineAliasArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteStateMachineAlias>

Returns: a L<Paws::StepFunctions::DeleteStateMachineAliasOutput> instance

Deletes a state machine alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

After you delete a state machine alias, you can't use it to start
executions. When you delete a state machine alias, Step Functions
doesn't delete the state machine versions that alias references.

B<Related operations:>

=over

=item *

CreateStateMachineAlias

=item *

DescribeStateMachineAlias

=item *

ListStateMachineAliases

=item *

UpdateStateMachineAlias

=back



=head2 DeleteStateMachineVersion

=over

=item StateMachineVersionArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DeleteStateMachineVersion>

Returns: a L<Paws::StepFunctions::DeleteStateMachineVersionOutput> instance

Deletes a state machine version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).
After you delete a version, you can't call StartExecution using that
version's ARN or use the version with a state machine alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

Deleting a state machine version won't terminate its in-progress
executions.

You can't delete a state machine version currently referenced by one or
more aliases. Before you delete a version, you must either delete the
aliases or update them to point to another state machine version.

B<Related operations:>

=over

=item *

PublishStateMachineVersion

=item *

ListStateMachineVersions

=back



=head2 DescribeActivity

=over

=item ActivityArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeActivity>

Returns: a L<Paws::StepFunctions::DescribeActivityOutput> instance

Describes an activity.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 DescribeExecution

=over

=item ExecutionArn => Str

=item [IncludedData => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeExecution>

Returns: a L<Paws::StepFunctions::DescribeExecutionOutput> instance

Provides information about a state machine execution, such as the state
machine associated with the execution, the execution input and output,
and relevant execution metadata. If you've redriven
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html)
an execution, you can use this API action to return information about
the redrives of that execution. In addition, you can use this API
action to return the Map Run Amazon Resource Name (ARN) if the
execution was dispatched by a Map Run.

If you specify a version or alias ARN when you call the StartExecution
API action, C<DescribeExecution> returns that ARN.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.

Executions of an C<EXPRESS> state machine aren't supported by
C<DescribeExecution> unless a Map Run dispatched them.


=head2 DescribeMapRun

=over

=item MapRunArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeMapRun>

Returns: a L<Paws::StepFunctions::DescribeMapRunOutput> instance

Provides information about a Map Run's configuration, progress, and
results. If you've redriven
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html)
a Map Run, this API action also returns information about the redrives
of that Map Run. For more information, see Examining Map Run
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-examine-map-run.html)
in the I<Step Functions Developer Guide>.


=head2 DescribeStateMachine

=over

=item StateMachineArn => Str

=item [IncludedData => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeStateMachine>

Returns: a L<Paws::StepFunctions::DescribeStateMachineOutput> instance

Provides information about a state machine's definition, its IAM role
Amazon Resource Name (ARN), and configuration.

A qualified state machine ARN can either refer to a I<Distributed Map
state> defined within a state machine, a version ARN, or an alias ARN.

The following are some examples of qualified and unqualified state
machine ARNs:

=over

=item *

The following qualified state machine ARN refers to a I<Distributed Map
state> with a label C<mapStateLabel> in a state machine named
C<myStateMachine>.

C<arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel>

If you provide a qualified state machine ARN that refers to a
I<Distributed Map state>, the request fails with
C<ValidationException>.

=item *

The following qualified state machine ARN refers to an alias named
C<PROD>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachine:PRODE<gt>>

If you provide a qualified state machine ARN that refers to a version
ARN or an alias ARN, the request starts execution for that version or
alias.

=item *

The following unqualified state machine ARN refers to a state machine
named C<myStateMachine>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachineE<gt>>

=back

This API action returns the details for a state machine version if the
C<stateMachineArn> you specify is a state machine version ARN.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 DescribeStateMachineAlias

=over

=item StateMachineAliasArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeStateMachineAlias>

Returns: a L<Paws::StepFunctions::DescribeStateMachineAliasOutput> instance

Returns details about a state machine alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html).

B<Related operations:>

=over

=item *

CreateStateMachineAlias

=item *

ListStateMachineAliases

=item *

UpdateStateMachineAlias

=item *

DeleteStateMachineAlias

=back



=head2 DescribeStateMachineForExecution

=over

=item ExecutionArn => Str

=item [IncludedData => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::DescribeStateMachineForExecution>

Returns: a L<Paws::StepFunctions::DescribeStateMachineForExecutionOutput> instance

Provides information about a state machine's definition, its execution
role ARN, and configuration. If a Map Run dispatched the execution,
this action returns the Map Run Amazon Resource Name (ARN) in the
response. The state machine returned is the state machine associated
with the Map Run.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.

This API action is not supported by C<EXPRESS> state machines.


=head2 GetActivityTask

=over

=item ActivityArn => Str

=item [WorkerName => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::GetActivityTask>

Returns: a L<Paws::StepFunctions::GetActivityTaskOutput> instance

Used by workers to retrieve a task (with the specified activity ARN)
which has been scheduled for execution by a running state machine. This
initiates a long poll, where the service holds the HTTP connection open
and responds as soon as a task becomes available (i.e. an execution of
a task of this type is needed.) The maximum time the service holds on
to the request before responding is 60 seconds. If no task is available
within 60 seconds, the poll returns a C<taskToken> with a null string.

This API action isn't logged in CloudTrail.

Workers should set their client side socket timeout to at least 65
seconds (5 seconds higher than the maximum time the service may hold
the poll request).

Polling with C<GetActivityTask> can cause latency in some
implementations. See Avoid Latency When Polling for Activity Tasks
(https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html)
in the Step Functions Developer Guide.


=head2 GetExecutionHistory

=over

=item ExecutionArn => Str

=item [IncludeExecutionData => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReverseOrder => Bool]


=back

Each argument is described in detail in: L<Paws::StepFunctions::GetExecutionHistory>

Returns: a L<Paws::StepFunctions::GetExecutionHistoryOutput> instance

Returns the history of the specified execution as a list of events. By
default, the results are returned in ascending order of the
C<timeStamp> of the events. Use the C<reverseOrder> parameter to get
the latest events first.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This API action is not supported by C<EXPRESS> state machines.


=head2 ListActivities

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListActivities>

Returns: a L<Paws::StepFunctions::ListActivitiesOutput> instance

Lists the existing activities.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 ListExecutions

=over

=item [MapRunArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RedriveFilter => Str]

=item [StateMachineArn => Str]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListExecutions>

Returns: a L<Paws::StepFunctions::ListExecutionsOutput> instance

Lists all executions of a state machine or a Map Run. You can list all
executions related to a state machine by specifying a state machine
Amazon Resource Name (ARN), or those related to a Map Run by specifying
a Map Run ARN. Using this API action, you can also list all redriven
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html)
executions.

You can also provide a state machine alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
ARN or version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
ARN to list the executions associated with a specific alias or version.

Results are sorted by time, with the most recent execution first.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.

This API action is not supported by C<EXPRESS> state machines.


=head2 ListMapRuns

=over

=item ExecutionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListMapRuns>

Returns: a L<Paws::StepFunctions::ListMapRunsOutput> instance

Lists all Map Runs that were started by a given state machine
execution. Use this API action to obtain Map Run ARNs, and then call
C<DescribeMapRun> to obtain more information, if needed.


=head2 ListStateMachineAliases

=over

=item StateMachineArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListStateMachineAliases>

Returns: a L<Paws::StepFunctions::ListStateMachineAliasesOutput> instance

Lists aliases
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
for a specified state machine ARN. Results are sorted by time, with the
most recently created aliases listed first.

To list aliases that reference a state machine version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html),
you can specify the version ARN in the C<stateMachineArn> parameter.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

B<Related operations:>

=over

=item *

CreateStateMachineAlias

=item *

DescribeStateMachineAlias

=item *

UpdateStateMachineAlias

=item *

DeleteStateMachineAlias

=back



=head2 ListStateMachines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListStateMachines>

Returns: a L<Paws::StepFunctions::ListStateMachinesOutput> instance

Lists the existing state machines.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

This operation is eventually consistent. The results are best effort
and may not reflect very recent updates and changes.


=head2 ListStateMachineVersions

=over

=item StateMachineArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListStateMachineVersions>

Returns: a L<Paws::StepFunctions::ListStateMachineVersionsOutput> instance

Lists versions
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
for the specified state machine Amazon Resource Name (ARN).

The results are sorted in descending order of the version creation
time.

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.

B<Related operations:>

=over

=item *

PublishStateMachineVersion

=item *

DeleteStateMachineVersion

=back



=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::ListTagsForResource>

Returns: a L<Paws::StepFunctions::ListTagsForResourceOutput> instance

List tags for a given resource.

Tags may only contain Unicode letters, digits, white space, or these
symbols: C<_ . : / = + - @>.


=head2 PublishStateMachineVersion

=over

=item StateMachineArn => Str

=item [Description => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::PublishStateMachineVersion>

Returns: a L<Paws::StepFunctions::PublishStateMachineVersionOutput> instance

Creates a version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html)
from the current revision of a state machine. Use versions to create
immutable snapshots of your state machine. You can start executions
from versions either directly or with an alias. To create an alias, use
CreateStateMachineAlias.

You can publish up to 1000 versions for each state machine. You must
manually delete unused versions using the DeleteStateMachineVersion API
action.

C<PublishStateMachineVersion> is an idempotent API. It doesn't create a
duplicate state machine version if it already exists for the current
revision. Step Functions bases C<PublishStateMachineVersion>'s
idempotency check on the C<stateMachineArn>, C<name>, and C<revisionId>
parameters. Requests with the same parameters return a successful
idempotent response. If you don't specify a C<revisionId>, Step
Functions checks for a previously published version of the state
machine's current revision.

B<Related operations:>

=over

=item *

DeleteStateMachineVersion

=item *

ListStateMachineVersions

=back



=head2 RedriveExecution

=over

=item ExecutionArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::RedriveExecution>

Returns: a L<Paws::StepFunctions::RedriveExecutionOutput> instance

Restarts unsuccessful executions of Standard workflows that didn't
complete successfully in the last 14 days. These include failed,
aborted, or timed out executions. When you redrive
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-executions.html)
an execution, it continues the failed execution from the unsuccessful
step and uses the same input. Step Functions preserves the results and
execution history of the successful steps, and doesn't rerun these
steps when you redrive an execution. Redriven executions use the same
state machine definition and execution ARN as the original execution
attempt.

For workflows that include an Inline Map
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html)
or Parallel
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html)
state, C<RedriveExecution> API action reschedules and redrives only the
iterations and branches that failed or aborted.

To redrive a workflow that includes a Distributed Map state whose Map
Run failed, you must redrive the parent workflow
(https://docs.aws.amazon.com/step-functions/latest/dg/use-dist-map-orchestrate-large-scale-parallel-workloads.html#dist-map-orchestrate-parallel-workloads-key-terms).
The parent workflow redrives all the unsuccessful states, including a
failed Map Run. If a Map Run was not started in the original execution
attempt, the redriven parent workflow starts the Map Run.

This API action is not supported by C<EXPRESS> state machines.

However, you can restart the unsuccessful executions of Express child
workflows in a Distributed Map by redriving its Map Run. When you
redrive a Map Run, the Express child workflows are rerun using the
StartExecution API action. For more information, see Redriving Map Runs
(https://docs.aws.amazon.com/step-functions/latest/dg/redrive-map-run.html).

You can redrive executions if your original execution meets the
following conditions:

=over

=item *

The execution status isn't C<SUCCEEDED>.

=item *

Your workflow execution has not exceeded the redrivable period of 14
days. Redrivable period refers to the time during which you can redrive
a given execution. This period starts from the day a state machine
completes its execution.

=item *

The workflow execution has not exceeded the maximum open time of one
year. For more information about state machine quotas, see Quotas
related to state machine executions
(https://docs.aws.amazon.com/step-functions/latest/dg/limits-overview.html#service-limits-state-machine-executions).

=item *

The execution event history count is less than 24,999. Redriven
executions append their event history to the existing event history.
Make sure your workflow execution contains less than 24,999 events to
accommodate the C<ExecutionRedriven> history event and at least one
other history event.

=back



=head2 SendTaskFailure

=over

=item TaskToken => Str

=item [Cause => Str]

=item [Error => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskFailure>

Returns: a L<Paws::StepFunctions::SendTaskFailureOutput> instance

Used by activity workers, Task states using the callback
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
pattern, and optionally Task states using the job run
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
pattern to report that the task identified by the C<taskToken> failed.

For an execution with encryption enabled, Step Functions will encrypt
the error and cause fields using the KMS key for the execution role.

A caller can mark a task as fail without using any KMS permissions in
the execution role if the caller provides a null value for both
C<error> and C<cause> fields because no data needs to be encrypted.


=head2 SendTaskHeartbeat

=over

=item TaskToken => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskHeartbeat>

Returns: a L<Paws::StepFunctions::SendTaskHeartbeatOutput> instance

Used by activity workers and Task states using the callback
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
pattern, and optionally Task states using the job run
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
pattern to report to Step Functions that the task represented by the
specified C<taskToken> is still making progress. This action resets the
C<Heartbeat> clock. The C<Heartbeat> threshold is specified in the
state machine's Amazon States Language definition
(C<HeartbeatSeconds>). This action does not in itself create an event
in the execution history. However, if the task times out, the execution
history contains an C<ActivityTimedOut> entry for activities, or a
C<TaskTimedOut> entry for tasks using the job run
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
or callback
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
pattern.

The C<Timeout> of a task, defined in the state machine's Amazon States
Language definition, is its maximum allowed duration, regardless of the
number of SendTaskHeartbeat requests received. Use C<HeartbeatSeconds>
to configure the timeout interval for heartbeats.


=head2 SendTaskSuccess

=over

=item Output => Str

=item TaskToken => Str


=back

Each argument is described in detail in: L<Paws::StepFunctions::SendTaskSuccess>

Returns: a L<Paws::StepFunctions::SendTaskSuccessOutput> instance

Used by activity workers, Task states using the callback
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token)
pattern, and optionally Task states using the job run
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)
pattern to report that the task identified by the C<taskToken>
completed successfully.


=head2 StartExecution

=over

=item StateMachineArn => Str

=item [Input => Str]

=item [Name => Str]

=item [TraceHeader => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::StartExecution>

Returns: a L<Paws::StepFunctions::StartExecutionOutput> instance

Starts a state machine execution.

A qualified state machine ARN can either refer to a I<Distributed Map
state> defined within a state machine, a version ARN, or an alias ARN.

The following are some examples of qualified and unqualified state
machine ARNs:

=over

=item *

The following qualified state machine ARN refers to a I<Distributed Map
state> with a label C<mapStateLabel> in a state machine named
C<myStateMachine>.

C<arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel>

If you provide a qualified state machine ARN that refers to a
I<Distributed Map state>, the request fails with
C<ValidationException>.

=item *

The following qualified state machine ARN refers to an alias named
C<PROD>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachine:PRODE<gt>>

If you provide a qualified state machine ARN that refers to a version
ARN or an alias ARN, the request starts execution for that version or
alias.

=item *

The following unqualified state machine ARN refers to a state machine
named C<myStateMachine>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachineE<gt>>

=back

If you start an execution with an unqualified state machine ARN, Step
Functions uses the latest revision of the state machine for the
execution.

To start executions of a state machine version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html),
call C<StartExecution> and provide the version ARN or the ARN of an
alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
that points to the version.

C<StartExecution> is idempotent for C<STANDARD> workflows. For a
C<STANDARD> workflow, if you call C<StartExecution> with the same name
and input as a running execution, the call succeeds and return the same
response as the original request. If the execution is closed or if the
input is different, it returns a C<400 ExecutionAlreadyExists> error.
You can reuse names after 90 days.

C<StartExecution> isn't idempotent for C<EXPRESS> workflows.


=head2 StartSyncExecution

=over

=item StateMachineArn => Str

=item [IncludedData => Str]

=item [Input => Str]

=item [Name => Str]

=item [TraceHeader => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::StartSyncExecution>

Returns: a L<Paws::StepFunctions::StartSyncExecutionOutput> instance

Starts a Synchronous Express state machine execution.
C<StartSyncExecution> is not available for C<STANDARD> workflows.

C<StartSyncExecution> will return a C<200 OK> response, even if your
execution fails, because the status code in the API response doesn't
reflect function errors. Error codes are reserved for errors that
prevent your execution from running, such as permissions errors, limit
errors, or issues with your state machine code and configuration.

This API action isn't logged in CloudTrail.


=head2 StopExecution

=over

=item ExecutionArn => Str

=item [Cause => Str]

=item [Error => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::StopExecution>

Returns: a L<Paws::StepFunctions::StopExecutionOutput> instance

Stops an execution.

This API action is not supported by C<EXPRESS> state machines.

For an execution with encryption enabled, Step Functions will encrypt
the error and cause fields using the KMS key for the execution role.

A caller can stop an execution without using any KMS permissions in the
execution role if the caller provides a null value for both C<error>
and C<cause> fields because no data needs to be encrypted.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::StepFunctions::Tag>]


=back

Each argument is described in detail in: L<Paws::StepFunctions::TagResource>

Returns: a L<Paws::StepFunctions::TagResourceOutput> instance

Add a tag to a Step Functions resource.

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<Amazon Web Services Billing and Cost Management User Guide>,
and Controlling Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

Tags may only contain Unicode letters, digits, white space, or these
symbols: C<_ . : / = + - @>.


=head2 TestState

=over

=item Definition => Str

=item [Input => Str]

=item [InspectionLevel => Str]

=item [RevealSecrets => Bool]

=item [RoleArn => Str]

=item [Variables => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::TestState>

Returns: a L<Paws::StepFunctions::TestStateOutput> instance

Accepts the definition of a single state and executes it. You can test
a state without creating a state machine or updating an existing state
machine. Using this API, you can test the following:

=over

=item *

A state's input and output processing
(https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-input-output-dataflow)
data flow

=item *

An Amazon Web Services service integration
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-services.html)
request and response

=item *

An HTTP Task
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-third-party-apis.html)
request and response

=back

You can call this API on only one state at a time. The states that you
can test include the following:

=over

=item *

All Task types
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-task-state.html#task-types)
except Activity
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html)

=item *

Pass
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-pass-state.html)

=item *

Wait
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-wait-state.html)

=item *

Choice
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-choice-state.html)

=item *

Succeed
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-succeed-state.html)

=item *

Fail
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-fail-state.html)

=back

The C<TestState> API assumes an IAM role which must contain the
required IAM permissions for the resources your state is accessing. For
information about the permissions a state might need, see IAM
permissions to test a state
(https://docs.aws.amazon.com/step-functions/latest/dg/test-state-isolation.html#test-state-permissions).

The C<TestState> API can run for up to five minutes. If the execution
of a state exceeds this duration, it fails with the C<States.Timeout>
error.

C<TestState> doesn't support Activity tasks
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-activities.html),
C<.sync> or C<.waitForTaskToken> service integration patterns
(https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html),
Parallel
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-parallel-state.html),
or Map
(https://docs.aws.amazon.com/step-functions/latest/dg/amazon-states-language-map-state.html)
states.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UntagResource>

Returns: a L<Paws::StepFunctions::UntagResourceOutput> instance

Remove a tag from a Step Functions resource


=head2 UpdateMapRun

=over

=item MapRunArn => Str

=item [MaxConcurrency => Int]

=item [ToleratedFailureCount => Int]

=item [ToleratedFailurePercentage => Num]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UpdateMapRun>

Returns: a L<Paws::StepFunctions::UpdateMapRunOutput> instance

Updates an in-progress Map Run's configuration to include changes to
the settings that control maximum concurrency and Map Run failure.


=head2 UpdateStateMachine

=over

=item StateMachineArn => Str

=item [Definition => Str]

=item [EncryptionConfiguration => L<Paws::StepFunctions::EncryptionConfiguration>]

=item [LoggingConfiguration => L<Paws::StepFunctions::LoggingConfiguration>]

=item [Publish => Bool]

=item [RoleArn => Str]

=item [TracingConfiguration => L<Paws::StepFunctions::TracingConfiguration>]

=item [VersionDescription => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UpdateStateMachine>

Returns: a L<Paws::StepFunctions::UpdateStateMachineOutput> instance

Updates an existing state machine by modifying its C<definition>,
C<roleArn>, C<loggingConfiguration>, or C<EncryptionConfiguration>.
Running executions will continue to use the previous C<definition> and
C<roleArn>. You must include at least one of C<definition> or
C<roleArn> or you will receive a C<MissingRequiredParameter> error.

A qualified state machine ARN refers to a I<Distributed Map state>
defined within a state machine. For example, the qualified state
machine ARN
C<arn:partition:states:region:account-id:stateMachine:stateMachineName/mapStateLabel>
refers to a I<Distributed Map state> with a label C<mapStateLabel> in
the state machine named C<stateMachineName>.

A qualified state machine ARN can either refer to a I<Distributed Map
state> defined within a state machine, a version ARN, or an alias ARN.

The following are some examples of qualified and unqualified state
machine ARNs:

=over

=item *

The following qualified state machine ARN refers to a I<Distributed Map
state> with a label C<mapStateLabel> in a state machine named
C<myStateMachine>.

C<arn:partition:states:region:account-id:stateMachine:myStateMachine/mapStateLabel>

If you provide a qualified state machine ARN that refers to a
I<Distributed Map state>, the request fails with
C<ValidationException>.

=item *

The following qualified state machine ARN refers to an alias named
C<PROD>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachine:PRODE<gt>>

If you provide a qualified state machine ARN that refers to a version
ARN or an alias ARN, the request starts execution for that version or
alias.

=item *

The following unqualified state machine ARN refers to a state machine
named C<myStateMachine>.

C<arn:E<lt>partitionE<gt>:states:E<lt>regionE<gt>:E<lt>account-idE<gt>:stateMachine:E<lt>myStateMachineE<gt>>

=back

After you update your state machine, you can set the C<publish>
parameter to C<true> in the same action to publish a new version
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-version.html).
This way, you can opt-in to strict versioning of your state machine.

Step Functions assigns monotonically increasing integers for state
machine versions, starting at version number 1.

All C<StartExecution> calls within a few seconds use the updated
C<definition> and C<roleArn>. Executions started immediately after you
call C<UpdateStateMachine> may use the previous state machine
C<definition> and C<roleArn>.


=head2 UpdateStateMachineAlias

=over

=item StateMachineAliasArn => Str

=item [Description => Str]

=item [RoutingConfiguration => ArrayRef[L<Paws::StepFunctions::RoutingConfigurationListItem>]]


=back

Each argument is described in detail in: L<Paws::StepFunctions::UpdateStateMachineAlias>

Returns: a L<Paws::StepFunctions::UpdateStateMachineAliasOutput> instance

Updates the configuration of an existing state machine alias
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-state-machine-alias.html)
by modifying its C<description> or C<routingConfiguration>.

You must specify at least one of the C<description> or
C<routingConfiguration> parameters to update a state machine alias.

C<UpdateStateMachineAlias> is an idempotent API. Step Functions bases
the idempotency check on the C<stateMachineAliasArn>, C<description>,
and C<routingConfiguration> parameters. Requests with the same
parameters return an idempotent response.

This operation is eventually consistent. All StartExecution requests
made within a few seconds use the latest alias configuration.
Executions started immediately after calling C<UpdateStateMachineAlias>
may use the previous routing configuration.

B<Related operations:>

=over

=item *

CreateStateMachineAlias

=item *

DescribeStateMachineAlias

=item *

ListStateMachineAliases

=item *

DeleteStateMachineAlias

=back



=head2 ValidateStateMachineDefinition

=over

=item Definition => Str

=item [MaxResults => Int]

=item [Severity => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::StepFunctions::ValidateStateMachineDefinition>

Returns: a L<Paws::StepFunctions::ValidateStateMachineDefinitionOutput> instance

Validates the syntax of a state machine definition specified in Amazon
States Language
(https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html)
(ASL), a JSON-based, structured language.

You can validate that a state machine definition is correct without
creating a state machine resource.

Suggested uses for C<ValidateStateMachineDefinition>:

=over

=item *

Integrate automated checks into your code review or Continuous
Integration (CI) process to check state machine definitions before
starting deployments.

=item *

Run validation from a Git pre-commit hook to verify the definition
before committing to your source repository.

=back

Validation will look for problems in your state machine definition and
return a B<result> and a list of B<diagnostic elements>.

The B<result> value will be C<OK> when your workflow definition can be
successfully created or updated. Note the result can be C<OK> even when
diagnostic warnings are present in the response. The B<result> value
will be C<FAIL> when the workflow definition contains errors that would
prevent you from creating or updating your state machine.

The list of ValidateStateMachineDefinitionDiagnostic
(https://docs.aws.amazon.com/step-functions/latest/apireference/API_ValidateStateMachineDefinitionDiagnostic.html)
data elements can contain zero or more B<WARNING> and/or B<ERROR>
elements.

The B<ValidateStateMachineDefinition API> might add new diagnostics in
the future, adjust diagnostic codes, or change the message wording.
Your automated processes should only rely on the value of the B<result>
field value (OK, FAIL). Do B<not> rely on the exact order, count, or
wording of diagnostic messages.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllExecutionHistory(sub { },ExecutionArn => Str, [IncludeExecutionData => Bool, MaxResults => Int, NextToken => Str, ReverseOrder => Bool])

=head2 GetAllExecutionHistory(ExecutionArn => Str, [IncludeExecutionData => Bool, MaxResults => Int, NextToken => Str, ReverseOrder => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::GetExecutionHistoryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActivities(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllActivities([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - activities, passing the object as the first parameter, and the string 'activities' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListActivitiesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExecutions(sub { },[MapRunArn => Str, MaxResults => Int, NextToken => Str, RedriveFilter => Str, StateMachineArn => Str, StatusFilter => Str])

=head2 ListAllExecutions([MapRunArn => Str, MaxResults => Int, NextToken => Str, RedriveFilter => Str, StateMachineArn => Str, StatusFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executions, passing the object as the first parameter, and the string 'executions' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMapRuns(sub { },ExecutionArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMapRuns(ExecutionArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - mapRuns, passing the object as the first parameter, and the string 'mapRuns' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListMapRunsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStateMachines(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStateMachines([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - stateMachines, passing the object as the first parameter, and the string 'stateMachines' as the second parameter 

If not, it will return a a L<Paws::StepFunctions::ListStateMachinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


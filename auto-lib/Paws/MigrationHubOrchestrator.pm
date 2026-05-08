package Paws::MigrationHubOrchestrator;
  use Moose;
  sub service { 'migrationhub-orchestrator' }
  sub signing_name { 'migrationhub-orchestrator' }
  sub version { '2021-08-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::CreateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflowStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::CreateWorkflowStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflowStepGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::CreateWorkflowStepGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::DeleteTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflowStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::DeleteWorkflowStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflowStepGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetTemplateStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateStepGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetTemplateStepGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetWorkflowStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowStepGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::GetWorkflowStepGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlugins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListPlugins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateStepGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListTemplateStepGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplateSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListTemplateSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowStepGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListWorkflowStepGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflowSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::ListWorkflowSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryWorkflowStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::RetryWorkflowStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::StartWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::StopWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::UpdateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::UpdateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflowStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::UpdateWorkflowStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflowStepGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubOrchestrator::UpdateWorkflowStepGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPlugins {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlugins(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPlugins(@_, nextToken => $next_result->nextToken);
        push @{ $result->plugins }, @{ $next_result->plugins };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'plugins') foreach (@{ $result->plugins });
        $result = $self->ListPlugins(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'plugins') foreach (@{ $result->plugins });
    }

    return undef
  }
  sub ListAllTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateSummary }, @{ $next_result->templateSummary };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateSummary') foreach (@{ $result->templateSummary });
        $result = $self->ListTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateSummary') foreach (@{ $result->templateSummary });
    }

    return undef
  }
  sub ListAllTemplateStepGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateStepGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTemplateStepGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateStepGroupSummary }, @{ $next_result->templateStepGroupSummary };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateStepGroupSummary') foreach (@{ $result->templateStepGroupSummary });
        $result = $self->ListTemplateStepGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateStepGroupSummary') foreach (@{ $result->templateStepGroupSummary });
    }

    return undef
  }
  sub ListAllTemplateSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTemplateSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTemplateSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateStepSummaryList }, @{ $next_result->templateStepSummaryList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateStepSummaryList') foreach (@{ $result->templateStepSummaryList });
        $result = $self->ListTemplateSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateStepSummaryList') foreach (@{ $result->templateStepSummaryList });
    }

    return undef
  }
  sub ListAllWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflows(@_, nextToken => $next_result->nextToken);
        push @{ $result->migrationWorkflowSummary }, @{ $next_result->migrationWorkflowSummary };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'migrationWorkflowSummary') foreach (@{ $result->migrationWorkflowSummary });
        $result = $self->ListWorkflows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'migrationWorkflowSummary') foreach (@{ $result->migrationWorkflowSummary });
    }

    return undef
  }
  sub ListAllWorkflowStepGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowStepGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflowStepGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowStepGroupsSummary }, @{ $next_result->workflowStepGroupsSummary };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowStepGroupsSummary') foreach (@{ $result->workflowStepGroupsSummary });
        $result = $self->ListWorkflowStepGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowStepGroupsSummary') foreach (@{ $result->workflowStepGroupsSummary });
    }

    return undef
  }
  sub ListAllWorkflowSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkflowSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkflowSteps(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowStepsSummary }, @{ $next_result->workflowStepsSummary };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowStepsSummary') foreach (@{ $result->workflowStepsSummary });
        $result = $self->ListWorkflowSteps(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowStepsSummary') foreach (@{ $result->workflowStepsSummary });
    }

    return undef
  }


  sub operations { qw/CreateTemplate CreateWorkflow CreateWorkflowStep CreateWorkflowStepGroup DeleteTemplate DeleteWorkflow DeleteWorkflowStep DeleteWorkflowStepGroup GetTemplate GetTemplateStep GetTemplateStepGroup GetWorkflow GetWorkflowStep GetWorkflowStepGroup ListPlugins ListTagsForResource ListTemplates ListTemplateStepGroups ListTemplateSteps ListWorkflows ListWorkflowStepGroups ListWorkflowSteps RetryWorkflowStep StartWorkflow StopWorkflow TagResource UntagResource UpdateTemplate UpdateWorkflow UpdateWorkflowStep UpdateWorkflowStepGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator - Perl Interface to AWS AWS Migration Hub Orchestrator

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MigrationHubOrchestrator');
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

This API reference provides descriptions, syntax, and other details
about each of the actions and data types for AWS Migration Hub
Orchestrator. The topic for each action shows the API request
parameters and responses. Alternatively, you can use one of the AWS
SDKs to access an API that is tailored to the programming language or
platform that you're using.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateTemplate

=over

=item TemplateName => Str

=item TemplateSource => L<Paws::MigrationHubOrchestrator::TemplateSource>

=item [ClientToken => Str]

=item [Tags => L<Paws::MigrationHubOrchestrator::TagMap>]

=item [TemplateDescription => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::CreateTemplate>

Returns: a L<Paws::MigrationHubOrchestrator::CreateTemplateResponse> instance

Creates a migration workflow template.


=head2 CreateWorkflow

=over

=item InputParameters => L<Paws::MigrationHubOrchestrator::StepInputParameters>

=item Name => Str

=item TemplateId => Str

=item [ApplicationConfigurationId => Str]

=item [Description => Str]

=item [StepTargets => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::MigrationHubOrchestrator::StringMap>]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::CreateWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::CreateMigrationWorkflowResponse> instance

Create a workflow to orchestrate your migrations.


=head2 CreateWorkflowStep

=over

=item Name => Str

=item StepActionType => Str

=item StepGroupId => Str

=item WorkflowId => Str

=item [Description => Str]

=item [Next => ArrayRef[Str|Undef]]

=item [Outputs => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepOutput>]]

=item [Previous => ArrayRef[Str|Undef]]

=item [StepTarget => ArrayRef[Str|Undef]]

=item [WorkflowStepAutomationConfiguration => L<Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration>]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::CreateWorkflowStep>

Returns: a L<Paws::MigrationHubOrchestrator::CreateWorkflowStepResponse> instance

Create a step in the migration workflow.


=head2 CreateWorkflowStepGroup

=over

=item Name => Str

=item WorkflowId => Str

=item [Description => Str]

=item [Next => ArrayRef[Str|Undef]]

=item [Previous => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::CreateWorkflowStepGroup>

Returns: a L<Paws::MigrationHubOrchestrator::CreateWorkflowStepGroupResponse> instance

Create a step group in a migration workflow.


=head2 DeleteTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::DeleteTemplate>

Returns: a L<Paws::MigrationHubOrchestrator::DeleteTemplateResponse> instance

Deletes a migration workflow template.


=head2 DeleteWorkflow

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::DeleteWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::DeleteMigrationWorkflowResponse> instance

Delete a migration workflow. You must pause a running workflow in
Migration Hub Orchestrator console to delete it.


=head2 DeleteWorkflowStep

=over

=item Id => Str

=item StepGroupId => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::DeleteWorkflowStep>

Returns: a L<Paws::MigrationHubOrchestrator::DeleteWorkflowStepResponse> instance

Delete a step in a migration workflow. Pause the workflow to delete a
running step.


=head2 DeleteWorkflowStepGroup

=over

=item Id => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroup>

Returns: a L<Paws::MigrationHubOrchestrator::DeleteWorkflowStepGroupResponse> instance

Delete a step group in a migration workflow.


=head2 GetTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetTemplate>

Returns: a L<Paws::MigrationHubOrchestrator::GetMigrationWorkflowTemplateResponse> instance

Get the template you want to use for creating a migration workflow.


=head2 GetTemplateStep

=over

=item Id => Str

=item StepGroupId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetTemplateStep>

Returns: a L<Paws::MigrationHubOrchestrator::GetTemplateStepResponse> instance

Get a specific step in a template.


=head2 GetTemplateStepGroup

=over

=item Id => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetTemplateStepGroup>

Returns: a L<Paws::MigrationHubOrchestrator::GetTemplateStepGroupResponse> instance

Get a step group in a template.


=head2 GetWorkflow

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::GetMigrationWorkflowResponse> instance

Get migration workflow.


=head2 GetWorkflowStep

=over

=item Id => Str

=item StepGroupId => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetWorkflowStep>

Returns: a L<Paws::MigrationHubOrchestrator::GetWorkflowStepResponse> instance

Get a step in the migration workflow.


=head2 GetWorkflowStepGroup

=over

=item Id => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::GetWorkflowStepGroup>

Returns: a L<Paws::MigrationHubOrchestrator::GetWorkflowStepGroupResponse> instance

Get the step group of a migration workflow.


=head2 ListPlugins

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListPlugins>

Returns: a L<Paws::MigrationHubOrchestrator::ListPluginsResponse> instance

List AWS Migration Hub Orchestrator plugins.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListTagsForResource>

Returns: a L<Paws::MigrationHubOrchestrator::ListTagsForResourceResponse> instance

List the tags added to a resource.


=head2 ListTemplates

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListTemplates>

Returns: a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse> instance

List the templates available in Migration Hub Orchestrator to create a
migration workflow.


=head2 ListTemplateStepGroups

=over

=item TemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListTemplateStepGroups>

Returns: a L<Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse> instance

List the step groups in a template.


=head2 ListTemplateSteps

=over

=item StepGroupId => Str

=item TemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListTemplateSteps>

Returns: a L<Paws::MigrationHubOrchestrator::ListTemplateStepsResponse> instance

List the steps in a template.


=head2 ListWorkflows

=over

=item [AdsApplicationConfigurationName => Str]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [Status => Str]

=item [TemplateId => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListWorkflows>

Returns: a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse> instance

List the migration workflows.


=head2 ListWorkflowStepGroups

=over

=item WorkflowId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListWorkflowStepGroups>

Returns: a L<Paws::MigrationHubOrchestrator::ListWorkflowStepGroupsResponse> instance

List the step groups in a migration workflow.


=head2 ListWorkflowSteps

=over

=item StepGroupId => Str

=item WorkflowId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::ListWorkflowSteps>

Returns: a L<Paws::MigrationHubOrchestrator::ListWorkflowStepsResponse> instance

List the steps in a workflow.


=head2 RetryWorkflowStep

=over

=item Id => Str

=item StepGroupId => Str

=item WorkflowId => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::RetryWorkflowStep>

Returns: a L<Paws::MigrationHubOrchestrator::RetryWorkflowStepResponse> instance

Retry a failed step in a migration workflow.


=head2 StartWorkflow

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::StartWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::StartMigrationWorkflowResponse> instance

Start a migration workflow.


=head2 StopWorkflow

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::StopWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::StopMigrationWorkflowResponse> instance

Stop an ongoing migration workflow.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MigrationHubOrchestrator::TagMap>


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::TagResource>

Returns: a L<Paws::MigrationHubOrchestrator::TagResourceResponse> instance

Tag a resource by specifying its Amazon Resource Name (ARN).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::UntagResource>

Returns: a L<Paws::MigrationHubOrchestrator::UntagResourceResponse> instance

Deletes the tags for a resource.


=head2 UpdateTemplate

=over

=item Id => Str

=item [ClientToken => Str]

=item [TemplateDescription => Str]

=item [TemplateName => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::UpdateTemplate>

Returns: a L<Paws::MigrationHubOrchestrator::UpdateTemplateResponse> instance

Updates a migration workflow template.


=head2 UpdateWorkflow

=over

=item Id => Str

=item [Description => Str]

=item [InputParameters => L<Paws::MigrationHubOrchestrator::StepInputParameters>]

=item [Name => Str]

=item [StepTargets => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::UpdateWorkflow>

Returns: a L<Paws::MigrationHubOrchestrator::UpdateMigrationWorkflowResponse> instance

Update a migration workflow.


=head2 UpdateWorkflowStep

=over

=item Id => Str

=item StepGroupId => Str

=item WorkflowId => Str

=item [Description => Str]

=item [Name => Str]

=item [Next => ArrayRef[Str|Undef]]

=item [Outputs => ArrayRef[L<Paws::MigrationHubOrchestrator::WorkflowStepOutput>]]

=item [Previous => ArrayRef[Str|Undef]]

=item [Status => Str]

=item [StepActionType => Str]

=item [StepTarget => ArrayRef[Str|Undef]]

=item [WorkflowStepAutomationConfiguration => L<Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration>]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::UpdateWorkflowStep>

Returns: a L<Paws::MigrationHubOrchestrator::UpdateWorkflowStepResponse> instance

Update a step in a migration workflow.


=head2 UpdateWorkflowStepGroup

=over

=item Id => Str

=item WorkflowId => Str

=item [Description => Str]

=item [Name => Str]

=item [Next => ArrayRef[Str|Undef]]

=item [Previous => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MigrationHubOrchestrator::UpdateWorkflowStepGroup>

Returns: a L<Paws::MigrationHubOrchestrator::UpdateWorkflowStepGroupResponse> instance

Update the step group in a migration workflow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPlugins(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPlugins([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - plugins, passing the object as the first parameter, and the string 'plugins' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListPluginsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplates(sub { },[MaxResults => Int, Name => Str, NextToken => Str])

=head2 ListAllTemplates([MaxResults => Int, Name => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateSummary, passing the object as the first parameter, and the string 'templateSummary' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateStepGroups(sub { },TemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateStepGroups(TemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateStepGroupSummary, passing the object as the first parameter, and the string 'templateStepGroupSummary' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListTemplateStepGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTemplateSteps(sub { },StepGroupId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTemplateSteps(StepGroupId => Str, TemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateStepSummaryList, passing the object as the first parameter, and the string 'templateStepSummaryList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListTemplateStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflows(sub { },[AdsApplicationConfigurationName => Str, MaxResults => Int, Name => Str, NextToken => Str, Status => Str, TemplateId => Str])

=head2 ListAllWorkflows([AdsApplicationConfigurationName => Str, MaxResults => Int, Name => Str, NextToken => Str, Status => Str, TemplateId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - migrationWorkflowSummary, passing the object as the first parameter, and the string 'migrationWorkflowSummary' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListMigrationWorkflowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowStepGroups(sub { },WorkflowId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkflowStepGroups(WorkflowId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowStepGroupsSummary, passing the object as the first parameter, and the string 'workflowStepGroupsSummary' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListWorkflowStepGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkflowSteps(sub { },StepGroupId => Str, WorkflowId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllWorkflowSteps(StepGroupId => Str, WorkflowId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowStepsSummary, passing the object as the first parameter, and the string 'workflowStepsSummary' as the second parameter 

If not, it will return a a L<Paws::MigrationHubOrchestrator::ListWorkflowStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


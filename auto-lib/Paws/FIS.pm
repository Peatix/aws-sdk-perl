package Paws::FIS;
  use Moose;
  sub service { 'fis' }
  sub signing_name { 'fis' }
  sub version { '2020-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::CreateExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTargetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::CreateTargetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::DeleteExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTargetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::DeleteTargetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperimentTargetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetExperimentTargetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSafetyLever {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetSafetyLever', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTargetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetTargetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTargetResourceType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::GetTargetResourceType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperimentResolvedTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperimentResolvedTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperimentTargetAccountConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperimentTargetAccountConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperimentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListExperimentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetAccountConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListTargetAccountConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::ListTargetResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::StartExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::StopExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperimentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UpdateExperimentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSafetyLeverState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UpdateSafetyLeverState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTargetAccountConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FIS::UpdateTargetAccountConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->actions }, @{ $next_result->actions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'actions') foreach (@{ $result->actions });
        $result = $self->ListActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'actions') foreach (@{ $result->actions });
    }

    return undef
  }
  sub ListAllExperimentResolvedTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperimentResolvedTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExperimentResolvedTargets(@_, nextToken => $next_result->nextToken);
        push @{ $result->resolvedTargets }, @{ $next_result->resolvedTargets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resolvedTargets') foreach (@{ $result->resolvedTargets });
        $result = $self->ListExperimentResolvedTargets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resolvedTargets') foreach (@{ $result->resolvedTargets });
    }

    return undef
  }
  sub ListAllExperiments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperiments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExperiments(@_, nextToken => $next_result->nextToken);
        push @{ $result->experiments }, @{ $next_result->experiments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'experiments') foreach (@{ $result->experiments });
        $result = $self->ListExperiments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'experiments') foreach (@{ $result->experiments });
    }

    return undef
  }
  sub ListAllExperimentTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperimentTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExperimentTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->experimentTemplates }, @{ $next_result->experimentTemplates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'experimentTemplates') foreach (@{ $result->experimentTemplates });
        $result = $self->ListExperimentTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'experimentTemplates') foreach (@{ $result->experimentTemplates });
    }

    return undef
  }
  sub ListAllTargetAccountConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetAccountConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTargetAccountConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->targetAccountConfigurations }, @{ $next_result->targetAccountConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'targetAccountConfigurations') foreach (@{ $result->targetAccountConfigurations });
        $result = $self->ListTargetAccountConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'targetAccountConfigurations') foreach (@{ $result->targetAccountConfigurations });
    }

    return undef
  }
  sub ListAllTargetResourceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetResourceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTargetResourceTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->targetResourceTypes }, @{ $next_result->targetResourceTypes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'targetResourceTypes') foreach (@{ $result->targetResourceTypes });
        $result = $self->ListTargetResourceTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'targetResourceTypes') foreach (@{ $result->targetResourceTypes });
    }

    return undef
  }


  sub operations { qw/CreateExperimentTemplate CreateTargetAccountConfiguration DeleteExperimentTemplate DeleteTargetAccountConfiguration GetAction GetExperiment GetExperimentTargetAccountConfiguration GetExperimentTemplate GetSafetyLever GetTargetAccountConfiguration GetTargetResourceType ListActions ListExperimentResolvedTargets ListExperiments ListExperimentTargetAccountConfigurations ListExperimentTemplates ListTagsForResource ListTargetAccountConfigurations ListTargetResourceTypes StartExperiment StopExperiment TagResource UntagResource UpdateExperimentTemplate UpdateSafetyLeverState UpdateTargetAccountConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS - Perl Interface to AWS AWS Fault Injection Simulator

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FIS');
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

Amazon Web Services Fault Injection Service is a managed service that
enables you to perform fault injection experiments on your Amazon Web
Services workloads. For more information, see the Fault Injection
Service User Guide (https://docs.aws.amazon.com/fis/latest/userguide/).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateExperimentTemplate

=over

=item Actions => L<Paws::FIS::CreateExperimentTemplateActionInputMap>

=item ClientToken => Str

=item Description => Str

=item RoleArn => Str

=item StopConditions => ArrayRef[L<Paws::FIS::CreateExperimentTemplateStopConditionInput>]

=item [ExperimentOptions => L<Paws::FIS::CreateExperimentTemplateExperimentOptionsInput>]

=item [ExperimentReportConfiguration => L<Paws::FIS::CreateExperimentTemplateReportConfigurationInput>]

=item [LogConfiguration => L<Paws::FIS::CreateExperimentTemplateLogConfigurationInput>]

=item [Tags => L<Paws::FIS::TagMap>]

=item [Targets => L<Paws::FIS::CreateExperimentTemplateTargetInputMap>]


=back

Each argument is described in detail in: L<Paws::FIS::CreateExperimentTemplate>

Returns: a L<Paws::FIS::CreateExperimentTemplateResponse> instance

Creates an experiment template.

An experiment template includes the following components:

=over

=item *

B<Targets>: A target can be a specific resource in your Amazon Web
Services environment, or one or more resources that match criteria that
you specify, for example, resources that have specific tags.

=item *

B<Actions>: The actions to carry out on the target. You can specify
multiple actions, the duration of each action, and when to start each
action during an experiment.

=item *

B<Stop conditions>: If a stop condition is triggered while an
experiment is running, the experiment is automatically stopped. You can
define a stop condition as a CloudWatch alarm.

=back

For more information, see experiment templates
(https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html)
in the I<Fault Injection Service User Guide>.


=head2 CreateTargetAccountConfiguration

=over

=item AccountId => Str

=item ExperimentTemplateId => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::FIS::CreateTargetAccountConfiguration>

Returns: a L<Paws::FIS::CreateTargetAccountConfigurationResponse> instance

Creates a target account configuration for the experiment template. A
target account configuration is required when C<accountTargeting> of
C<experimentOptions> is set to C<multi-account>. For more information,
see experiment options
(https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html)
in the I<Fault Injection Service User Guide>.


=head2 DeleteExperimentTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::DeleteExperimentTemplate>

Returns: a L<Paws::FIS::DeleteExperimentTemplateResponse> instance

Deletes the specified experiment template.


=head2 DeleteTargetAccountConfiguration

=over

=item AccountId => Str

=item ExperimentTemplateId => Str


=back

Each argument is described in detail in: L<Paws::FIS::DeleteTargetAccountConfiguration>

Returns: a L<Paws::FIS::DeleteTargetAccountConfigurationResponse> instance

Deletes the specified target account configuration of the experiment
template.


=head2 GetAction

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetAction>

Returns: a L<Paws::FIS::GetActionResponse> instance

Gets information about the specified FIS action.


=head2 GetExperiment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetExperiment>

Returns: a L<Paws::FIS::GetExperimentResponse> instance

Gets information about the specified experiment.


=head2 GetExperimentTargetAccountConfiguration

=over

=item AccountId => Str

=item ExperimentId => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetExperimentTargetAccountConfiguration>

Returns: a L<Paws::FIS::GetExperimentTargetAccountConfigurationResponse> instance

Gets information about the specified target account configuration of
the experiment.


=head2 GetExperimentTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetExperimentTemplate>

Returns: a L<Paws::FIS::GetExperimentTemplateResponse> instance

Gets information about the specified experiment template.


=head2 GetSafetyLever

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetSafetyLever>

Returns: a L<Paws::FIS::GetSafetyLeverResponse> instance

Gets information about the specified safety lever.


=head2 GetTargetAccountConfiguration

=over

=item AccountId => Str

=item ExperimentTemplateId => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetTargetAccountConfiguration>

Returns: a L<Paws::FIS::GetTargetAccountConfigurationResponse> instance

Gets information about the specified target account configuration of
the experiment template.


=head2 GetTargetResourceType

=over

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::FIS::GetTargetResourceType>

Returns: a L<Paws::FIS::GetTargetResourceTypeResponse> instance

Gets information about the specified resource type.


=head2 ListActions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListActions>

Returns: a L<Paws::FIS::ListActionsResponse> instance

Lists the available FIS actions.


=head2 ListExperimentResolvedTargets

=over

=item ExperimentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetName => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperimentResolvedTargets>

Returns: a L<Paws::FIS::ListExperimentResolvedTargetsResponse> instance

Lists the resolved targets information of the specified experiment.


=head2 ListExperiments

=over

=item [ExperimentTemplateId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperiments>

Returns: a L<Paws::FIS::ListExperimentsResponse> instance

Lists your experiments.


=head2 ListExperimentTargetAccountConfigurations

=over

=item ExperimentId => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperimentTargetAccountConfigurations>

Returns: a L<Paws::FIS::ListExperimentTargetAccountConfigurationsResponse> instance

Lists the target account configurations of the specified experiment.


=head2 ListExperimentTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListExperimentTemplates>

Returns: a L<Paws::FIS::ListExperimentTemplatesResponse> instance

Lists your experiment templates.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::FIS::ListTagsForResource>

Returns: a L<Paws::FIS::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 ListTargetAccountConfigurations

=over

=item ExperimentTemplateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListTargetAccountConfigurations>

Returns: a L<Paws::FIS::ListTargetAccountConfigurationsResponse> instance

Lists the target account configurations of the specified experiment
template.


=head2 ListTargetResourceTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FIS::ListTargetResourceTypes>

Returns: a L<Paws::FIS::ListTargetResourceTypesResponse> instance

Lists the target resource types.


=head2 StartExperiment

=over

=item ClientToken => Str

=item ExperimentTemplateId => Str

=item [ExperimentOptions => L<Paws::FIS::StartExperimentExperimentOptionsInput>]

=item [Tags => L<Paws::FIS::TagMap>]


=back

Each argument is described in detail in: L<Paws::FIS::StartExperiment>

Returns: a L<Paws::FIS::StartExperimentResponse> instance

Starts running an experiment from the specified experiment template.


=head2 StopExperiment

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::FIS::StopExperiment>

Returns: a L<Paws::FIS::StopExperimentResponse> instance

Stops the specified experiment.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::FIS::TagMap>


=back

Each argument is described in detail in: L<Paws::FIS::TagResource>

Returns: a L<Paws::FIS::TagResourceResponse> instance

Applies the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item [TagKeys => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::FIS::UntagResource>

Returns: a L<Paws::FIS::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateExperimentTemplate

=over

=item Id => Str

=item [Actions => L<Paws::FIS::UpdateExperimentTemplateActionInputMap>]

=item [Description => Str]

=item [ExperimentOptions => L<Paws::FIS::UpdateExperimentTemplateExperimentOptionsInput>]

=item [ExperimentReportConfiguration => L<Paws::FIS::UpdateExperimentTemplateReportConfigurationInput>]

=item [LogConfiguration => L<Paws::FIS::UpdateExperimentTemplateLogConfigurationInput>]

=item [RoleArn => Str]

=item [StopConditions => ArrayRef[L<Paws::FIS::UpdateExperimentTemplateStopConditionInput>]]

=item [Targets => L<Paws::FIS::UpdateExperimentTemplateTargetInputMap>]


=back

Each argument is described in detail in: L<Paws::FIS::UpdateExperimentTemplate>

Returns: a L<Paws::FIS::UpdateExperimentTemplateResponse> instance

Updates the specified experiment template.


=head2 UpdateSafetyLeverState

=over

=item Id => Str

=item State => L<Paws::FIS::UpdateSafetyLeverStateInput>


=back

Each argument is described in detail in: L<Paws::FIS::UpdateSafetyLeverState>

Returns: a L<Paws::FIS::UpdateSafetyLeverStateResponse> instance

Updates the specified safety lever state.


=head2 UpdateTargetAccountConfiguration

=over

=item AccountId => Str

=item ExperimentTemplateId => Str

=item [Description => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::FIS::UpdateTargetAccountConfiguration>

Returns: a L<Paws::FIS::UpdateTargetAccountConfigurationResponse> instance

Updates the target account configuration for the specified experiment
template.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllActions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllActions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actions, passing the object as the first parameter, and the string 'actions' as the second parameter 

If not, it will return a a L<Paws::FIS::ListActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExperimentResolvedTargets(sub { },ExperimentId => Str, [MaxResults => Int, NextToken => Str, TargetName => Str])

=head2 ListAllExperimentResolvedTargets(ExperimentId => Str, [MaxResults => Int, NextToken => Str, TargetName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resolvedTargets, passing the object as the first parameter, and the string 'resolvedTargets' as the second parameter 

If not, it will return a a L<Paws::FIS::ListExperimentResolvedTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExperiments(sub { },[ExperimentTemplateId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllExperiments([ExperimentTemplateId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - experiments, passing the object as the first parameter, and the string 'experiments' as the second parameter 

If not, it will return a a L<Paws::FIS::ListExperimentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExperimentTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllExperimentTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - experimentTemplates, passing the object as the first parameter, and the string 'experimentTemplates' as the second parameter 

If not, it will return a a L<Paws::FIS::ListExperimentTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetAccountConfigurations(sub { },ExperimentTemplateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTargetAccountConfigurations(ExperimentTemplateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - targetAccountConfigurations, passing the object as the first parameter, and the string 'targetAccountConfigurations' as the second parameter 

If not, it will return a a L<Paws::FIS::ListTargetAccountConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetResourceTypes(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTargetResourceTypes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - targetResourceTypes, passing the object as the first parameter, and the string 'targetResourceTypes' as the second parameter 

If not, it will return a a L<Paws::FIS::ListTargetResourceTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


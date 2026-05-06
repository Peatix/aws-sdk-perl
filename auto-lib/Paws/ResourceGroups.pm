package Paws::ResourceGroups;
  use Moose;
  sub service { 'resource-groups' }
  sub signing_name { 'resource-groups' }
  sub version { '2017-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelTagSyncTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::CancelTagSyncTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::CreateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::DeleteGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetGroupConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGroupQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetGroupQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTagSyncTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GetTagSyncTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GroupResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::GroupResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupingStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListGroupingStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroupResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListGroupResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagSyncTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::ListTagSyncTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutGroupConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::PutGroupConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::SearchResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTagSyncTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::StartTagSyncTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Tag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::Tag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UngroupResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UngroupResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Untag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::Untag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UpdateGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGroupQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceGroups::UpdateGroupQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllGroupingStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupingStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupingStatuses(@_, NextToken => $next_result->NextToken);
        push @{ $result->GroupingStatuses }, @{ $next_result->GroupingStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GroupingStatuses') foreach (@{ $result->GroupingStatuses });
        $result = $self->ListGroupingStatuses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GroupingStatuses') foreach (@{ $result->GroupingStatuses });
    }

    return undef
  }
  sub ListAllGroupResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroupResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroupResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceIdentifiers }, @{ $next_result->ResourceIdentifiers };
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->ListGroupResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub ListAllGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->GroupIdentifiers }, @{ $next_result->GroupIdentifiers };
        push @{ $result->Groups }, @{ $next_result->Groups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GroupIdentifiers') foreach (@{ $result->GroupIdentifiers });
        $callback->($_ => 'Groups') foreach (@{ $result->Groups });
        $result = $self->ListGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GroupIdentifiers') foreach (@{ $result->GroupIdentifiers });
      $callback->($_ => 'Groups') foreach (@{ $result->Groups });
    }

    return undef
  }
  sub ListAllTagSyncTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagSyncTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagSyncTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->TagSyncTasks }, @{ $next_result->TagSyncTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TagSyncTasks') foreach (@{ $result->TagSyncTasks });
        $result = $self->ListTagSyncTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TagSyncTasks') foreach (@{ $result->TagSyncTasks });
    }

    return undef
  }
  sub SearchAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->SearchResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceIdentifiers }, @{ $next_result->ResourceIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
        $result = $self->SearchResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceIdentifiers') foreach (@{ $result->ResourceIdentifiers });
    }

    return undef
  }


  sub operations { qw/CancelTagSyncTask CreateGroup DeleteGroup GetAccountSettings GetGroup GetGroupConfiguration GetGroupQuery GetTags GetTagSyncTask GroupResources ListGroupingStatuses ListGroupResources ListGroups ListTagSyncTasks PutGroupConfiguration SearchResources StartTagSyncTask Tag UngroupResources Untag UpdateAccountSettings UpdateGroup UpdateGroupQuery / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups - Perl Interface to AWS AWS Resource Groups

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ResourceGroups');
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

Resource Groups lets you organize Amazon Web Services resources such as
Amazon Elastic Compute Cloud instances, Amazon Relational Database
Service databases, and Amazon Simple Storage Service buckets into
groups using criteria that you define as tags. A resource group is a
collection of resources that match the resource types specified in a
query, and share one or more tags or portions of tags. You can create a
group of resources based on their roles in your cloud infrastructure,
lifecycle stages, regions, application layers, or virtually any
criteria. Resource Groups enable you to automate management tasks, such
as those in Amazon Web Services Systems Manager Automation documents,
on tag-related resources in Amazon Web Services Systems Manager. Groups
of tagged resources also let you quickly view a custom console in
Amazon Web Services Systems Manager that shows Config compliance and
other monitoring data about member resources.

To create a resource group, build a resource query, and specify tags
that identify the criteria that members of the group have in common.
Tags are key-value pairs.

For more information about Resource Groups, see the Resource Groups
User Guide
(https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).

Resource Groups uses a REST-compliant API that you can use to perform
the following types of operations.

=over

=item *

Create, Read, Update, and Delete (CRUD) operations on resource groups
and resource query entities

=item *

Applying, editing, and removing tags from resource groups

=item *

Resolving resource group member Amazon resource names (ARN)s so they
can be returned as search results

=item *

Getting data about resources that are members of a group

=item *

Searching Amazon Web Services resources based on a resource query

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelTagSyncTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::CancelTagSyncTask>

Returns: nothing

Cancels the specified tag-sync task.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:CancelTagSyncTask> on the application group

=item *

C<resource-groups:DeleteGroup>

=back



=head2 CreateGroup

=over

=item Name => Str

=item [Configuration => ArrayRef[L<Paws::ResourceGroups::GroupConfigurationItem>]]

=item [Criticality => Int]

=item [Description => Str]

=item [DisplayName => Str]

=item [Owner => Str]

=item [ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>]

=item [Tags => L<Paws::ResourceGroups::Tags>]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::CreateGroup>

Returns: a L<Paws::ResourceGroups::CreateGroupOutput> instance

Creates a resource group with the specified name and description. You
can optionally include either a resource query or a service
configuration. For more information about constructing a resource
query, see Build queries and groups in Resource Groups
(https://docs.aws.amazon.com/ARG/latest/userguide/getting_started-query.html)
in the I<Resource Groups User Guide>. For more information about
service-linked groups and service configurations, see Service
configurations for Resource Groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:CreateGroup>

=back



=head2 DeleteGroup

=over

=item [Group => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::DeleteGroup>

Returns: a L<Paws::ResourceGroups::DeleteGroupOutput> instance

Deletes the specified resource group. Deleting a resource group does
not delete any resources that are members of the group; it only deletes
the group structure.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:DeleteGroup>

=back



=head2 GetAccountSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetAccountSettings>

Returns: a L<Paws::ResourceGroups::GetAccountSettingsOutput> instance

Retrieves the current status of optional features in Resource Groups.


=head2 GetGroup

=over

=item [Group => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroup>

Returns: a L<Paws::ResourceGroups::GetGroupOutput> instance

Returns information about a specified resource group.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GetGroup>

=back



=head2 GetGroupConfiguration

=over

=item [Group => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroupConfiguration>

Returns: a L<Paws::ResourceGroups::GetGroupConfigurationOutput> instance

Retrieves the service configuration associated with the specified
resource group. For details about the service configuration syntax, see
Service configurations for Resource Groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GetGroupConfiguration>

=back



=head2 GetGroupQuery

=over

=item [Group => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetGroupQuery>

Returns: a L<Paws::ResourceGroups::GetGroupQueryOutput> instance

Retrieves the resource query associated with the specified resource
group. For more information about resource queries, see Create a
tag-based group in Resource Groups
(https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GetGroupQuery>

=back



=head2 GetTags

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetTags>

Returns: a L<Paws::ResourceGroups::GetTagsOutput> instance

Returns a list of tags that are associated with a resource group,
specified by an Amazon resource name (ARN).

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GetTags>

=back



=head2 GetTagSyncTask

=over

=item TaskArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GetTagSyncTask>

Returns: a L<Paws::ResourceGroups::GetTagSyncTaskOutput> instance

Returns information about a specified tag-sync task.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GetTagSyncTask> on the application group

=back



=head2 GroupResources

=over

=item Group => Str

=item ResourceArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::GroupResources>

Returns: a L<Paws::ResourceGroups::GroupResourcesOutput> instance

Adds the specified resources to the specified group.

You can only use this operation with the following groups:

=over

=item *

C<AWS::EC2::HostManagement>

=item *

C<AWS::EC2::CapacityReservationPool>

=item *

C<AWS::ResourceGroups::ApplicationGroup>

=back

Other resource group types and resource types are not currently
supported by this operation.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:GroupResources>

=back



=head2 ListGroupingStatuses

=over

=item Group => Str

=item [Filters => ArrayRef[L<Paws::ResourceGroups::ListGroupingStatusesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroupingStatuses>

Returns: a L<Paws::ResourceGroups::ListGroupingStatusesOutput> instance

Returns the status of the last grouping or ungrouping action for each
resource in the specified application group.


=head2 ListGroupResources

=over

=item [Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>]]

=item [Group => Str]

=item [GroupName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroupResources>

Returns: a L<Paws::ResourceGroups::ListGroupResourcesOutput> instance

Returns a list of Amazon resource names (ARNs) of the resources that
are members of a specified resource group.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:ListGroupResources>

=item *

C<cloudformation:DescribeStacks>

=item *

C<cloudformation:ListStackResources>

=item *

C<tag:GetResources>

=back



=head2 ListGroups

=over

=item [Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListGroups>

Returns: a L<Paws::ResourceGroups::ListGroupsOutput> instance

Returns a list of existing Resource Groups in your account.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:ListGroups>

=back



=head2 ListTagSyncTasks

=over

=item [Filters => ArrayRef[L<Paws::ResourceGroups::ListTagSyncTasksFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::ListTagSyncTasks>

Returns: a L<Paws::ResourceGroups::ListTagSyncTasksOutput> instance

Returns a list of tag-sync tasks.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:ListTagSyncTasks> with the group passed in the
filters as the resource or * if using no filters

=back



=head2 PutGroupConfiguration

=over

=item [Configuration => ArrayRef[L<Paws::ResourceGroups::GroupConfigurationItem>]]

=item [Group => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::PutGroupConfiguration>

Returns: a L<Paws::ResourceGroups::PutGroupConfigurationOutput> instance

Attaches a service configuration to the specified group. This occurs
asynchronously, and can take time to complete. You can use
GetGroupConfiguration to check the status of the update.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:PutGroupConfiguration>

=back



=head2 SearchResources

=over

=item ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::SearchResources>

Returns: a L<Paws::ResourceGroups::SearchResourcesOutput> instance

Returns a list of Amazon Web Services resource identifiers that matches
the specified query. The query uses the same format as a resource query
in a CreateGroup or UpdateGroupQuery operation.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:SearchResources>

=item *

C<cloudformation:DescribeStacks>

=item *

C<cloudformation:ListStackResources>

=item *

C<tag:GetResources>

=back



=head2 StartTagSyncTask

=over

=item Group => Str

=item RoleArn => Str

=item [ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>]

=item [TagKey => Str]

=item [TagValue => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::StartTagSyncTask>

Returns: a L<Paws::ResourceGroups::StartTagSyncTaskOutput> instance

Creates a new tag-sync task to onboard and sync resources tagged with a
specific tag key-value pair to an application. To start a tag-sync
task, you need a resource tagging role
(https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role).
The resource tagging role grants permissions to tag and untag
applications resources and must include a trust policy that allows
Resource Groups to assume the role and perform resource tagging tasks
on your behalf.

For instructions on creating a tag-sync task, see Create a tag-sync
using the Resource Groups API
(https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#create-tag-sync)
in the I<Amazon Web Services Service Catalog AppRegistry Administrator
Guide>.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:StartTagSyncTask> on the application group

=item *

C<resource-groups:CreateGroup>

=item *

C<iam:PassRole> on the role provided in the request

=back



=head2 Tag

=over

=item Arn => Str

=item Tags => L<Paws::ResourceGroups::Tags>


=back

Each argument is described in detail in: L<Paws::ResourceGroups::Tag>

Returns: a L<Paws::ResourceGroups::TagOutput> instance

Adds tags to a resource group with the specified Amazon resource name
(ARN). Existing tags on a resource group are not changed if they are
not specified in the request parameters.

Do not store personally identifiable information (PII) or other
confidential or sensitive information in tags. We use tags to provide
you with billing and administration services. Tags are not intended to
be used for private or sensitive data.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:Tag>

=back



=head2 UngroupResources

=over

=item Group => Str

=item ResourceArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UngroupResources>

Returns: a L<Paws::ResourceGroups::UngroupResourcesOutput> instance

Removes the specified resources from the specified group. This
operation works only with static groups that you populated using the
GroupResources operation. It doesn't work with any resource groups that
are automatically populated by tag-based or CloudFormation stack-based
queries.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:UngroupResources>

=back



=head2 Untag

=over

=item Arn => Str

=item Keys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::Untag>

Returns: a L<Paws::ResourceGroups::UntagOutput> instance

Deletes tags from a specified resource group.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:Untag>

=back



=head2 UpdateAccountSettings

=over

=item [GroupLifecycleEventsDesiredStatus => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateAccountSettings>

Returns: a L<Paws::ResourceGroups::UpdateAccountSettingsOutput> instance

Turns on or turns off optional features in Resource Groups.

The preceding example shows that the request to turn on group lifecycle
events is C<IN_PROGRESS>. You can call the GetAccountSettings operation
to check for completion by looking for C<GroupLifecycleEventsStatus> to
change to C<ACTIVE>.


=head2 UpdateGroup

=over

=item [Criticality => Int]

=item [Description => Str]

=item [DisplayName => Str]

=item [Group => Str]

=item [GroupName => Str]

=item [Owner => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroup>

Returns: a L<Paws::ResourceGroups::UpdateGroupOutput> instance

Updates the description for an existing group. You cannot update the
name of a resource group.

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:UpdateGroup>

=back



=head2 UpdateGroupQuery

=over

=item ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>

=item [Group => Str]

=item [GroupName => Str]


=back

Each argument is described in detail in: L<Paws::ResourceGroups::UpdateGroupQuery>

Returns: a L<Paws::ResourceGroups::UpdateGroupQueryOutput> instance

Updates the resource query of a group. For more information about
resource queries, see Create a tag-based group in Resource Groups
(https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag).

B<Minimum permissions>

To run this command, you must have the following permissions:

=over

=item *

C<resource-groups:UpdateGroupQuery>

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGroupingStatuses(sub { },Group => Str, [Filters => ArrayRef[L<Paws::ResourceGroups::ListGroupingStatusesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllGroupingStatuses(Group => Str, [Filters => ArrayRef[L<Paws::ResourceGroups::ListGroupingStatusesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GroupingStatuses, passing the object as the first parameter, and the string 'GroupingStatuses' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListGroupingStatusesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroupResources(sub { },[Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>], Group => Str, GroupName => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllGroupResources([Filters => ArrayRef[L<Paws::ResourceGroups::ResourceFilter>], Group => Str, GroupName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceIdentifiers, passing the object as the first parameter, and the string 'ResourceIdentifiers' as the second parameter 

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListGroupResourcesOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGroups(sub { },[Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllGroups([Filters => ArrayRef[L<Paws::ResourceGroups::GroupFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GroupIdentifiers, passing the object as the first parameter, and the string 'GroupIdentifiers' as the second parameter 

 - Groups, passing the object as the first parameter, and the string 'Groups' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListGroupsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagSyncTasks(sub { },[Filters => ArrayRef[L<Paws::ResourceGroups::ListTagSyncTasksFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllTagSyncTasks([Filters => ArrayRef[L<Paws::ResourceGroups::ListTagSyncTasksFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TagSyncTasks, passing the object as the first parameter, and the string 'TagSyncTasks' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::ListTagSyncTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllResources(sub { },ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [MaxResults => Int, NextToken => Str])

=head2 SearchAllResources(ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceIdentifiers, passing the object as the first parameter, and the string 'ResourceIdentifiers' as the second parameter 

If not, it will return a a L<Paws::ResourceGroups::SearchResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


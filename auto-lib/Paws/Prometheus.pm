package Paws::Prometheus;
  use Moose;
  sub service { 'aps' }
  sub signing_name { 'aps' }
  sub version { '2020-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAlertManagerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateAlertManagerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleGroupsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateRuleGroupsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScraper {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateScraper', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlertManagerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteAlertManagerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleGroupsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteRuleGroupsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScraper {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteScraper', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlertManagerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeAlertManagerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuleGroupsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeRuleGroupsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScraper {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeScraper', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspaceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeWorkspaceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultScraperConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::GetDefaultScraperConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleGroupsNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::ListRuleGroupsNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScrapers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::ListScrapers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::ListWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAlertManagerDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::PutAlertManagerDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRuleGroupsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::PutRuleGroupsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UpdateLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScraper {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UpdateScraper', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UpdateWorkspaceAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UpdateWorkspaceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRuleGroupsNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleGroupsNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRuleGroupsNamespaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->ruleGroupsNamespaces }, @{ $next_result->ruleGroupsNamespaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ruleGroupsNamespaces') foreach (@{ $result->ruleGroupsNamespaces });
        $result = $self->ListRuleGroupsNamespaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ruleGroupsNamespaces') foreach (@{ $result->ruleGroupsNamespaces });
    }

    return undef
  }
  sub ListAllScrapers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScrapers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListScrapers(@_, nextToken => $next_result->nextToken);
        push @{ $result->scrapers }, @{ $next_result->scrapers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scrapers') foreach (@{ $result->scrapers });
        $result = $self->ListScrapers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scrapers') foreach (@{ $result->scrapers });
    }

    return undef
  }
  sub ListAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkspaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->workspaces }, @{ $next_result->workspaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
        $result = $self->ListWorkspaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
    }

    return undef
  }


  sub operations { qw/CreateAlertManagerDefinition CreateLoggingConfiguration CreateRuleGroupsNamespace CreateScraper CreateWorkspace DeleteAlertManagerDefinition DeleteLoggingConfiguration DeleteRuleGroupsNamespace DeleteScraper DeleteWorkspace DescribeAlertManagerDefinition DescribeLoggingConfiguration DescribeRuleGroupsNamespace DescribeScraper DescribeWorkspace DescribeWorkspaceConfiguration GetDefaultScraperConfiguration ListRuleGroupsNamespaces ListScrapers ListTagsForResource ListWorkspaces PutAlertManagerDefinition PutRuleGroupsNamespace TagResource UntagResource UpdateLoggingConfiguration UpdateScraper UpdateWorkspaceAlias UpdateWorkspaceConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus - Perl Interface to AWS Amazon Prometheus Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Prometheus');
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

Amazon Managed Service for Prometheus is a serverless,
Prometheus-compatible monitoring service for container metrics that
makes it easier to securely monitor container environments at scale.
With Amazon Managed Service for Prometheus, you can use the same
open-source Prometheus data model and query language that you use today
to monitor the performance of your containerized workloads, and also
enjoy improved scalability, availability, and security without having
to manage the underlying infrastructure.

For more information about Amazon Managed Service for Prometheus, see
the Amazon Managed Service for Prometheus
(https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html)
User Guide.

Amazon Managed Service for Prometheus includes two APIs.

=over

=item *

Use the Amazon Web Services API described in this guide to manage
Amazon Managed Service for Prometheus resources, such as workspaces,
rule groups, and alert managers.

=item *

Use the Prometheus-compatible API
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis)
to work within your Prometheus workspace.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateAlertManagerDefinition

=over

=item Data => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateAlertManagerDefinition>

Returns: a L<Paws::Prometheus::CreateAlertManagerDefinitionResponse> instance

The C<CreateAlertManagerDefinition> operation creates the alert manager
definition in a workspace. If a workspace already has an alert manager
definition, don't use this operation to update it. Instead, use
C<PutAlertManagerDefinition>.


=head2 CreateLoggingConfiguration

=over

=item LogGroupArn => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateLoggingConfiguration>

Returns: a L<Paws::Prometheus::CreateLoggingConfigurationResponse> instance

The C<CreateLoggingConfiguration> operation creates a logging
configuration for the workspace. Use this operation to set the
CloudWatch log group to which the logs will be published to.


=head2 CreateRuleGroupsNamespace

=over

=item Data => Str

=item Name => Str

=item WorkspaceId => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Prometheus::TagMap>]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateRuleGroupsNamespace>

Returns: a L<Paws::Prometheus::CreateRuleGroupsNamespaceResponse> instance

The C<CreateRuleGroupsNamespace> operation creates a rule groups
namespace within a workspace. A rule groups namespace is associated
with exactly one rules file. A workspace can have multiple rule groups
namespaces.

Use this operation only to create new rule groups namespaces. To update
an existing rule groups namespace, use C<PutRuleGroupsNamespace>.


=head2 CreateScraper

=over

=item Destination => L<Paws::Prometheus::Destination>

=item ScrapeConfiguration => L<Paws::Prometheus::ScrapeConfiguration>

=item Source => L<Paws::Prometheus::Source>

=item [Alias => Str]

=item [ClientToken => Str]

=item [RoleConfiguration => L<Paws::Prometheus::RoleConfiguration>]

=item [Tags => L<Paws::Prometheus::TagMap>]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateScraper>

Returns: a L<Paws::Prometheus::CreateScraperResponse> instance

The C<CreateScraper> operation creates a scraper to collect metrics. A
scraper pulls metrics from Prometheus-compatible sources within an
Amazon EKS cluster, and sends them to your Amazon Managed Service for
Prometheus workspace. Scrapers are flexible, and can be configured to
control what metrics are collected, the frequency of collection, what
transformations are applied to the metrics, and more.

An IAM role will be created for you that Amazon Managed Service for
Prometheus uses to access the metrics in your cluster. You must
configure this role with a policy that allows it to scrape metrics from
your cluster. For more information, see Configuring your Amazon EKS
cluster
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup)
in the I<Amazon Managed Service for Prometheus User Guide>.

The C<scrapeConfiguration> parameter contains the base-64 encoded YAML
configuration for the scraper.

For more information about collectors, including what metrics are
collected, and how to configure the scraper, see Using an Amazon Web
Services managed collector
(https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html)
in the I<Amazon Managed Service for Prometheus User Guide>.


=head2 CreateWorkspace

=over

=item [Alias => Str]

=item [ClientToken => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::Prometheus::TagMap>]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateWorkspace>

Returns: a L<Paws::Prometheus::CreateWorkspaceResponse> instance

Creates a Prometheus workspace. A workspace is a logical space
dedicated to the storage and querying of Prometheus metrics. You can
have one or more workspaces in each Region in your account.


=head2 DeleteAlertManagerDefinition

=over

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteAlertManagerDefinition>

Returns: nothing

Deletes the alert manager definition from a workspace.


=head2 DeleteLoggingConfiguration

=over

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteLoggingConfiguration>

Returns: nothing

Deletes the logging configuration for a workspace.


=head2 DeleteRuleGroupsNamespace

=over

=item Name => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteRuleGroupsNamespace>

Returns: nothing

Deletes one rule groups namespace and its associated rule groups
definition.


=head2 DeleteScraper

=over

=item ScraperId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteScraper>

Returns: a L<Paws::Prometheus::DeleteScraperResponse> instance

The C<DeleteScraper> operation deletes one scraper, and stops any
metrics collection that the scraper performs.


=head2 DeleteWorkspace

=over

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteWorkspace>

Returns: nothing

Deletes an existing workspace.

When you delete a workspace, the data that has been ingested into it is
not immediately deleted. It will be permanently deleted within one
month.


=head2 DescribeAlertManagerDefinition

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeAlertManagerDefinition>

Returns: a L<Paws::Prometheus::DescribeAlertManagerDefinitionResponse> instance

Retrieves the full information about the alert manager definition for a
workspace.


=head2 DescribeLoggingConfiguration

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeLoggingConfiguration>

Returns: a L<Paws::Prometheus::DescribeLoggingConfigurationResponse> instance

Returns complete information about the current logging configuration of
the workspace.


=head2 DescribeRuleGroupsNamespace

=over

=item Name => Str

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeRuleGroupsNamespace>

Returns: a L<Paws::Prometheus::DescribeRuleGroupsNamespaceResponse> instance

Returns complete information about one rule groups namespace. To
retrieve a list of rule groups namespaces, use
C<ListRuleGroupsNamespaces>.


=head2 DescribeScraper

=over

=item ScraperId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeScraper>

Returns: a L<Paws::Prometheus::DescribeScraperResponse> instance

The C<DescribeScraper> operation displays information about an existing
scraper.


=head2 DescribeWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeWorkspace>

Returns: a L<Paws::Prometheus::DescribeWorkspaceResponse> instance

Returns information about an existing workspace.


=head2 DescribeWorkspaceConfiguration

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeWorkspaceConfiguration>

Returns: a L<Paws::Prometheus::DescribeWorkspaceConfigurationResponse> instance

Use this operation to return information about the configuration of a
workspace. The configuration details returned include workspace
configuration status, label set limits, and retention period.


=head2 GetDefaultScraperConfiguration






Each argument is described in detail in: L<Paws::Prometheus::GetDefaultScraperConfiguration>

Returns: a L<Paws::Prometheus::GetDefaultScraperConfigurationResponse> instance

The C<GetDefaultScraperConfiguration> operation returns the default
scraper configuration used when Amazon EKS creates a scraper for you.


=head2 ListRuleGroupsNamespaces

=over

=item WorkspaceId => Str

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::ListRuleGroupsNamespaces>

Returns: a L<Paws::Prometheus::ListRuleGroupsNamespacesResponse> instance

Returns a list of rule groups namespaces in a workspace.


=head2 ListScrapers

=over

=item [Filters => L<Paws::Prometheus::ScraperFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::ListScrapers>

Returns: a L<Paws::Prometheus::ListScrapersResponse> instance

The C<ListScrapers> operation lists all of the scrapers in your
account. This includes scrapers being created or deleted. You can
optionally filter the returned list.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::ListTagsForResource>

Returns: a L<Paws::Prometheus::ListTagsForResourceResponse> instance

The C<ListTagsForResource> operation returns the tags that are
associated with an Amazon Managed Service for Prometheus resource.
Currently, the only resources that can be tagged are scrapers,
workspaces, and rule groups namespaces.


=head2 ListWorkspaces

=over

=item [Alias => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::ListWorkspaces>

Returns: a L<Paws::Prometheus::ListWorkspacesResponse> instance

Lists all of the Amazon Managed Service for Prometheus workspaces in
your account. This includes workspaces being created or deleted.


=head2 PutAlertManagerDefinition

=over

=item Data => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::PutAlertManagerDefinition>

Returns: a L<Paws::Prometheus::PutAlertManagerDefinitionResponse> instance

Updates an existing alert manager definition in a workspace. If the
workspace does not already have an alert manager definition, don't use
this operation to create it. Instead, use
C<CreateAlertManagerDefinition>.


=head2 PutRuleGroupsNamespace

=over

=item Data => Str

=item Name => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::PutRuleGroupsNamespace>

Returns: a L<Paws::Prometheus::PutRuleGroupsNamespaceResponse> instance

Updates an existing rule groups namespace within a workspace. A rule
groups namespace is associated with exactly one rules file. A workspace
can have multiple rule groups namespaces.

Use this operation only to update existing rule groups namespaces. To
create a new rule groups namespace, use C<CreateRuleGroupsNamespace>.

You can't use this operation to add tags to an existing rule groups
namespace. Instead, use C<TagResource>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Prometheus::TagMap>


=back

Each argument is described in detail in: L<Paws::Prometheus::TagResource>

Returns: a L<Paws::Prometheus::TagResourceResponse> instance

The C<TagResource> operation associates tags with an Amazon Managed
Service for Prometheus resource. The only resources that can be tagged
are rule groups namespaces, scrapers, and workspaces.

If you specify a new tag key for the resource, this tag is appended to
the list of tags associated with the resource. If you specify a tag key
that is already associated with the resource, the new tag value that
you specify replaces the previous value for that tag. To remove a tag,
use C<UntagResource>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Prometheus::UntagResource>

Returns: a L<Paws::Prometheus::UntagResourceResponse> instance

Removes the specified tags from an Amazon Managed Service for
Prometheus resource. The only resources that can be tagged are rule
groups namespaces, scrapers, and workspaces.


=head2 UpdateLoggingConfiguration

=over

=item LogGroupArn => Str

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::UpdateLoggingConfiguration>

Returns: a L<Paws::Prometheus::UpdateLoggingConfigurationResponse> instance

Updates the log group ARN or the workspace ID of the current logging
configuration.


=head2 UpdateScraper

=over

=item ScraperId => Str

=item [Alias => Str]

=item [ClientToken => Str]

=item [Destination => L<Paws::Prometheus::Destination>]

=item [RoleConfiguration => L<Paws::Prometheus::RoleConfiguration>]

=item [ScrapeConfiguration => L<Paws::Prometheus::ScrapeConfiguration>]


=back

Each argument is described in detail in: L<Paws::Prometheus::UpdateScraper>

Returns: a L<Paws::Prometheus::UpdateScraperResponse> instance

Updates an existing scraper.

You can't use this function to update the source from which the scraper
is collecting metrics. To change the source, delete the scraper and
create a new one.


=head2 UpdateWorkspaceAlias

=over

=item WorkspaceId => Str

=item [Alias => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::UpdateWorkspaceAlias>

Returns: nothing

Updates the alias of an existing workspace.


=head2 UpdateWorkspaceConfiguration

=over

=item WorkspaceId => Str

=item [ClientToken => Str]

=item [LimitsPerLabelSet => ArrayRef[L<Paws::Prometheus::LimitsPerLabelSet>]]

=item [RetentionPeriodInDays => Int]


=back

Each argument is described in detail in: L<Paws::Prometheus::UpdateWorkspaceConfiguration>

Returns: a L<Paws::Prometheus::UpdateWorkspaceConfigurationResponse> instance

Use this operation to create or update the label sets, label set
limits, and retention period of a workspace.

You must specify at least one of C<limitsPerLabelSet> or
C<retentionPeriodInDays> for the request to be valid.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRuleGroupsNamespaces(sub { },WorkspaceId => Str, [MaxResults => Int, Name => Str, NextToken => Str])

=head2 ListAllRuleGroupsNamespaces(WorkspaceId => Str, [MaxResults => Int, Name => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ruleGroupsNamespaces, passing the object as the first parameter, and the string 'ruleGroupsNamespaces' as the second parameter 

If not, it will return a a L<Paws::Prometheus::ListRuleGroupsNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScrapers(sub { },[Filters => L<Paws::Prometheus::ScraperFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllScrapers([Filters => L<Paws::Prometheus::ScraperFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scrapers, passing the object as the first parameter, and the string 'scrapers' as the second parameter 

If not, it will return a a L<Paws::Prometheus::ListScrapersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkspaces(sub { },[Alias => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllWorkspaces([Alias => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workspaces, passing the object as the first parameter, and the string 'workspaces' as the second parameter 

If not, it will return a a L<Paws::Prometheus::ListWorkspacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


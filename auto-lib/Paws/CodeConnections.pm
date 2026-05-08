package Paws::CodeConnections;
  use Moose;
  sub service { 'codeconnections' }
  sub signing_name { 'codeconnections' }
  sub version { '2023-12-01' }
  sub target_prefix { 'com.amazonaws.codeconnections.CodeConnections_20231201' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::CreateHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRepositoryLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::CreateRepositoryLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSyncConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::CreateSyncConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::DeleteHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRepositoryLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::DeleteRepositoryLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSyncConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::DeleteSyncConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositoryLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetRepositoryLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRepositorySyncStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetRepositorySyncStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourceSyncStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetResourceSyncStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSyncBlockerSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetSyncBlockerSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSyncConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::GetSyncConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositoryLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListRepositoryLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRepositorySyncDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListRepositorySyncDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSyncConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListSyncConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::UpdateHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRepositoryLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::UpdateRepositoryLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSyncBlocker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::UpdateSyncBlocker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSyncConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeConnections::UpdateSyncConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConnection CreateHost CreateRepositoryLink CreateSyncConfiguration DeleteConnection DeleteHost DeleteRepositoryLink DeleteSyncConfiguration GetConnection GetHost GetRepositoryLink GetRepositorySyncStatus GetResourceSyncStatus GetSyncBlockerSummary GetSyncConfiguration ListConnections ListHosts ListRepositoryLinks ListRepositorySyncDefinitions ListSyncConfigurations ListTagsForResource TagResource UntagResource UpdateHost UpdateRepositoryLink UpdateSyncBlocker UpdateSyncConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections - Perl Interface to AWS AWS CodeConnections

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeConnections');
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

AWS CodeConnections

This Amazon Web Services CodeConnections API Reference provides
descriptions and usage examples of the operations and data types for
the Amazon Web Services CodeConnections API. You can use the
connections API to work with connections and installations.

I<Connections> are configurations that you use to connect Amazon Web
Services resources to external code repositories. Each connection is a
resource that can be given to services such as CodePipeline to connect
to a third-party repository such as Bitbucket. For example, you can add
the connection in CodePipeline so that it triggers your pipeline when a
code change is made to your third-party code repository. Each
connection is named and associated with a unique ARN that is used to
reference the connection.

When you create a connection, the console initiates a third-party
connection handshake. I<Installations> are the apps that are used to
conduct this handshake. For example, the installation for the Bitbucket
provider type is the Bitbucket app. When you create a connection, you
can choose an existing installation or create one.

When you want to create a connection to an installed provider type such
as GitHub Enterprise Server, you create a I<host> for your connections.

You can work with connections by calling:

=over

=item *

CreateConnection, which creates a uniquely named connection that can be
referenced by services such as CodePipeline.

=item *

DeleteConnection, which deletes the specified connection.

=item *

GetConnection, which returns information about the connection,
including the connection status.

=item *

ListConnections, which lists the connections associated with your
account.

=back

You can work with hosts by calling:

=over

=item *

CreateHost, which creates a host that represents the infrastructure
where your provider is installed.

=item *

DeleteHost, which deletes the specified host.

=item *

GetHost, which returns information about the host, including the setup
status.

=item *

ListHosts, which lists the hosts associated with your account.

=back

You can work with tags in Amazon Web Services CodeConnections by
calling the following:

=over

=item *

ListTagsForResource, which gets information about Amazon Web Services
tags for a specified Amazon Resource Name (ARN) in Amazon Web Services
CodeConnections.

=item *

TagResource, which adds or updates tags for a resource in Amazon Web
Services CodeConnections.

=item *

UntagResource, which removes tags for a resource in Amazon Web Services
CodeConnections.

=back

For information about how to use Amazon Web Services CodeConnections,
see the Developer Tools User Guide
(https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections-2023-12-01>


=head1 METHODS

=head2 CreateConnection

=over

=item ConnectionName => Str

=item [HostArn => Str]

=item [ProviderType => Str]

=item [Tags => ArrayRef[L<Paws::CodeConnections::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeConnections::CreateConnection>

Returns: a L<Paws::CodeConnections::CreateConnectionOutput> instance

Creates a connection that can then be given to other Amazon Web
Services services like CodePipeline so that it can access third-party
code repositories. The connection is in pending status until the
third-party connection handshake is completed from the console.


=head2 CreateHost

=over

=item Name => Str

=item ProviderEndpoint => Str

=item ProviderType => Str

=item [Tags => ArrayRef[L<Paws::CodeConnections::Tag>]]

=item [VpcConfiguration => L<Paws::CodeConnections::VpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::CodeConnections::CreateHost>

Returns: a L<Paws::CodeConnections::CreateHostOutput> instance

Creates a resource that represents the infrastructure where a
third-party provider is installed. The host is used when you create
connections to an installed third-party provider type, such as GitHub
Enterprise Server. You create one host for all connections to that
provider.

A host created through the CLI or the SDK is in `PENDING` status by
default. You can make its status `AVAILABLE` by setting up the host in
the console.


=head2 CreateRepositoryLink

=over

=item ConnectionArn => Str

=item OwnerId => Str

=item RepositoryName => Str

=item [EncryptionKeyArn => Str]

=item [Tags => ArrayRef[L<Paws::CodeConnections::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeConnections::CreateRepositoryLink>

Returns: a L<Paws::CodeConnections::CreateRepositoryLinkOutput> instance

Creates a link to a specified external Git repository. A repository
link allows Git sync to monitor and sync changes to files in a
specified Git repository.


=head2 CreateSyncConfiguration

=over

=item Branch => Str

=item ConfigFile => Str

=item RepositoryLinkId => Str

=item ResourceName => Str

=item RoleArn => Str

=item SyncType => Str

=item [PublishDeploymentStatus => Str]

=item [PullRequestComment => Str]

=item [TriggerResourceUpdateOn => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::CreateSyncConfiguration>

Returns: a L<Paws::CodeConnections::CreateSyncConfigurationOutput> instance

Creates a sync configuration which allows Amazon Web Services to sync
content from a Git repository to update a specified Amazon Web Services
resource. Parameters for the sync configuration are determined by the
sync type.


=head2 DeleteConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::DeleteConnection>

Returns: a L<Paws::CodeConnections::DeleteConnectionOutput> instance

The connection to be deleted.


=head2 DeleteHost

=over

=item HostArn => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::DeleteHost>

Returns: a L<Paws::CodeConnections::DeleteHostOutput> instance

The host to be deleted. Before you delete a host, all connections
associated to the host must be deleted.

A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
VPC_CONFIG_DELETING state.


=head2 DeleteRepositoryLink

=over

=item RepositoryLinkId => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::DeleteRepositoryLink>

Returns: a L<Paws::CodeConnections::DeleteRepositoryLinkOutput> instance

Deletes the association between your connection and a specified
external Git repository.


=head2 DeleteSyncConfiguration

=over

=item ResourceName => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::DeleteSyncConfiguration>

Returns: a L<Paws::CodeConnections::DeleteSyncConfigurationOutput> instance

Deletes the sync configuration for a specified repository and
connection.


=head2 GetConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetConnection>

Returns: a L<Paws::CodeConnections::GetConnectionOutput> instance

Returns the connection ARN and details such as status, owner, and
provider type.


=head2 GetHost

=over

=item HostArn => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetHost>

Returns: a L<Paws::CodeConnections::GetHostOutput> instance

Returns the host ARN and details such as status, provider type,
endpoint, and, if applicable, the VPC configuration.


=head2 GetRepositoryLink

=over

=item RepositoryLinkId => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetRepositoryLink>

Returns: a L<Paws::CodeConnections::GetRepositoryLinkOutput> instance

Returns details about a repository link. A repository link allows Git
sync to monitor and sync changes from files in a specified Git
repository.


=head2 GetRepositorySyncStatus

=over

=item Branch => Str

=item RepositoryLinkId => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetRepositorySyncStatus>

Returns: a L<Paws::CodeConnections::GetRepositorySyncStatusOutput> instance

Returns details about the sync status for a repository. A repository
sync uses Git sync to push and pull changes from your remote
repository.


=head2 GetResourceSyncStatus

=over

=item ResourceName => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetResourceSyncStatus>

Returns: a L<Paws::CodeConnections::GetResourceSyncStatusOutput> instance

Returns the status of the sync with the Git repository for a specific
Amazon Web Services resource.


=head2 GetSyncBlockerSummary

=over

=item ResourceName => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetSyncBlockerSummary>

Returns: a L<Paws::CodeConnections::GetSyncBlockerSummaryOutput> instance

Returns a list of the most recent sync blockers.


=head2 GetSyncConfiguration

=over

=item ResourceName => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::GetSyncConfiguration>

Returns: a L<Paws::CodeConnections::GetSyncConfigurationOutput> instance

Returns details about a sync configuration, including the sync type and
resource name. A sync configuration allows the configuration to sync
(push and pull) changes from the remote repository for a specified
branch in a Git repository.


=head2 ListConnections

=over

=item [HostArnFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProviderTypeFilter => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListConnections>

Returns: a L<Paws::CodeConnections::ListConnectionsOutput> instance

Lists the connections associated with your account.


=head2 ListHosts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListHosts>

Returns: a L<Paws::CodeConnections::ListHostsOutput> instance

Lists the hosts associated with your account.


=head2 ListRepositoryLinks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListRepositoryLinks>

Returns: a L<Paws::CodeConnections::ListRepositoryLinksOutput> instance

Lists the repository links created for connections in your account.


=head2 ListRepositorySyncDefinitions

=over

=item RepositoryLinkId => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListRepositorySyncDefinitions>

Returns: a L<Paws::CodeConnections::ListRepositorySyncDefinitionsOutput> instance

Lists the repository sync definitions for repository links in your
account.


=head2 ListSyncConfigurations

=over

=item RepositoryLinkId => Str

=item SyncType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListSyncConfigurations>

Returns: a L<Paws::CodeConnections::ListSyncConfigurationsOutput> instance

Returns a list of sync configurations for a specified repository.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::ListTagsForResource>

Returns: a L<Paws::CodeConnections::ListTagsForResourceOutput> instance

Gets the set of key-value pairs (metadata) that are used to manage the
resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::CodeConnections::Tag>]


=back

Each argument is described in detail in: L<Paws::CodeConnections::TagResource>

Returns: a L<Paws::CodeConnections::TagResourceOutput> instance

Adds to or modifies the tags of the given resource. Tags are metadata
that can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeConnections::UntagResource>

Returns: a L<Paws::CodeConnections::UntagResourceOutput> instance

Removes tags from an Amazon Web Services resource.


=head2 UpdateHost

=over

=item HostArn => Str

=item [ProviderEndpoint => Str]

=item [VpcConfiguration => L<Paws::CodeConnections::VpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::CodeConnections::UpdateHost>

Returns: a L<Paws::CodeConnections::UpdateHostOutput> instance

Updates a specified host with the provided configurations.


=head2 UpdateRepositoryLink

=over

=item RepositoryLinkId => Str

=item [ConnectionArn => Str]

=item [EncryptionKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::UpdateRepositoryLink>

Returns: a L<Paws::CodeConnections::UpdateRepositoryLinkOutput> instance

Updates the association between your connection and a specified
external Git repository. A repository link allows Git sync to monitor
and sync changes to files in a specified Git repository.


=head2 UpdateSyncBlocker

=over

=item Id => Str

=item ResolvedReason => Str

=item ResourceName => Str

=item SyncType => Str


=back

Each argument is described in detail in: L<Paws::CodeConnections::UpdateSyncBlocker>

Returns: a L<Paws::CodeConnections::UpdateSyncBlockerOutput> instance

Allows you to update the status of a sync blocker, resolving the
blocker and allowing syncing to continue.


=head2 UpdateSyncConfiguration

=over

=item ResourceName => Str

=item SyncType => Str

=item [Branch => Str]

=item [ConfigFile => Str]

=item [PublishDeploymentStatus => Str]

=item [PullRequestComment => Str]

=item [RepositoryLinkId => Str]

=item [RoleArn => Str]

=item [TriggerResourceUpdateOn => Str]


=back

Each argument is described in detail in: L<Paws::CodeConnections::UpdateSyncConfiguration>

Returns: a L<Paws::CodeConnections::UpdateSyncConfigurationOutput> instance

Updates the sync configuration for your connection and a specified
external Git repository.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


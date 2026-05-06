package Paws::Finspace;
  use Moose;
  sub service { 'finspace' }
  sub signing_name { 'finspace' }
  sub version { '2021-03-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxDataview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxDataview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKxVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateKxVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxClusterNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxClusterNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxDataview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxDataview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKxVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteKxVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxConnectionString {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxConnectionString', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxDataview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxDataview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxScalingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxScalingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKxVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetKxVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxChangesets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxChangesets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxClusterNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxClusterNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxDataviews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxDataviews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxScalingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxScalingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKxVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListKxVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxClusterCodeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxClusterCodeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxClusterDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxClusterDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxDataview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxDataview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxEnvironmentNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxEnvironmentNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKxVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateKxVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllKxEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKxEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListKxEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListKxEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }


  sub operations { qw/CreateEnvironment CreateKxChangeset CreateKxCluster CreateKxDatabase CreateKxDataview CreateKxEnvironment CreateKxScalingGroup CreateKxUser CreateKxVolume DeleteEnvironment DeleteKxCluster DeleteKxClusterNode DeleteKxDatabase DeleteKxDataview DeleteKxEnvironment DeleteKxScalingGroup DeleteKxUser DeleteKxVolume GetEnvironment GetKxChangeset GetKxCluster GetKxConnectionString GetKxDatabase GetKxDataview GetKxEnvironment GetKxScalingGroup GetKxUser GetKxVolume ListEnvironments ListKxChangesets ListKxClusterNodes ListKxClusters ListKxDatabases ListKxDataviews ListKxEnvironments ListKxScalingGroups ListKxUsers ListKxVolumes ListTagsForResource TagResource UntagResource UpdateEnvironment UpdateKxClusterCodeConfiguration UpdateKxClusterDatabases UpdateKxDatabase UpdateKxDataview UpdateKxEnvironment UpdateKxEnvironmentNetwork UpdateKxUser UpdateKxVolume / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace - Perl Interface to AWS FinSpace User Environment Management service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Finspace');
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

The FinSpace management service provides the APIs for managing FinSpace
environments.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateEnvironment

=over

=item Name => Str

=item [DataBundles => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [FederationMode => Str]

=item [FederationParameters => L<Paws::Finspace::FederationParameters>]

=item [KmsKeyId => Str]

=item [SuperuserParameters => L<Paws::Finspace::SuperuserParameters>]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateEnvironment>

Returns: a L<Paws::Finspace::CreateEnvironmentResponse> instance

Create a new FinSpace environment.


=head2 CreateKxChangeset

=over

=item ChangeRequests => ArrayRef[L<Paws::Finspace::ChangeRequest>]

=item ClientToken => Str

=item DatabaseName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxChangeset>

Returns: a L<Paws::Finspace::CreateKxChangesetResponse> instance

Creates a changeset for a kdb database. A changeset allows you to add
and delete existing files by using an ordered list of change requests.


=head2 CreateKxCluster

=over

=item AzMode => Str

=item ClusterName => Str

=item ClusterType => Str

=item EnvironmentId => Str

=item ReleaseLabel => Str

=item VpcConfiguration => L<Paws::Finspace::VpcConfiguration>

=item [AutoScalingConfiguration => L<Paws::Finspace::AutoScalingConfiguration>]

=item [AvailabilityZoneId => Str]

=item [CacheStorageConfigurations => ArrayRef[L<Paws::Finspace::KxCacheStorageConfiguration>]]

=item [CapacityConfiguration => L<Paws::Finspace::CapacityConfiguration>]

=item [ClientToken => Str]

=item [ClusterDescription => Str]

=item [Code => L<Paws::Finspace::CodeConfiguration>]

=item [CommandLineArguments => ArrayRef[L<Paws::Finspace::KxCommandLineArgument>]]

=item [Databases => ArrayRef[L<Paws::Finspace::KxDatabaseConfiguration>]]

=item [ExecutionRole => Str]

=item [InitializationScript => Str]

=item [SavedownStorageConfiguration => L<Paws::Finspace::KxSavedownStorageConfiguration>]

=item [ScalingGroupConfiguration => L<Paws::Finspace::KxScalingGroupConfiguration>]

=item [Tags => L<Paws::Finspace::TagMap>]

=item [TickerplantLogConfiguration => L<Paws::Finspace::TickerplantLogConfiguration>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxCluster>

Returns: a L<Paws::Finspace::CreateKxClusterResponse> instance

Creates a new kdb cluster.


=head2 CreateKxDatabase

=over

=item ClientToken => Str

=item DatabaseName => Str

=item EnvironmentId => Str

=item [Description => Str]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxDatabase>

Returns: a L<Paws::Finspace::CreateKxDatabaseResponse> instance

Creates a new kdb database in the environment.


=head2 CreateKxDataview

=over

=item AzMode => Str

=item ClientToken => Str

=item DatabaseName => Str

=item DataviewName => Str

=item EnvironmentId => Str

=item [AutoUpdate => Bool]

=item [AvailabilityZoneId => Str]

=item [ChangesetId => Str]

=item [Description => Str]

=item [ReadWrite => Bool]

=item [SegmentConfigurations => ArrayRef[L<Paws::Finspace::KxDataviewSegmentConfiguration>]]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxDataview>

Returns: a L<Paws::Finspace::CreateKxDataviewResponse> instance

Creates a snapshot of kdb database with tiered storage capabilities and
a pre-warmed cache, ready for mounting on kdb clusters. Dataviews are
only available for clusters running on a scaling group. They are not
supported on dedicated clusters.


=head2 CreateKxEnvironment

=over

=item KmsKeyId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxEnvironment>

Returns: a L<Paws::Finspace::CreateKxEnvironmentResponse> instance

Creates a managed kdb environment for the account.


=head2 CreateKxScalingGroup

=over

=item AvailabilityZoneId => Str

=item ClientToken => Str

=item EnvironmentId => Str

=item HostType => Str

=item ScalingGroupName => Str

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxScalingGroup>

Returns: a L<Paws::Finspace::CreateKxScalingGroupResponse> instance

Creates a new scaling group.


=head2 CreateKxUser

=over

=item EnvironmentId => Str

=item IamRole => Str

=item UserName => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxUser>

Returns: a L<Paws::Finspace::CreateKxUserResponse> instance

Creates a user in FinSpace kdb environment with an associated IAM role.


=head2 CreateKxVolume

=over

=item AvailabilityZoneIds => ArrayRef[Str|Undef]

=item AzMode => Str

=item EnvironmentId => Str

=item VolumeName => Str

=item VolumeType => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Nas1Configuration => L<Paws::Finspace::KxNAS1Configuration>]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateKxVolume>

Returns: a L<Paws::Finspace::CreateKxVolumeResponse> instance

Creates a new volume with a specific amount of throughput and storage
capacity.


=head2 DeleteEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteEnvironment>

Returns: a L<Paws::Finspace::DeleteEnvironmentResponse> instance

Delete an FinSpace environment.


=head2 DeleteKxCluster

=over

=item ClusterName => Str

=item EnvironmentId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxCluster>

Returns: a L<Paws::Finspace::DeleteKxClusterResponse> instance

Deletes a kdb cluster.


=head2 DeleteKxClusterNode

=over

=item ClusterName => Str

=item EnvironmentId => Str

=item NodeId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxClusterNode>

Returns: a L<Paws::Finspace::DeleteKxClusterNodeResponse> instance

Deletes the specified nodes from a cluster.


=head2 DeleteKxDatabase

=over

=item ClientToken => Str

=item DatabaseName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxDatabase>

Returns: a L<Paws::Finspace::DeleteKxDatabaseResponse> instance

Deletes the specified database and all of its associated data. This
action is irreversible. You must copy any data out of the database
before deleting it if the data is to be retained.


=head2 DeleteKxDataview

=over

=item ClientToken => Str

=item DatabaseName => Str

=item DataviewName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxDataview>

Returns: a L<Paws::Finspace::DeleteKxDataviewResponse> instance

Deletes the specified dataview. Before deleting a dataview, make sure
that it is not in use by any cluster.


=head2 DeleteKxEnvironment

=over

=item EnvironmentId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxEnvironment>

Returns: a L<Paws::Finspace::DeleteKxEnvironmentResponse> instance

Deletes the kdb environment. This action is irreversible. Deleting a
kdb environment will remove all the associated data and any services
running in it.


=head2 DeleteKxScalingGroup

=over

=item EnvironmentId => Str

=item ScalingGroupName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxScalingGroup>

Returns: a L<Paws::Finspace::DeleteKxScalingGroupResponse> instance

Deletes the specified scaling group. This action is irreversible. You
cannot delete a scaling group until all the clusters running on it have
been deleted.


=head2 DeleteKxUser

=over

=item EnvironmentId => Str

=item UserName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxUser>

Returns: a L<Paws::Finspace::DeleteKxUserResponse> instance

Deletes a user in the specified kdb environment.


=head2 DeleteKxVolume

=over

=item EnvironmentId => Str

=item VolumeName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteKxVolume>

Returns: a L<Paws::Finspace::DeleteKxVolumeResponse> instance

Deletes a volume. You can only delete a volume if it's not attached to
a cluster or a dataview. When a volume is deleted, any data on the
volume is lost. This action is irreversible.


=head2 GetEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetEnvironment>

Returns: a L<Paws::Finspace::GetEnvironmentResponse> instance

Returns the FinSpace environment object.


=head2 GetKxChangeset

=over

=item ChangesetId => Str

=item DatabaseName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxChangeset>

Returns: a L<Paws::Finspace::GetKxChangesetResponse> instance

Returns information about a kdb changeset.


=head2 GetKxCluster

=over

=item ClusterName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxCluster>

Returns: a L<Paws::Finspace::GetKxClusterResponse> instance

Retrieves information about a kdb cluster.


=head2 GetKxConnectionString

=over

=item ClusterName => Str

=item EnvironmentId => Str

=item UserArn => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxConnectionString>

Returns: a L<Paws::Finspace::GetKxConnectionStringResponse> instance

Retrieves a connection string for a user to connect to a kdb cluster.
You must call this API using the same role that you have defined while
creating a user.


=head2 GetKxDatabase

=over

=item DatabaseName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxDatabase>

Returns: a L<Paws::Finspace::GetKxDatabaseResponse> instance

Returns database information for the specified environment ID.


=head2 GetKxDataview

=over

=item DatabaseName => Str

=item DataviewName => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxDataview>

Returns: a L<Paws::Finspace::GetKxDataviewResponse> instance

Retrieves details of the dataview.


=head2 GetKxEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxEnvironment>

Returns: a L<Paws::Finspace::GetKxEnvironmentResponse> instance

Retrieves all the information for the specified kdb environment.


=head2 GetKxScalingGroup

=over

=item EnvironmentId => Str

=item ScalingGroupName => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxScalingGroup>

Returns: a L<Paws::Finspace::GetKxScalingGroupResponse> instance

Retrieves details of a scaling group.


=head2 GetKxUser

=over

=item EnvironmentId => Str

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxUser>

Returns: a L<Paws::Finspace::GetKxUserResponse> instance

Retrieves information about the specified kdb user.


=head2 GetKxVolume

=over

=item EnvironmentId => Str

=item VolumeName => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetKxVolume>

Returns: a L<Paws::Finspace::GetKxVolumeResponse> instance

Retrieves the information about the volume.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListEnvironments>

Returns: a L<Paws::Finspace::ListEnvironmentsResponse> instance

A list of all of your FinSpace environments.


=head2 ListKxChangesets

=over

=item DatabaseName => Str

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxChangesets>

Returns: a L<Paws::Finspace::ListKxChangesetsResponse> instance

Returns a list of all the changesets for a database.


=head2 ListKxClusterNodes

=over

=item ClusterName => Str

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxClusterNodes>

Returns: a L<Paws::Finspace::ListKxClusterNodesResponse> instance

Lists all the nodes in a kdb cluster.


=head2 ListKxClusters

=over

=item EnvironmentId => Str

=item [ClusterType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxClusters>

Returns: a L<Paws::Finspace::ListKxClustersResponse> instance

Returns a list of clusters.


=head2 ListKxDatabases

=over

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxDatabases>

Returns: a L<Paws::Finspace::ListKxDatabasesResponse> instance

Returns a list of all the databases in the kdb environment.


=head2 ListKxDataviews

=over

=item DatabaseName => Str

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxDataviews>

Returns: a L<Paws::Finspace::ListKxDataviewsResponse> instance

Returns a list of all the dataviews in the database.


=head2 ListKxEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxEnvironments>

Returns: a L<Paws::Finspace::ListKxEnvironmentsResponse> instance

Returns a list of kdb environments created in an account.


=head2 ListKxScalingGroups

=over

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxScalingGroups>

Returns: a L<Paws::Finspace::ListKxScalingGroupsResponse> instance

Returns a list of scaling groups in a kdb environment.


=head2 ListKxUsers

=over

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxUsers>

Returns: a L<Paws::Finspace::ListKxUsersResponse> instance

Lists all the users in a kdb environment.


=head2 ListKxVolumes

=over

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VolumeType => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListKxVolumes>

Returns: a L<Paws::Finspace::ListKxVolumesResponse> instance

Lists all the volumes in a kdb environment.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Finspace::ListTagsForResource>

Returns: a L<Paws::Finspace::ListTagsForResourceResponse> instance

A list of all tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Finspace::TagMap>


=back

Each argument is described in detail in: L<Paws::Finspace::TagResource>

Returns: a L<Paws::Finspace::TagResourceResponse> instance

Adds metadata tags to a FinSpace resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Finspace::UntagResource>

Returns: a L<Paws::Finspace::UntagResourceResponse> instance

Removes metadata tags from a FinSpace resource.


=head2 UpdateEnvironment

=over

=item EnvironmentId => Str

=item [Description => Str]

=item [FederationMode => Str]

=item [FederationParameters => L<Paws::Finspace::FederationParameters>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateEnvironment>

Returns: a L<Paws::Finspace::UpdateEnvironmentResponse> instance

Update your FinSpace environment.


=head2 UpdateKxClusterCodeConfiguration

=over

=item ClusterName => Str

=item Code => L<Paws::Finspace::CodeConfiguration>

=item EnvironmentId => Str

=item [ClientToken => Str]

=item [CommandLineArguments => ArrayRef[L<Paws::Finspace::KxCommandLineArgument>]]

=item [DeploymentConfiguration => L<Paws::Finspace::KxClusterCodeDeploymentConfiguration>]

=item [InitializationScript => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxClusterCodeConfiguration>

Returns: a L<Paws::Finspace::UpdateKxClusterCodeConfigurationResponse> instance

Allows you to update code configuration on a running cluster. By using
this API you can update the code, the initialization script path, and
the command line arguments for a specific cluster. The configuration
that you want to update will override any existing configurations on
the cluster.


=head2 UpdateKxClusterDatabases

=over

=item ClusterName => Str

=item Databases => ArrayRef[L<Paws::Finspace::KxDatabaseConfiguration>]

=item EnvironmentId => Str

=item [ClientToken => Str]

=item [DeploymentConfiguration => L<Paws::Finspace::KxDeploymentConfiguration>]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxClusterDatabases>

Returns: a L<Paws::Finspace::UpdateKxClusterDatabasesResponse> instance

Updates the databases mounted on a kdb cluster, which includes the
C<changesetId> and all the dbPaths to be cached. This API does not
allow you to change a database name or add a database if you created a
cluster without one.

Using this API you can point a cluster to a different changeset and
modify a list of partitions being cached.


=head2 UpdateKxDatabase

=over

=item ClientToken => Str

=item DatabaseName => Str

=item EnvironmentId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxDatabase>

Returns: a L<Paws::Finspace::UpdateKxDatabaseResponse> instance

Updates information for the given kdb database.


=head2 UpdateKxDataview

=over

=item ClientToken => Str

=item DatabaseName => Str

=item DataviewName => Str

=item EnvironmentId => Str

=item [ChangesetId => Str]

=item [Description => Str]

=item [SegmentConfigurations => ArrayRef[L<Paws::Finspace::KxDataviewSegmentConfiguration>]]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxDataview>

Returns: a L<Paws::Finspace::UpdateKxDataviewResponse> instance

Updates the specified dataview. The dataviews get automatically updated
when any new changesets are ingested. Each update of the dataview
creates a new version, including changeset details and cache
configurations


=head2 UpdateKxEnvironment

=over

=item EnvironmentId => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxEnvironment>

Returns: a L<Paws::Finspace::UpdateKxEnvironmentResponse> instance

Updates information for the given kdb environment.


=head2 UpdateKxEnvironmentNetwork

=over

=item EnvironmentId => Str

=item [ClientToken => Str]

=item [CustomDNSConfiguration => ArrayRef[L<Paws::Finspace::CustomDNSServer>]]

=item [TransitGatewayConfiguration => L<Paws::Finspace::TransitGatewayConfiguration>]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxEnvironmentNetwork>

Returns: a L<Paws::Finspace::UpdateKxEnvironmentNetworkResponse> instance

Updates environment network to connect to your internal network by
using a transit gateway. This API supports request to create a transit
gateway attachment from FinSpace VPC to your transit gateway ID and
create a custom Route-53 outbound resolvers.

Once you send a request to update a network, you cannot change it
again. Network update might require termination of any clusters that
are running in the existing network.


=head2 UpdateKxUser

=over

=item EnvironmentId => Str

=item IamRole => Str

=item UserName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxUser>

Returns: a L<Paws::Finspace::UpdateKxUserResponse> instance

Updates the user details. You can only update the IAM role associated
with a user.


=head2 UpdateKxVolume

=over

=item EnvironmentId => Str

=item VolumeName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Nas1Configuration => L<Paws::Finspace::KxNAS1Configuration>]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateKxVolume>

Returns: a L<Paws::Finspace::UpdateKxVolumeResponse> instance

Updates the throughput or capacity of a volume. During the update
process, the filesystem might be unavailable for a few minutes. You can
retry any operations after the update is complete.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllKxEnvironments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKxEnvironments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::Finspace::ListKxEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


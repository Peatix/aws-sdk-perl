package Paws::DocDBElastic;
  use Moose;
  sub service { 'docdb-elastic' }
  sub signing_name { 'docdb-elastic' }
  sub version { '2022-11-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ApplyPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::ApplyPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::CopyClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::CreateClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::DeleteClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::GetCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClusterSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::GetClusterSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPendingMaintenanceAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::GetPendingMaintenanceAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::ListClusterSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPendingMaintenanceActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::ListPendingMaintenanceActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreClusterFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::RestoreClusterFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::StartCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::StopCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DocDBElastic::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusters }, @{ $next_result->clusters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusters') foreach (@{ $result->clusters });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusters') foreach (@{ $result->clusters });
    }

    return undef
  }
  sub ListAllClusterSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusterSnapshots(@_, nextToken => $next_result->nextToken);
        push @{ $result->snapshots }, @{ $next_result->snapshots };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'snapshots') foreach (@{ $result->snapshots });
        $result = $self->ListClusterSnapshots(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'snapshots') foreach (@{ $result->snapshots });
    }

    return undef
  }
  sub ListAllPendingMaintenanceActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPendingMaintenanceActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPendingMaintenanceActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->resourcePendingMaintenanceActions }, @{ $next_result->resourcePendingMaintenanceActions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'resourcePendingMaintenanceActions') foreach (@{ $result->resourcePendingMaintenanceActions });
        $result = $self->ListPendingMaintenanceActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'resourcePendingMaintenanceActions') foreach (@{ $result->resourcePendingMaintenanceActions });
    }

    return undef
  }


  sub operations { qw/ApplyPendingMaintenanceAction CopyClusterSnapshot CreateCluster CreateClusterSnapshot DeleteCluster DeleteClusterSnapshot GetCluster GetClusterSnapshot GetPendingMaintenanceAction ListClusters ListClusterSnapshots ListPendingMaintenanceActions ListTagsForResource RestoreClusterFromSnapshot StartCluster StopCluster TagResource UntagResource UpdateCluster / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic - Perl Interface to AWS Amazon DocumentDB Elastic Clusters

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DocDBElastic');
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

Amazon DocumentDB elastic clusters

Amazon DocumentDB elastic-clusters support workloads with millions of
reads/writes per second and petabytes of storage capacity. Amazon
DocumentDB elastic clusters also simplify how developers interact with
Amazon DocumentDB elastic-clusters by eliminating the need to choose,
manage or upgrade instances.

Amazon DocumentDB elastic-clusters were created to:

=over

=item *

provide a solution for customers looking for a database that provides
virtually limitless scale with rich query capabilities and MongoDB API
compatibility.

=item *

give customers higher connection limits, and to reduce downtime from
patching.

=item *

continue investing in a cloud-native, elastic, and class leading
architecture for JSON workloads.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 ApplyPendingMaintenanceAction

=over

=item ApplyAction => Str

=item OptInType => Str

=item ResourceArn => Str

=item [ApplyOn => Str]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::ApplyPendingMaintenanceAction>

Returns: a L<Paws::DocDBElastic::ApplyPendingMaintenanceActionOutput> instance

The type of pending maintenance action to be applied to the resource.


=head2 CopyClusterSnapshot

=over

=item SnapshotArn => Str

=item TargetSnapshotName => Str

=item [CopyTags => Bool]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::DocDBElastic::TagMap>]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::CopyClusterSnapshot>

Returns: a L<Paws::DocDBElastic::CopyClusterSnapshotOutput> instance

Copies a snapshot of an elastic cluster.


=head2 CreateCluster

=over

=item AdminUserName => Str

=item AdminUserPassword => Str

=item AuthType => Str

=item ClusterName => Str

=item ShardCapacity => Int

=item ShardCount => Int

=item [BackupRetentionPeriod => Int]

=item [ClientToken => Str]

=item [KmsKeyId => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ShardInstanceCount => Int]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::DocDBElastic::TagMap>]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::CreateCluster>

Returns: a L<Paws::DocDBElastic::CreateClusterOutput> instance

Creates a new Amazon DocumentDB elastic cluster and returns its cluster
structure.


=head2 CreateClusterSnapshot

=over

=item ClusterArn => Str

=item SnapshotName => Str

=item [Tags => L<Paws::DocDBElastic::TagMap>]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::CreateClusterSnapshot>

Returns: a L<Paws::DocDBElastic::CreateClusterSnapshotOutput> instance

Creates a snapshot of an elastic cluster.


=head2 DeleteCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::DeleteCluster>

Returns: a L<Paws::DocDBElastic::DeleteClusterOutput> instance

Delete an elastic cluster.


=head2 DeleteClusterSnapshot

=over

=item SnapshotArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::DeleteClusterSnapshot>

Returns: a L<Paws::DocDBElastic::DeleteClusterSnapshotOutput> instance

Delete an elastic cluster snapshot.


=head2 GetCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::GetCluster>

Returns: a L<Paws::DocDBElastic::GetClusterOutput> instance

Returns information about a specific elastic cluster.


=head2 GetClusterSnapshot

=over

=item SnapshotArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::GetClusterSnapshot>

Returns: a L<Paws::DocDBElastic::GetClusterSnapshotOutput> instance

Returns information about a specific elastic cluster snapshot


=head2 GetPendingMaintenanceAction

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::GetPendingMaintenanceAction>

Returns: a L<Paws::DocDBElastic::GetPendingMaintenanceActionOutput> instance

Retrieves all maintenance actions that are pending.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::ListClusters>

Returns: a L<Paws::DocDBElastic::ListClustersOutput> instance

Returns information about provisioned Amazon DocumentDB elastic
clusters.


=head2 ListClusterSnapshots

=over

=item [ClusterArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SnapshotType => Str]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::ListClusterSnapshots>

Returns: a L<Paws::DocDBElastic::ListClusterSnapshotsOutput> instance

Returns information about snapshots for a specified elastic cluster.


=head2 ListPendingMaintenanceActions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::ListPendingMaintenanceActions>

Returns: a L<Paws::DocDBElastic::ListPendingMaintenanceActionsOutput> instance

Retrieves a list of all maintenance actions that are pending.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::ListTagsForResource>

Returns: a L<Paws::DocDBElastic::ListTagsForResourceResponse> instance

Lists all tags on a elastic cluster resource


=head2 RestoreClusterFromSnapshot

=over

=item ClusterName => Str

=item SnapshotArn => Str

=item [KmsKeyId => Str]

=item [ShardCapacity => Int]

=item [ShardInstanceCount => Int]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::DocDBElastic::TagMap>]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::RestoreClusterFromSnapshot>

Returns: a L<Paws::DocDBElastic::RestoreClusterFromSnapshotOutput> instance

Restores an elastic cluster from a snapshot.


=head2 StartCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::StartCluster>

Returns: a L<Paws::DocDBElastic::StartClusterOutput> instance

Restarts the stopped elastic cluster that is specified by
C<clusterARN>.


=head2 StopCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::DocDBElastic::StopCluster>

Returns: a L<Paws::DocDBElastic::StopClusterOutput> instance

Stops the running elastic cluster that is specified by C<clusterArn>.
The elastic cluster must be in the I<available> state.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::DocDBElastic::TagMap>


=back

Each argument is described in detail in: L<Paws::DocDBElastic::TagResource>

Returns: a L<Paws::DocDBElastic::TagResourceResponse> instance

Adds metadata tags to an elastic cluster resource


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::UntagResource>

Returns: a L<Paws::DocDBElastic::UntagResourceResponse> instance

Removes metadata tags from an elastic cluster resource


=head2 UpdateCluster

=over

=item ClusterArn => Str

=item [AdminUserPassword => Str]

=item [AuthType => Str]

=item [BackupRetentionPeriod => Int]

=item [ClientToken => Str]

=item [PreferredBackupWindow => Str]

=item [PreferredMaintenanceWindow => Str]

=item [ShardCapacity => Int]

=item [ShardCount => Int]

=item [ShardInstanceCount => Int]

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DocDBElastic::UpdateCluster>

Returns: a L<Paws::DocDBElastic::UpdateClusterOutput> instance

Modifies an elastic cluster. This includes updating
admin-username/password, upgrading the API version, and setting up a
backup window and maintenance window




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusters, passing the object as the first parameter, and the string 'clusters' as the second parameter 

If not, it will return a a L<Paws::DocDBElastic::ListClustersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusterSnapshots(sub { },[ClusterArn => Str, MaxResults => Int, NextToken => Str, SnapshotType => Str])

=head2 ListAllClusterSnapshots([ClusterArn => Str, MaxResults => Int, NextToken => Str, SnapshotType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - snapshots, passing the object as the first parameter, and the string 'snapshots' as the second parameter 

If not, it will return a a L<Paws::DocDBElastic::ListClusterSnapshotsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPendingMaintenanceActions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPendingMaintenanceActions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - resourcePendingMaintenanceActions, passing the object as the first parameter, and the string 'resourcePendingMaintenanceActions' as the second parameter 

If not, it will return a a L<Paws::DocDBElastic::ListPendingMaintenanceActionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


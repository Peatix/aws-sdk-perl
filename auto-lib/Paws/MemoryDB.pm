package Paws::MemoryDB;
  use Moose;
  sub service { 'memory-db' }
  sub signing_name { 'memorydb' }
  sub version { '2021-01-01' }
  sub target_prefix { 'AmazonMemoryDB' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchUpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::BatchUpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMultiRegionCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateMultiRegionCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMultiRegionCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteMultiRegionCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeACLs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeACLs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEngineVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeEngineVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMultiRegionClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeMultiRegionClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeReservedNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedNodesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeReservedNodesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeServiceUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::DescribeUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FailoverShard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::FailoverShard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAllowedMultiRegionClusterUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::ListAllowedMultiRegionClusterUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAllowedNodeTypeUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::ListAllowedNodeTypeUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedNodesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::PurchaseReservedNodesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::ResetParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateACL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateACL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMultiRegionCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateMultiRegionCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MemoryDB::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllACLs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeACLs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeACLs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ACLs }, @{ $next_result->ACLs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ACLs') foreach (@{ $result->ACLs });
        $result = $self->DescribeACLs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ACLs') foreach (@{ $result->ACLs });
    }

    return undef
  }
  sub DescribeAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->DescribeClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub DescribeAllEngineVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEngineVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEngineVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->EngineVersions }, @{ $next_result->EngineVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EngineVersions') foreach (@{ $result->EngineVersions });
        $result = $self->DescribeEngineVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EngineVersions') foreach (@{ $result->EngineVersions });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllMultiRegionClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMultiRegionClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMultiRegionClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->MultiRegionClusters }, @{ $next_result->MultiRegionClusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MultiRegionClusters') foreach (@{ $result->MultiRegionClusters });
        $result = $self->DescribeMultiRegionClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MultiRegionClusters') foreach (@{ $result->MultiRegionClusters });
    }

    return undef
  }
  sub DescribeAllParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeParameterGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->ParameterGroups }, @{ $next_result->ParameterGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
        $result = $self->DescribeParameterGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
    }

    return undef
  }
  sub DescribeAllParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeParameters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeParameters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllReservedNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedNodes(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedNodes }, @{ $next_result->ReservedNodes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedNodes') foreach (@{ $result->ReservedNodes });
        $result = $self->DescribeReservedNodes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedNodes') foreach (@{ $result->ReservedNodes });
    }

    return undef
  }
  sub DescribeAllReservedNodesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedNodesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedNodesOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedNodesOfferings }, @{ $next_result->ReservedNodesOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedNodesOfferings') foreach (@{ $result->ReservedNodesOfferings });
        $result = $self->DescribeReservedNodesOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedNodesOfferings') foreach (@{ $result->ReservedNodesOfferings });
    }

    return undef
  }
  sub DescribeAllServiceUpdates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeServiceUpdates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeServiceUpdates(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceUpdates }, @{ $next_result->ServiceUpdates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceUpdates') foreach (@{ $result->ServiceUpdates });
        $result = $self->DescribeServiceUpdates(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceUpdates') foreach (@{ $result->ServiceUpdates });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSubnetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->SubnetGroups }, @{ $next_result->SubnetGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SubnetGroups') foreach (@{ $result->SubnetGroups });
        $result = $self->DescribeSubnetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SubnetGroups') foreach (@{ $result->SubnetGroups });
    }

    return undef
  }
  sub DescribeAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->DescribeUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/BatchUpdateCluster CopySnapshot CreateACL CreateCluster CreateMultiRegionCluster CreateParameterGroup CreateSnapshot CreateSubnetGroup CreateUser DeleteACL DeleteCluster DeleteMultiRegionCluster DeleteParameterGroup DeleteSnapshot DeleteSubnetGroup DeleteUser DescribeACLs DescribeClusters DescribeEngineVersions DescribeEvents DescribeMultiRegionClusters DescribeParameterGroups DescribeParameters DescribeReservedNodes DescribeReservedNodesOfferings DescribeServiceUpdates DescribeSnapshots DescribeSubnetGroups DescribeUsers FailoverShard ListAllowedMultiRegionClusterUpdates ListAllowedNodeTypeUpdates ListTags PurchaseReservedNodesOffering ResetParameterGroup TagResource UntagResource UpdateACL UpdateCluster UpdateMultiRegionCluster UpdateParameterGroup UpdateSubnetGroup UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB - Perl Interface to AWS Amazon MemoryDB

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MemoryDB');
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

MemoryDB is a fully managed, Redis OSS-compatible, in-memory database
that delivers ultra-fast performance and Multi-AZ durability for modern
applications built using microservices architectures. MemoryDB stores
the entire database in-memory, enabling low latency and high throughput
data access. It is compatible with Redis OSS, a popular open source
data store, enabling you to leverage Redis OSSE<rsquo> flexible and
friendly data structures, APIs, and commands.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchUpdateCluster

=over

=item ClusterNames => ArrayRef[Str|Undef]

=item [ServiceUpdate => L<Paws::MemoryDB::ServiceUpdateRequest>]


=back

Each argument is described in detail in: L<Paws::MemoryDB::BatchUpdateCluster>

Returns: a L<Paws::MemoryDB::BatchUpdateClusterResponse> instance

Apply the service update to a list of clusters supplied. For more
information on service updates and applying them, see Applying the
service updates
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates).


=head2 CopySnapshot

=over

=item SourceSnapshotName => Str

=item TargetSnapshotName => Str

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]

=item [TargetBucket => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CopySnapshot>

Returns: a L<Paws::MemoryDB::CopySnapshotResponse> instance

Makes a copy of an existing snapshot.


=head2 CreateACL

=over

=item ACLName => Str

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]

=item [UserNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateACL>

Returns: a L<Paws::MemoryDB::CreateACLResponse> instance

Creates an Access Control List. For more information, see
Authenticating users with Access Contol Lists (ACLs)
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).


=head2 CreateCluster

=over

=item ACLName => Str

=item ClusterName => Str

=item NodeType => Str

=item [AutoMinorVersionUpgrade => Bool]

=item [DataTiering => Bool]

=item [Description => Str]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [IpDiscovery => Str]

=item [KmsKeyId => Str]

=item [MaintenanceWindow => Str]

=item [MultiRegionClusterName => Str]

=item [NetworkType => Str]

=item [NumReplicasPerShard => Int]

=item [NumShards => Int]

=item [ParameterGroupName => Str]

=item [Port => Int]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SnapshotArns => ArrayRef[Str|Undef]]

=item [SnapshotName => Str]

=item [SnapshotRetentionLimit => Int]

=item [SnapshotWindow => Str]

=item [SnsTopicArn => Str]

=item [SubnetGroupName => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]

=item [TLSEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateCluster>

Returns: a L<Paws::MemoryDB::CreateClusterResponse> instance

Creates a cluster. All nodes in the cluster run the same
protocol-compliant engine software.


=head2 CreateMultiRegionCluster

=over

=item MultiRegionClusterNameSuffix => Str

=item NodeType => Str

=item [Description => Str]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [MultiRegionParameterGroupName => Str]

=item [NumShards => Int]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]

=item [TLSEnabled => Bool]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateMultiRegionCluster>

Returns: a L<Paws::MemoryDB::CreateMultiRegionClusterResponse> instance

Creates a new multi-Region cluster.


=head2 CreateParameterGroup

=over

=item Family => Str

=item ParameterGroupName => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateParameterGroup>

Returns: a L<Paws::MemoryDB::CreateParameterGroupResponse> instance

Creates a new MemoryDB parameter group. A parameter group is a
collection of parameters and their values that are applied to all of
the nodes in any cluster. For more information, see Configuring engine
parameters using parameter groups
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html).


=head2 CreateSnapshot

=over

=item ClusterName => Str

=item SnapshotName => Str

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateSnapshot>

Returns: a L<Paws::MemoryDB::CreateSnapshotResponse> instance

Creates a copy of an entire cluster at a specific moment in time.


=head2 CreateSubnetGroup

=over

=item SubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateSubnetGroup>

Returns: a L<Paws::MemoryDB::CreateSubnetGroupResponse> instance

Creates a subnet group. A subnet group is a collection of subnets
(typically private) that you can designate for your clusters running in
an Amazon Virtual Private Cloud (VPC) environment. When you create a
cluster in an Amazon VPC, you must specify a subnet group. MemoryDB
uses that subnet group to choose a subnet and IP addresses within that
subnet to associate with your nodes. For more information, see Subnets
and subnet groups
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html).


=head2 CreateUser

=over

=item AccessString => Str

=item AuthenticationMode => L<Paws::MemoryDB::AuthenticationMode>

=item UserName => Str

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::CreateUser>

Returns: a L<Paws::MemoryDB::CreateUserResponse> instance

Creates a MemoryDB user. For more information, see Authenticating users
with Access Contol Lists (ACLs)
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).


=head2 DeleteACL

=over

=item ACLName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteACL>

Returns: a L<Paws::MemoryDB::DeleteACLResponse> instance

Deletes an Access Control List. The ACL must first be disassociated
from the cluster before it can be deleted. For more information, see
Authenticating users with Access Contol Lists (ACLs)
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).


=head2 DeleteCluster

=over

=item ClusterName => Str

=item [FinalSnapshotName => Str]

=item [MultiRegionClusterName => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteCluster>

Returns: a L<Paws::MemoryDB::DeleteClusterResponse> instance

Deletes a cluster. It also deletes all associated nodes and node
endpoints.

C<CreateSnapshot> permission is required to create a final snapshot.
Without this permission, the API call will fail with an C<Access
Denied> exception.


=head2 DeleteMultiRegionCluster

=over

=item MultiRegionClusterName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteMultiRegionCluster>

Returns: a L<Paws::MemoryDB::DeleteMultiRegionClusterResponse> instance

Deletes an existing multi-Region cluster.


=head2 DeleteParameterGroup

=over

=item ParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteParameterGroup>

Returns: a L<Paws::MemoryDB::DeleteParameterGroupResponse> instance

Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any clusters. You cannot delete the
default parameter groups in your account.


=head2 DeleteSnapshot

=over

=item SnapshotName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteSnapshot>

Returns: a L<Paws::MemoryDB::DeleteSnapshotResponse> instance

Deletes an existing snapshot. When you receive a successful response
from this operation, MemoryDB immediately begins deleting the snapshot;
you cannot cancel or revert this operation.


=head2 DeleteSubnetGroup

=over

=item SubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteSubnetGroup>

Returns: a L<Paws::MemoryDB::DeleteSubnetGroupResponse> instance

Deletes a subnet group. You cannot delete a default subnet group or one
that is associated with any clusters.


=head2 DeleteUser

=over

=item UserName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::DeleteUser>

Returns: a L<Paws::MemoryDB::DeleteUserResponse> instance

Deletes a user. The user will be removed from all ACLs and in turn
removed from all clusters.


=head2 DescribeACLs

=over

=item [ACLName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeACLs>

Returns: a L<Paws::MemoryDB::DescribeACLsResponse> instance

Returns a list of ACLs.


=head2 DescribeClusters

=over

=item [ClusterName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ShowShardDetails => Bool]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeClusters>

Returns: a L<Paws::MemoryDB::DescribeClustersResponse> instance

Returns information about all provisioned clusters if no cluster
identifier is specified, or about a specific cluster if a cluster name
is supplied.


=head2 DescribeEngineVersions

=over

=item [DefaultOnly => Bool]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParameterGroupFamily => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeEngineVersions>

Returns: a L<Paws::MemoryDB::DescribeEngineVersionsResponse> instance

Returns a list of the available Redis OSS engine versions.


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SourceName => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeEvents>

Returns: a L<Paws::MemoryDB::DescribeEventsResponse> instance

Returns events related to clusters, security groups, and parameter
groups. You can obtain events specific to a particular cluster,
security group, or parameter group by providing the name as a
parameter. By default, only the events occurring within the last hour
are returned; however, you can retrieve up to 14 days' worth of events
if necessary.


=head2 DescribeMultiRegionClusters

=over

=item [MaxResults => Int]

=item [MultiRegionClusterName => Str]

=item [NextToken => Str]

=item [ShowClusterDetails => Bool]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeMultiRegionClusters>

Returns: a L<Paws::MemoryDB::DescribeMultiRegionClustersResponse> instance

Returns details about one or more multi-Region clusters.


=head2 DescribeParameterGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParameterGroupName => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeParameterGroups>

Returns: a L<Paws::MemoryDB::DescribeParameterGroupsResponse> instance

Returns a list of parameter group descriptions. If a parameter group
name is specified, the list contains only the descriptions for that
group.


=head2 DescribeParameters

=over

=item ParameterGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeParameters>

Returns: a L<Paws::MemoryDB::DescribeParametersResponse> instance

Returns the detailed parameter list for a particular parameter group.


=head2 DescribeReservedNodes

=over

=item [Duration => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NodeType => Str]

=item [OfferingType => Str]

=item [ReservationId => Str]

=item [ReservedNodesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeReservedNodes>

Returns: a L<Paws::MemoryDB::DescribeReservedNodesResponse> instance

Returns information about reserved nodes for this account, or about a
specified reserved node.


=head2 DescribeReservedNodesOfferings

=over

=item [Duration => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NodeType => Str]

=item [OfferingType => Str]

=item [ReservedNodesOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeReservedNodesOfferings>

Returns: a L<Paws::MemoryDB::DescribeReservedNodesOfferingsResponse> instance

Lists available reserved node offerings.


=head2 DescribeServiceUpdates

=over

=item [ClusterNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceUpdateName => Str]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeServiceUpdates>

Returns: a L<Paws::MemoryDB::DescribeServiceUpdatesResponse> instance

Returns details of the service updates.


=head2 DescribeSnapshots

=over

=item [ClusterName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ShowDetail => Bool]

=item [SnapshotName => Str]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeSnapshots>

Returns: a L<Paws::MemoryDB::DescribeSnapshotsResponse> instance

Returns information about cluster snapshots. By default,
DescribeSnapshots lists all of your snapshots; it can optionally
describe a single snapshot, or just the snapshots associated with a
particular cluster.


=head2 DescribeSubnetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubnetGroupName => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeSubnetGroups>

Returns: a L<Paws::MemoryDB::DescribeSubnetGroupsResponse> instance

Returns a list of subnet group descriptions. If a subnet group name is
specified, the list contains only the description of that group.


=head2 DescribeUsers

=over

=item [Filters => ArrayRef[L<Paws::MemoryDB::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserName => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::DescribeUsers>

Returns: a L<Paws::MemoryDB::DescribeUsersResponse> instance

Returns a list of users.


=head2 FailoverShard

=over

=item ClusterName => Str

=item ShardName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::FailoverShard>

Returns: a L<Paws::MemoryDB::FailoverShardResponse> instance

Used to failover a shard. This API is designed for testing the behavior
of your application in case of MemoryDB failover. It is not designed to
be used as a production-level tool for initiating a failover to
overcome a problem you may have with the cluster. Moreover, in certain
conditions such as large scale operational events, Amazon may block
this API.


=head2 ListAllowedMultiRegionClusterUpdates

=over

=item MultiRegionClusterName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::ListAllowedMultiRegionClusterUpdates>

Returns: a L<Paws::MemoryDB::ListAllowedMultiRegionClusterUpdatesResponse> instance

Lists the allowed updates for a multi-Region cluster.


=head2 ListAllowedNodeTypeUpdates

=over

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::ListAllowedNodeTypeUpdates>

Returns: a L<Paws::MemoryDB::ListAllowedNodeTypeUpdatesResponse> instance

Lists all available node types that you can scale to from your
cluster's current node type. When you use the UpdateCluster operation
to scale your cluster, the value of the NodeType parameter must be one
of the node types returned by this operation.


=head2 ListTags

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MemoryDB::ListTags>

Returns: a L<Paws::MemoryDB::ListTagsResponse> instance

Lists all tags currently on a named resource. A tag is a key-value pair
where the key and value are case-sensitive. You can use tags to
categorize and track your MemoryDB resources. For more information, see
Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

When you add or remove tags from multi region clusters, you might not
immediately see the latest effective tags in the ListTags API response
due to it being eventually consistent specifically for multi region
clusters. For more information, see Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).


=head2 PurchaseReservedNodesOffering

=over

=item ReservedNodesOfferingId => Str

=item [NodeCount => Int]

=item [ReservationId => Str]

=item [Tags => ArrayRef[L<Paws::MemoryDB::Tag>]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::PurchaseReservedNodesOffering>

Returns: a L<Paws::MemoryDB::PurchaseReservedNodesOfferingResponse> instance

Allows you to purchase a reserved node offering. Reserved nodes are not
eligible for cancellation and are non-refundable.


=head2 ResetParameterGroup

=over

=item ParameterGroupName => Str

=item [AllParameters => Bool]

=item [ParameterNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::ResetParameterGroup>

Returns: a L<Paws::MemoryDB::ResetParameterGroupResponse> instance

Modifies the parameters of a parameter group to the engine or system
default value. You can reset specific parameters by submitting a list
of parameter names. To reset the entire parameter group, specify the
AllParameters and ParameterGroupName parameters.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::MemoryDB::Tag>]


=back

Each argument is described in detail in: L<Paws::MemoryDB::TagResource>

Returns: a L<Paws::MemoryDB::TagResourceResponse> instance

Use this operation to add tags to a resource. A tag is a key-value pair
where the key and value are case-sensitive. You can use tags to
categorize and track all your MemoryDB resources. For more information,
see Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

When you add tags to multi region clusters, you might not immediately
see the latest effective tags in the ListTags API response due to it
being eventually consistent specifically for multi region clusters. For
more information, see Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

You can specify cost-allocation tags for your MemoryDB resources,
Amazon generates a cost allocation report as a comma-separated value
(CSV) file with your usage and costs aggregated by your tags. You can
apply tags that represent business categories (such as cost centers,
application names, or owners) to organize your costs across multiple
services. For more information, see Using Cost Allocation Tags
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UntagResource>

Returns: a L<Paws::MemoryDB::UntagResourceResponse> instance

Use this operation to remove tags on a resource. A tag is a key-value
pair where the key and value are case-sensitive. You can use tags to
categorize and track all your MemoryDB resources. For more information,
see Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

When you remove tags from multi region clusters, you might not
immediately see the latest effective tags in the ListTags API response
due to it being eventually consistent specifically for multi region
clusters. For more information, see Tagging your MemoryDB resources
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html).

You can specify cost-allocation tags for your MemoryDB resources,
Amazon generates a cost allocation report as a comma-separated value
(CSV) file with your usage and costs aggregated by your tags. You can
apply tags that represent business categories (such as cost centers,
application names, or owners) to organize your costs across multiple
services. For more information, see Using Cost Allocation Tags
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).


=head2 UpdateACL

=over

=item ACLName => Str

=item [UserNamesToAdd => ArrayRef[Str|Undef]]

=item [UserNamesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateACL>

Returns: a L<Paws::MemoryDB::UpdateACLResponse> instance

Changes the list of users that belong to the Access Control List.


=head2 UpdateCluster

=over

=item ClusterName => Str

=item [ACLName => Str]

=item [Description => Str]

=item [Engine => Str]

=item [EngineVersion => Str]

=item [IpDiscovery => Str]

=item [MaintenanceWindow => Str]

=item [NodeType => Str]

=item [ParameterGroupName => Str]

=item [ReplicaConfiguration => L<Paws::MemoryDB::ReplicaConfigurationRequest>]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [ShardConfiguration => L<Paws::MemoryDB::ShardConfigurationRequest>]

=item [SnapshotRetentionLimit => Int]

=item [SnapshotWindow => Str]

=item [SnsTopicArn => Str]

=item [SnsTopicStatus => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateCluster>

Returns: a L<Paws::MemoryDB::UpdateClusterResponse> instance

Modifies the settings for a cluster. You can use this operation to
change one or more cluster configuration settings by specifying the
settings and the new values.


=head2 UpdateMultiRegionCluster

=over

=item MultiRegionClusterName => Str

=item [Description => Str]

=item [EngineVersion => Str]

=item [MultiRegionParameterGroupName => Str]

=item [NodeType => Str]

=item [ShardConfiguration => L<Paws::MemoryDB::ShardConfigurationRequest>]

=item [UpdateStrategy => Str]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateMultiRegionCluster>

Returns: a L<Paws::MemoryDB::UpdateMultiRegionClusterResponse> instance

Updates the configuration of an existing multi-Region cluster.


=head2 UpdateParameterGroup

=over

=item ParameterGroupName => Str

=item ParameterNameValues => ArrayRef[L<Paws::MemoryDB::ParameterNameValue>]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateParameterGroup>

Returns: a L<Paws::MemoryDB::UpdateParameterGroupResponse> instance

Updates the parameters of a parameter group. You can modify up to 20
parameters in a single request by submitting a list parameter name and
value pairs.


=head2 UpdateSubnetGroup

=over

=item SubnetGroupName => Str

=item [Description => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateSubnetGroup>

Returns: a L<Paws::MemoryDB::UpdateSubnetGroupResponse> instance

Updates a subnet group. For more information, see Updating a subnet
group
(https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html)


=head2 UpdateUser

=over

=item UserName => Str

=item [AccessString => Str]

=item [AuthenticationMode => L<Paws::MemoryDB::AuthenticationMode>]


=back

Each argument is described in detail in: L<Paws::MemoryDB::UpdateUser>

Returns: a L<Paws::MemoryDB::UpdateUserResponse> instance

Changes user password(s) and/or access string.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllACLs(sub { },[ACLName => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllACLs([ACLName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ACLs, passing the object as the first parameter, and the string 'ACLs' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeACLsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllClusters(sub { },[ClusterName => Str, MaxResults => Int, NextToken => Str, ShowShardDetails => Bool])

=head2 DescribeAllClusters([ClusterName => Str, MaxResults => Int, NextToken => Str, ShowShardDetails => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEngineVersions(sub { },[DefaultOnly => Bool, Engine => Str, EngineVersion => Str, MaxResults => Int, NextToken => Str, ParameterGroupFamily => Str])

=head2 DescribeAllEngineVersions([DefaultOnly => Bool, Engine => Str, EngineVersion => Str, MaxResults => Int, NextToken => Str, ParameterGroupFamily => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EngineVersions, passing the object as the first parameter, and the string 'EngineVersions' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeEngineVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, MaxResults => Int, NextToken => Str, SourceName => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, MaxResults => Int, NextToken => Str, SourceName => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMultiRegionClusters(sub { },[MaxResults => Int, MultiRegionClusterName => Str, NextToken => Str, ShowClusterDetails => Bool])

=head2 DescribeAllMultiRegionClusters([MaxResults => Int, MultiRegionClusterName => Str, NextToken => Str, ShowClusterDetails => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MultiRegionClusters, passing the object as the first parameter, and the string 'MultiRegionClusters' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeMultiRegionClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllParameterGroups(sub { },[MaxResults => Int, NextToken => Str, ParameterGroupName => Str])

=head2 DescribeAllParameterGroups([MaxResults => Int, NextToken => Str, ParameterGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ParameterGroups, passing the object as the first parameter, and the string 'ParameterGroups' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeParameterGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllParameters(sub { },ParameterGroupName => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllParameters(ParameterGroupName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeParametersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedNodes(sub { },[Duration => Str, MaxResults => Int, NextToken => Str, NodeType => Str, OfferingType => Str, ReservationId => Str, ReservedNodesOfferingId => Str])

=head2 DescribeAllReservedNodes([Duration => Str, MaxResults => Int, NextToken => Str, NodeType => Str, OfferingType => Str, ReservationId => Str, ReservedNodesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedNodes, passing the object as the first parameter, and the string 'ReservedNodes' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeReservedNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedNodesOfferings(sub { },[Duration => Str, MaxResults => Int, NextToken => Str, NodeType => Str, OfferingType => Str, ReservedNodesOfferingId => Str])

=head2 DescribeAllReservedNodesOfferings([Duration => Str, MaxResults => Int, NextToken => Str, NodeType => Str, OfferingType => Str, ReservedNodesOfferingId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedNodesOfferings, passing the object as the first parameter, and the string 'ReservedNodesOfferings' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeReservedNodesOfferingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllServiceUpdates(sub { },[ClusterNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ServiceUpdateName => Str, Status => ArrayRef[Str|Undef]])

=head2 DescribeAllServiceUpdates([ClusterNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ServiceUpdateName => Str, Status => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceUpdates, passing the object as the first parameter, and the string 'ServiceUpdates' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeServiceUpdatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[ClusterName => Str, MaxResults => Int, NextToken => Str, ShowDetail => Bool, SnapshotName => Str, Source => Str])

=head2 DescribeAllSnapshots([ClusterName => Str, MaxResults => Int, NextToken => Str, ShowDetail => Bool, SnapshotName => Str, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeSnapshotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubnetGroups(sub { },[MaxResults => Int, NextToken => Str, SubnetGroupName => Str])

=head2 DescribeAllSubnetGroups([MaxResults => Int, NextToken => Str, SubnetGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SubnetGroups, passing the object as the first parameter, and the string 'SubnetGroups' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeSubnetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllUsers(sub { },[Filters => ArrayRef[L<Paws::MemoryDB::Filter>], MaxResults => Int, NextToken => Str, UserName => Str])

=head2 DescribeAllUsers([Filters => ArrayRef[L<Paws::MemoryDB::Filter>], MaxResults => Int, NextToken => Str, UserName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::MemoryDB::DescribeUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


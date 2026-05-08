package Paws::Kafka;
  use Moose;
  sub service { 'kafka' }
  sub signing_name { 'kafka' }
  sub version { '2018-11-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchAssociateScramSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::BatchAssociateScramSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateScramSecret {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::BatchDisassociateScramSecret', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClusterV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateClusterV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateReplicator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::CreateVpcConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClusterPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteClusterPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteReplicator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DeleteVpcConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeClusterOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterOperationV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeClusterOperationV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusterV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeClusterV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeConfigurationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeReplicator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::DescribeVpcConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBootstrapBrokers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::GetBootstrapBrokers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClusterPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::GetClusterPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCompatibleKafkaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::GetCompatibleKafkaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClientVpcConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClientVpcConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusterOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusterOperationsV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusterOperationsV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClustersV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListClustersV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListConfigurationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKafkaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListKafkaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReplicators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListReplicators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScramSecrets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListScramSecrets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::ListVpcConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutClusterPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::PutClusterPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::RebootBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectClientVpcConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::RejectClientVpcConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrokerCount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateBrokerCount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrokerStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateBrokerStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBrokerType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateBrokerType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateClusterConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterKafkaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateClusterKafkaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectivity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateConnectivity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitoring {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateMonitoring', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateReplicationInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateSecurity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStorage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kafka::UpdateStorage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClientVpcConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClientVpcConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClientVpcConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClientVpcConnections }, @{ $next_result->ClientVpcConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClientVpcConnections') foreach (@{ $result->ClientVpcConnections });
        $result = $self->ListClientVpcConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClientVpcConnections') foreach (@{ $result->ClientVpcConnections });
    }

    return undef
  }
  sub ListAllClusterOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusterOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterOperationInfoList }, @{ $next_result->ClusterOperationInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
        $result = $self->ListClusterOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
    }

    return undef
  }
  sub ListAllClusterOperationsV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusterOperationsV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClusterOperationsV2(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterOperationInfoList }, @{ $next_result->ClusterOperationInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
        $result = $self->ListClusterOperationsV2(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterOperationInfoList') foreach (@{ $result->ClusterOperationInfoList });
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
        push @{ $result->ClusterInfoList }, @{ $next_result->ClusterInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
        $result = $self->ListClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
    }

    return undef
  }
  sub ListAllClustersV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClustersV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListClustersV2(@_, NextToken => $next_result->NextToken);
        push @{ $result->ClusterInfoList }, @{ $next_result->ClusterInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
        $result = $self->ListClustersV2(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ClusterInfoList') foreach (@{ $result->ClusterInfoList });
    }

    return undef
  }
  sub ListAllConfigurationRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationRevisions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Revisions }, @{ $next_result->Revisions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
        $result = $self->ListConfigurationRevisions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Revisions') foreach (@{ $result->Revisions });
    }

    return undef
  }
  sub ListAllConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Configurations }, @{ $next_result->Configurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
        $result = $self->ListConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Configurations') foreach (@{ $result->Configurations });
    }

    return undef
  }
  sub ListAllKafkaVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKafkaVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKafkaVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->KafkaVersions }, @{ $next_result->KafkaVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'KafkaVersions') foreach (@{ $result->KafkaVersions });
        $result = $self->ListKafkaVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'KafkaVersions') foreach (@{ $result->KafkaVersions });
    }

    return undef
  }
  sub ListAllNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNodes(@_, NextToken => $next_result->NextToken);
        push @{ $result->NodeInfoList }, @{ $next_result->NodeInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NodeInfoList') foreach (@{ $result->NodeInfoList });
        $result = $self->ListNodes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NodeInfoList') foreach (@{ $result->NodeInfoList });
    }

    return undef
  }
  sub ListAllReplicators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListReplicators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListReplicators(@_, NextToken => $next_result->NextToken);
        push @{ $result->Replicators }, @{ $next_result->Replicators };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Replicators') foreach (@{ $result->Replicators });
        $result = $self->ListReplicators(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Replicators') foreach (@{ $result->Replicators });
    }

    return undef
  }
  sub ListAllScramSecrets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScramSecrets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListScramSecrets(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecretArnList }, @{ $next_result->SecretArnList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecretArnList') foreach (@{ $result->SecretArnList });
        $result = $self->ListScramSecrets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecretArnList') foreach (@{ $result->SecretArnList });
    }

    return undef
  }
  sub ListAllVpcConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVpcConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListVpcConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->VpcConnections }, @{ $next_result->VpcConnections };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VpcConnections') foreach (@{ $result->VpcConnections });
        $result = $self->ListVpcConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VpcConnections') foreach (@{ $result->VpcConnections });
    }

    return undef
  }


  sub operations { qw/BatchAssociateScramSecret BatchDisassociateScramSecret CreateCluster CreateClusterV2 CreateConfiguration CreateReplicator CreateVpcConnection DeleteCluster DeleteClusterPolicy DeleteConfiguration DeleteReplicator DeleteVpcConnection DescribeCluster DescribeClusterOperation DescribeClusterOperationV2 DescribeClusterV2 DescribeConfiguration DescribeConfigurationRevision DescribeReplicator DescribeVpcConnection GetBootstrapBrokers GetClusterPolicy GetCompatibleKafkaVersions ListClientVpcConnections ListClusterOperations ListClusterOperationsV2 ListClusters ListClustersV2 ListConfigurationRevisions ListConfigurations ListKafkaVersions ListNodes ListReplicators ListScramSecrets ListTagsForResource ListVpcConnections PutClusterPolicy RebootBroker RejectClientVpcConnection TagResource UntagResource UpdateBrokerCount UpdateBrokerStorage UpdateBrokerType UpdateClusterConfiguration UpdateClusterKafkaVersion UpdateConfiguration UpdateConnectivity UpdateMonitoring UpdateReplicationInfo UpdateSecurity UpdateStorage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka - Perl Interface to AWS Managed Streaming for Kafka

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kafka');
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

The operations for managing an Amazon MSK cluster.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka-2018-11-14>


=head1 METHODS

=head2 BatchAssociateScramSecret

=over

=item ClusterArn => Str

=item SecretArnList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kafka::BatchAssociateScramSecret>

Returns: a L<Paws::Kafka::BatchAssociateScramSecretResponse> instance

Associates one or more Scram Secrets with an Amazon MSK cluster.


=head2 BatchDisassociateScramSecret

=over

=item ClusterArn => Str

=item SecretArnList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kafka::BatchDisassociateScramSecret>

Returns: a L<Paws::Kafka::BatchDisassociateScramSecretResponse> instance

Disassociates one or more Scram Secrets from an Amazon MSK cluster.


=head2 CreateCluster

=over

=item BrokerNodeGroupInfo => L<Paws::Kafka::BrokerNodeGroupInfo>

=item ClusterName => Str

=item KafkaVersion => Str

=item NumberOfBrokerNodes => Int

=item [ClientAuthentication => L<Paws::Kafka::ClientAuthentication>]

=item [ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>]

=item [EncryptionInfo => L<Paws::Kafka::EncryptionInfo>]

=item [EnhancedMonitoring => Str]

=item [LoggingInfo => L<Paws::Kafka::LoggingInfo>]

=item [OpenMonitoring => L<Paws::Kafka::OpenMonitoringInfo>]

=item [StorageMode => Str]

=item [Tags => L<Paws::Kafka::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateCluster>

Returns: a L<Paws::Kafka::CreateClusterResponse> instance

Creates a new MSK cluster.


=head2 CreateClusterV2

=over

=item ClusterName => Str

=item [Provisioned => L<Paws::Kafka::ProvisionedRequest>]

=item [Serverless => L<Paws::Kafka::ServerlessRequest>]

=item [Tags => L<Paws::Kafka::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateClusterV2>

Returns: a L<Paws::Kafka::CreateClusterV2Response> instance

Creates a new MSK cluster.


=head2 CreateConfiguration

=over

=item Name => Str

=item ServerProperties => Str

=item [Description => Str]

=item [KafkaVersions => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateConfiguration>

Returns: a L<Paws::Kafka::CreateConfigurationResponse> instance

Creates a new MSK configuration.


=head2 CreateReplicator

=over

=item KafkaClusters => ArrayRef[L<Paws::Kafka::KafkaCluster>]

=item ReplicationInfoList => ArrayRef[L<Paws::Kafka::ReplicationInfo>]

=item ReplicatorName => Str

=item ServiceExecutionRoleArn => Str

=item [Description => Str]

=item [Tags => L<Paws::Kafka::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateReplicator>

Returns: a L<Paws::Kafka::CreateReplicatorResponse> instance

Creates the replicator.


=head2 CreateVpcConnection

=over

=item Authentication => Str

=item ClientSubnets => ArrayRef[Str|Undef]

=item SecurityGroups => ArrayRef[Str|Undef]

=item TargetClusterArn => Str

=item VpcId => Str

=item [Tags => L<Paws::Kafka::__mapOf__string>]


=back

Each argument is described in detail in: L<Paws::Kafka::CreateVpcConnection>

Returns: a L<Paws::Kafka::CreateVpcConnectionResponse> instance

Creates a new MSK VPC connection.


=head2 DeleteCluster

=over

=item ClusterArn => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteCluster>

Returns: a L<Paws::Kafka::DeleteClusterResponse> instance

Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in
the request.


=head2 DeleteClusterPolicy

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteClusterPolicy>

Returns: a L<Paws::Kafka::DeleteClusterPolicyResponse> instance

Deletes the MSK cluster policy specified by the Amazon Resource Name
(ARN) in the request.


=head2 DeleteConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteConfiguration>

Returns: a L<Paws::Kafka::DeleteConfigurationResponse> instance

Deletes an MSK Configuration.


=head2 DeleteReplicator

=over

=item ReplicatorArn => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteReplicator>

Returns: a L<Paws::Kafka::DeleteReplicatorResponse> instance

Deletes a replicator.


=head2 DeleteVpcConnection

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DeleteVpcConnection>

Returns: a L<Paws::Kafka::DeleteVpcConnectionResponse> instance

Deletes a MSK VPC connection.


=head2 DescribeCluster

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeCluster>

Returns: a L<Paws::Kafka::DescribeClusterResponse> instance

Returns a description of the MSK cluster whose Amazon Resource Name
(ARN) is specified in the request.


=head2 DescribeClusterOperation

=over

=item ClusterOperationArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeClusterOperation>

Returns: a L<Paws::Kafka::DescribeClusterOperationResponse> instance

Returns a description of the cluster operation specified by the ARN.


=head2 DescribeClusterOperationV2

=over

=item ClusterOperationArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeClusterOperationV2>

Returns: a L<Paws::Kafka::DescribeClusterOperationV2Response> instance

Returns a description of the cluster operation specified by the ARN.


=head2 DescribeClusterV2

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeClusterV2>

Returns: a L<Paws::Kafka::DescribeClusterV2Response> instance

Returns a description of the MSK cluster whose Amazon Resource Name
(ARN) is specified in the request.


=head2 DescribeConfiguration

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeConfiguration>

Returns: a L<Paws::Kafka::DescribeConfigurationResponse> instance

Returns a description of this MSK configuration.


=head2 DescribeConfigurationRevision

=over

=item Arn => Str

=item Revision => Int


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeConfigurationRevision>

Returns: a L<Paws::Kafka::DescribeConfigurationRevisionResponse> instance

Returns a description of this revision of the configuration.


=head2 DescribeReplicator

=over

=item ReplicatorArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeReplicator>

Returns: a L<Paws::Kafka::DescribeReplicatorResponse> instance

Describes a replicator.


=head2 DescribeVpcConnection

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::DescribeVpcConnection>

Returns: a L<Paws::Kafka::DescribeVpcConnectionResponse> instance

Returns a description of this MSK VPC connection.


=head2 GetBootstrapBrokers

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::GetBootstrapBrokers>

Returns: a L<Paws::Kafka::GetBootstrapBrokersResponse> instance

A list of brokers that a client application can use to bootstrap. This
list doesn't necessarily include all of the brokers in the cluster. The
following Python 3.6 example shows how you can use the Amazon Resource
Name (ARN) of a cluster to get its bootstrap brokers. If you don't know
the ARN of your cluster, you can use the C<ListClusters> operation to
get the ARNs of all the clusters in this account and Region.


=head2 GetClusterPolicy

=over

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::GetClusterPolicy>

Returns: a L<Paws::Kafka::GetClusterPolicyResponse> instance

Get the MSK cluster policy specified by the Amazon Resource Name (ARN)
in the request.


=head2 GetCompatibleKafkaVersions

=over

=item [ClusterArn => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::GetCompatibleKafkaVersions>

Returns: a L<Paws::Kafka::GetCompatibleKafkaVersionsResponse> instance

Gets the Apache Kafka versions to which you can update the MSK cluster.


=head2 ListClientVpcConnections

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClientVpcConnections>

Returns: a L<Paws::Kafka::ListClientVpcConnectionsResponse> instance

Returns a list of all the VPC connections in this Region.


=head2 ListClusterOperations

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusterOperations>

Returns: a L<Paws::Kafka::ListClusterOperationsResponse> instance

Returns a list of all the operations that have been performed on the
specified MSK cluster.


=head2 ListClusterOperationsV2

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusterOperationsV2>

Returns: a L<Paws::Kafka::ListClusterOperationsV2Response> instance

Returns a list of all the operations that have been performed on the
specified MSK cluster.


=head2 ListClusters

=over

=item [ClusterNameFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClusters>

Returns: a L<Paws::Kafka::ListClustersResponse> instance

Returns a list of all the MSK clusters in the current Region.


=head2 ListClustersV2

=over

=item [ClusterNameFilter => Str]

=item [ClusterTypeFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListClustersV2>

Returns: a L<Paws::Kafka::ListClustersV2Response> instance

Returns a list of all the MSK clusters in the current Region.


=head2 ListConfigurationRevisions

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListConfigurationRevisions>

Returns: a L<Paws::Kafka::ListConfigurationRevisionsResponse> instance

Returns a list of all the MSK configurations in this Region.


=head2 ListConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListConfigurations>

Returns: a L<Paws::Kafka::ListConfigurationsResponse> instance

Returns a list of all the MSK configurations in this Region.


=head2 ListKafkaVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListKafkaVersions>

Returns: a L<Paws::Kafka::ListKafkaVersionsResponse> instance

Returns a list of Apache Kafka versions.


=head2 ListNodes

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListNodes>

Returns: a L<Paws::Kafka::ListNodesResponse> instance

Returns a list of the broker nodes in the cluster.


=head2 ListReplicators

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplicatorNameFilter => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListReplicators>

Returns: a L<Paws::Kafka::ListReplicatorsResponse> instance

Lists the replicators.


=head2 ListScramSecrets

=over

=item ClusterArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListScramSecrets>

Returns: a L<Paws::Kafka::ListScramSecretsResponse> instance

Returns a list of the Scram Secrets associated with an Amazon MSK
cluster.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::ListTagsForResource>

Returns: a L<Paws::Kafka::ListTagsForResourceResponse> instance

Returns a list of the tags associated with the specified resource.


=head2 ListVpcConnections

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::ListVpcConnections>

Returns: a L<Paws::Kafka::ListVpcConnectionsResponse> instance

Returns a list of all the VPC connections in this Region.


=head2 PutClusterPolicy

=over

=item ClusterArn => Str

=item Policy => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::PutClusterPolicy>

Returns: a L<Paws::Kafka::PutClusterPolicyResponse> instance

Creates or updates the MSK cluster policy specified by the cluster
Amazon Resource Name (ARN) in the request.


=head2 RebootBroker

=over

=item BrokerIds => ArrayRef[Str|Undef]

=item ClusterArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::RebootBroker>

Returns: a L<Paws::Kafka::RebootBrokerResponse> instance

Reboots brokers.


=head2 RejectClientVpcConnection

=over

=item ClusterArn => Str

=item VpcConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::Kafka::RejectClientVpcConnection>

Returns: a L<Paws::Kafka::RejectClientVpcConnectionResponse> instance

Returns empty response.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Kafka::__mapOf__string>


=back

Each argument is described in detail in: L<Paws::Kafka::TagResource>

Returns: nothing

Adds tags to the specified MSK resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kafka::UntagResource>

Returns: nothing

Removes the tags associated with the keys that are provided in the
query.


=head2 UpdateBrokerCount

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetNumberOfBrokerNodes => Int


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateBrokerCount>

Returns: a L<Paws::Kafka::UpdateBrokerCountResponse> instance

Updates the number of broker nodes in the cluster.


=head2 UpdateBrokerStorage

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetBrokerEBSVolumeInfo => ArrayRef[L<Paws::Kafka::BrokerEBSVolumeInfo>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateBrokerStorage>

Returns: a L<Paws::Kafka::UpdateBrokerStorageResponse> instance

Updates the EBS storage associated with MSK brokers.


=head2 UpdateBrokerType

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetInstanceType => Str


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateBrokerType>

Returns: a L<Paws::Kafka::UpdateBrokerTypeResponse> instance

Updates EC2 instance type.


=head2 UpdateClusterConfiguration

=over

=item ClusterArn => Str

=item ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>

=item CurrentVersion => Str


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateClusterConfiguration>

Returns: a L<Paws::Kafka::UpdateClusterConfigurationResponse> instance

Updates the cluster with the configuration that is specified in the
request body.


=head2 UpdateClusterKafkaVersion

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item TargetKafkaVersion => Str

=item [ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateClusterKafkaVersion>

Returns: a L<Paws::Kafka::UpdateClusterKafkaVersionResponse> instance

Updates the Apache Kafka version for the cluster.


=head2 UpdateConfiguration

=over

=item Arn => Str

=item ServerProperties => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateConfiguration>

Returns: a L<Paws::Kafka::UpdateConfigurationResponse> instance

Updates an MSK configuration.


=head2 UpdateConnectivity

=over

=item ClusterArn => Str

=item ConnectivityInfo => L<Paws::Kafka::ConnectivityInfo>

=item CurrentVersion => Str


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateConnectivity>

Returns: a L<Paws::Kafka::UpdateConnectivityResponse> instance

Updates the cluster's connectivity configuration.


=head2 UpdateMonitoring

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item [EnhancedMonitoring => Str]

=item [LoggingInfo => L<Paws::Kafka::LoggingInfo>]

=item [OpenMonitoring => L<Paws::Kafka::OpenMonitoringInfo>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateMonitoring>

Returns: a L<Paws::Kafka::UpdateMonitoringResponse> instance

Updates the monitoring settings for the cluster. You can use this
operation to specify which Apache Kafka metrics you want Amazon MSK to
send to Amazon CloudWatch. You can also specify settings for open
monitoring with Prometheus.


=head2 UpdateReplicationInfo

=over

=item CurrentVersion => Str

=item ReplicatorArn => Str

=item SourceKafkaClusterArn => Str

=item TargetKafkaClusterArn => Str

=item [ConsumerGroupReplication => L<Paws::Kafka::ConsumerGroupReplicationUpdate>]

=item [TopicReplication => L<Paws::Kafka::TopicReplicationUpdate>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateReplicationInfo>

Returns: a L<Paws::Kafka::UpdateReplicationInfoResponse> instance

Updates replication info of a replicator.


=head2 UpdateSecurity

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item [ClientAuthentication => L<Paws::Kafka::ClientAuthentication>]

=item [EncryptionInfo => L<Paws::Kafka::EncryptionInfo>]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateSecurity>

Returns: a L<Paws::Kafka::UpdateSecurityResponse> instance

Updates the security settings for the cluster. You can use this
operation to specify encryption and authentication on existing
clusters.


=head2 UpdateStorage

=over

=item ClusterArn => Str

=item CurrentVersion => Str

=item [ProvisionedThroughput => L<Paws::Kafka::ProvisionedThroughput>]

=item [StorageMode => Str]

=item [VolumeSizeGB => Int]


=back

Each argument is described in detail in: L<Paws::Kafka::UpdateStorage>

Returns: a L<Paws::Kafka::UpdateStorageResponse> instance

Updates cluster broker volume size (or) sets cluster storage mode to
TIERED.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClientVpcConnections(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllClientVpcConnections(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClientVpcConnections, passing the object as the first parameter, and the string 'ClientVpcConnections' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClientVpcConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusterOperations(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllClusterOperations(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterOperationInfoList, passing the object as the first parameter, and the string 'ClusterOperationInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClusterOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusterOperationsV2(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllClusterOperationsV2(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterOperationInfoList, passing the object as the first parameter, and the string 'ClusterOperationInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClusterOperationsV2Response> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[ClusterNameFilter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([ClusterNameFilter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterInfoList, passing the object as the first parameter, and the string 'ClusterInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClustersV2(sub { },[ClusterNameFilter => Str, ClusterTypeFilter => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllClustersV2([ClusterNameFilter => Str, ClusterTypeFilter => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ClusterInfoList, passing the object as the first parameter, and the string 'ClusterInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListClustersV2Response> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationRevisions(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurationRevisions(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Revisions, passing the object as the first parameter, and the string 'Revisions' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListConfigurationRevisionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Configurations, passing the object as the first parameter, and the string 'Configurations' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKafkaVersions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKafkaVersions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - KafkaVersions, passing the object as the first parameter, and the string 'KafkaVersions' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListKafkaVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNodes(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllNodes(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NodeInfoList, passing the object as the first parameter, and the string 'NodeInfoList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListNodesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllReplicators(sub { },[MaxResults => Int, NextToken => Str, ReplicatorNameFilter => Str])

=head2 ListAllReplicators([MaxResults => Int, NextToken => Str, ReplicatorNameFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Replicators, passing the object as the first parameter, and the string 'Replicators' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListReplicatorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScramSecrets(sub { },ClusterArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllScramSecrets(ClusterArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecretArnList, passing the object as the first parameter, and the string 'SecretArnList' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListScramSecretsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVpcConnections(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllVpcConnections([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VpcConnections, passing the object as the first parameter, and the string 'VpcConnections' as the second parameter 

If not, it will return a a L<Paws::Kafka::ListVpcConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


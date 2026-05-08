package Paws::Drs;
  use Moose;
  sub service { 'drs' }
  sub signing_name { 'drs' }
  sub version { '2020-02-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateSourceNetworkStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::AssociateSourceNetworkStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExtendedSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::CreateExtendedSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::CreateLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::CreateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSourceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::CreateSourceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteLaunchAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRecoveryInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteRecoveryInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceNetwork {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteSourceNetwork', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DeleteSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobLogItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeJobLogItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLaunchConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeLaunchConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecoveryInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeRecoveryInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRecoverySnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeRecoverySnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationConfigurationTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeReplicationConfigurationTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceNetworks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeSourceNetworks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DescribeSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectRecoveryInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DisconnectRecoveryInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisconnectSourceServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::DisconnectSourceServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportSourceNetworkCfnTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ExportSourceNetworkCfnTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFailbackReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::GetFailbackReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::GetLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::GetReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitializeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::InitializeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExtensibleSourceServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ListExtensibleSourceServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLaunchActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ListLaunchActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStagingAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ListStagingAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLaunchAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::PutLaunchAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryDataReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::RetryDataReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReverseReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::ReverseReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFailbackLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StartFailbackLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRecovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StartRecovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StartReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSourceNetworkRecovery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StartSourceNetworkRecovery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSourceNetworkReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StartSourceNetworkReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopFailback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StopFailback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StopReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSourceNetworkReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::StopSourceNetworkReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateRecoveryInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::TerminateRecoveryInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFailbackReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UpdateFailbackReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UpdateLaunchConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunchConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UpdateLaunchConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UpdateReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateReplicationConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Drs::UpdateReplicationConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllJobLogItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobLogItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobLogItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobLogItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllLaunchConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLaunchConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeLaunchConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeLaunchConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllRecoveryInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRecoveryInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeRecoveryInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeRecoveryInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllRecoverySnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRecoverySnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeRecoverySnapshots(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeRecoverySnapshots(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllReplicationConfigurationTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationConfigurationTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeReplicationConfigurationTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllSourceNetworks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSourceNetworks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeSourceNetworks(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeSourceNetworks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub DescribeAllSourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->DescribeSourceServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->DescribeSourceServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllExtensibleSourceServers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExtensibleSourceServers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExtensibleSourceServers(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListExtensibleSourceServers(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllLaunchActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLaunchActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLaunchActions(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListLaunchActions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllStagingAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStagingAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStagingAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->accounts }, @{ $next_result->accounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accounts') foreach (@{ $result->accounts });
        $result = $self->ListStagingAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accounts') foreach (@{ $result->accounts });
    }

    return undef
  }


  sub operations { qw/AssociateSourceNetworkStack CreateExtendedSourceServer CreateLaunchConfigurationTemplate CreateReplicationConfigurationTemplate CreateSourceNetwork DeleteJob DeleteLaunchAction DeleteLaunchConfigurationTemplate DeleteRecoveryInstance DeleteReplicationConfigurationTemplate DeleteSourceNetwork DeleteSourceServer DescribeJobLogItems DescribeJobs DescribeLaunchConfigurationTemplates DescribeRecoveryInstances DescribeRecoverySnapshots DescribeReplicationConfigurationTemplates DescribeSourceNetworks DescribeSourceServers DisconnectRecoveryInstance DisconnectSourceServer ExportSourceNetworkCfnTemplate GetFailbackReplicationConfiguration GetLaunchConfiguration GetReplicationConfiguration InitializeService ListExtensibleSourceServers ListLaunchActions ListStagingAccounts ListTagsForResource PutLaunchAction RetryDataReplication ReverseReplication StartFailbackLaunch StartRecovery StartReplication StartSourceNetworkRecovery StartSourceNetworkReplication StopFailback StopReplication StopSourceNetworkReplication TagResource TerminateRecoveryInstances UntagResource UpdateFailbackReplicationConfiguration UpdateLaunchConfiguration UpdateLaunchConfigurationTemplate UpdateReplicationConfiguration UpdateReplicationConfigurationTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs - Perl Interface to AWS Elastic Disaster Recovery Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Drs');
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

AWS Elastic Disaster Recovery Service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs-2020-02-26>


=head1 METHODS

=head2 AssociateSourceNetworkStack

=over

=item CfnStackName => Str

=item SourceNetworkID => Str


=back

Each argument is described in detail in: L<Paws::Drs::AssociateSourceNetworkStack>

Returns: a L<Paws::Drs::AssociateSourceNetworkStackResponse> instance

Associate a Source Network to an existing CloudFormation Stack and
modify launch templates to use this network. Can be used for reverting
to previously deployed CloudFormation stacks.


=head2 CreateExtendedSourceServer

=over

=item SourceServerArn => Str

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::CreateExtendedSourceServer>

Returns: a L<Paws::Drs::CreateExtendedSourceServerResponse> instance

Create an extended source server in the target Account based on the
source server in staging account.


=head2 CreateLaunchConfigurationTemplate

=over

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [ExportBucketArn => Str]

=item [LaunchDisposition => Str]

=item [LaunchIntoSourceInstance => Bool]

=item [Licensing => L<Paws::Drs::Licensing>]

=item [PostLaunchEnabled => Bool]

=item [Tags => L<Paws::Drs::TagsMap>]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::Drs::CreateLaunchConfigurationTemplate>

Returns: a L<Paws::Drs::CreateLaunchConfigurationTemplateResponse> instance

Creates a new Launch Configuration Template.


=head2 CreateReplicationConfigurationTemplate

=over

=item AssociateDefaultSecurityGroup => Bool

=item BandwidthThrottling => Int

=item CreatePublicIP => Bool

=item DataPlaneRouting => Str

=item DefaultLargeStagingDiskType => Str

=item EbsEncryption => Str

=item PitPolicy => ArrayRef[L<Paws::Drs::PITPolicyRule>]

=item ReplicationServerInstanceType => Str

=item ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]

=item StagingAreaSubnetId => Str

=item StagingAreaTags => L<Paws::Drs::TagsMap>

=item UseDedicatedReplicationServer => Bool

=item [AutoReplicateNewDisks => Bool]

=item [EbsEncryptionKeyArn => Str]

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::CreateReplicationConfigurationTemplate>

Returns: a L<Paws::Drs::ReplicationConfigurationTemplate> instance

Creates a new ReplicationConfigurationTemplate.


=head2 CreateSourceNetwork

=over

=item OriginAccountID => Str

=item OriginRegion => Str

=item VpcID => Str

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::CreateSourceNetwork>

Returns: a L<Paws::Drs::CreateSourceNetworkResponse> instance

Create a new Source Network resource for a provided VPC ID.


=head2 DeleteJob

=over

=item JobID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteJob>

Returns: a L<Paws::Drs::DeleteJobResponse> instance

Deletes a single Job by ID.


=head2 DeleteLaunchAction

=over

=item ActionId => Str

=item ResourceId => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteLaunchAction>

Returns: a L<Paws::Drs::DeleteLaunchActionResponse> instance

Deletes a resource launch action.


=head2 DeleteLaunchConfigurationTemplate

=over

=item LaunchConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteLaunchConfigurationTemplate>

Returns: a L<Paws::Drs::DeleteLaunchConfigurationTemplateResponse> instance

Deletes a single Launch Configuration Template by ID.


=head2 DeleteRecoveryInstance

=over

=item RecoveryInstanceID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteRecoveryInstance>

Returns: nothing

Deletes a single Recovery Instance by ID. This deletes the Recovery
Instance resource from Elastic Disaster Recovery. The Recovery Instance
must be disconnected first in order to delete it.


=head2 DeleteReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteReplicationConfigurationTemplate>

Returns: a L<Paws::Drs::DeleteReplicationConfigurationTemplateResponse> instance

Deletes a single Replication Configuration Template by ID


=head2 DeleteSourceNetwork

=over

=item SourceNetworkID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteSourceNetwork>

Returns: a L<Paws::Drs::DeleteSourceNetworkResponse> instance

Delete Source Network resource.


=head2 DeleteSourceServer

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DeleteSourceServer>

Returns: a L<Paws::Drs::DeleteSourceServerResponse> instance

Deletes a single Source Server by ID. The Source Server must be
disconnected first.


=head2 DescribeJobLogItems

=over

=item JobID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeJobLogItems>

Returns: a L<Paws::Drs::DescribeJobLogItemsResponse> instance

Retrieves a detailed Job log with pagination.


=head2 DescribeJobs

=over

=item [Filters => L<Paws::Drs::DescribeJobsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeJobs>

Returns: a L<Paws::Drs::DescribeJobsResponse> instance

Returns a list of Jobs. Use the JobsID and fromDate and toDate filters
to limit which jobs are returned. The response is sorted by
creationDataTime - latest date first. Jobs are created by the
StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs.
Jobs are also created by DiagnosticLaunch and
TerminateDiagnosticInstances, which are APIs available only to
*Support* and only used in response to relevant support tickets.


=head2 DescribeLaunchConfigurationTemplates

=over

=item [LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeLaunchConfigurationTemplates>

Returns: a L<Paws::Drs::DescribeLaunchConfigurationTemplatesResponse> instance

Lists all Launch Configuration Templates, filtered by Launch
Configuration Template IDs


=head2 DescribeRecoveryInstances

=over

=item [Filters => L<Paws::Drs::DescribeRecoveryInstancesRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeRecoveryInstances>

Returns: a L<Paws::Drs::DescribeRecoveryInstancesResponse> instance

Lists all Recovery Instances or multiple Recovery Instances by ID.


=head2 DescribeRecoverySnapshots

=over

=item SourceServerID => Str

=item [Filters => L<Paws::Drs::DescribeRecoverySnapshotsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Order => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeRecoverySnapshots>

Returns: a L<Paws::Drs::DescribeRecoverySnapshotsResponse> instance

Lists all Recovery Snapshots for a single Source Server.


=head2 DescribeReplicationConfigurationTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeReplicationConfigurationTemplates>

Returns: a L<Paws::Drs::DescribeReplicationConfigurationTemplatesResponse> instance

Lists all ReplicationConfigurationTemplates, filtered by Source Server
IDs.


=head2 DescribeSourceNetworks

=over

=item [Filters => L<Paws::Drs::DescribeSourceNetworksRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeSourceNetworks>

Returns: a L<Paws::Drs::DescribeSourceNetworksResponse> instance

Lists all Source Networks or multiple Source Networks filtered by ID.


=head2 DescribeSourceServers

=over

=item [Filters => L<Paws::Drs::DescribeSourceServersRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::DescribeSourceServers>

Returns: a L<Paws::Drs::DescribeSourceServersResponse> instance

Lists all Source Servers or multiple Source Servers filtered by ID.


=head2 DisconnectRecoveryInstance

=over

=item RecoveryInstanceID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DisconnectRecoveryInstance>

Returns: nothing

Disconnect a Recovery Instance from Elastic Disaster Recovery. Data
replication is stopped immediately. All AWS resources created by
Elastic Disaster Recovery for enabling the replication of the Recovery
Instance will be terminated / deleted within 90 minutes. If the agent
on the Recovery Instance has not been prevented from communicating with
the Elastic Disaster Recovery service, then it will receive a command
to uninstall itself (within approximately 10 minutes). The following
properties of the Recovery Instance will be changed immediately:
dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
The totalStorageBytes property for each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
will be nullified.


=head2 DisconnectSourceServer

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::DisconnectSourceServer>

Returns: a L<Paws::Drs::SourceServer> instance

Disconnects a specific Source Server from Elastic Disaster Recovery.
Data replication is stopped immediately. All AWS resources created by
Elastic Disaster Recovery for enabling the replication of the Source
Server will be terminated / deleted within 90 minutes. You cannot
disconnect a Source Server if it has a Recovery Instance. If the agent
on the Source Server has not been prevented from communicating with the
Elastic Disaster Recovery service, then it will receive a command to
uninstall itself (within approximately 10 minutes). The following
properties of the SourceServer will be changed immediately:
dataReplicationInfo.dataReplicationState will be set to DISCONNECTED;
The totalStorageBytes property for each of
dataReplicationInfo.replicatedDisks will be set to zero;
dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration
will be nullified.


=head2 ExportSourceNetworkCfnTemplate

=over

=item SourceNetworkID => Str


=back

Each argument is described in detail in: L<Paws::Drs::ExportSourceNetworkCfnTemplate>

Returns: a L<Paws::Drs::ExportSourceNetworkCfnTemplateResponse> instance

Export the Source Network CloudFormation template to an S3 bucket.


=head2 GetFailbackReplicationConfiguration

=over

=item RecoveryInstanceID => Str


=back

Each argument is described in detail in: L<Paws::Drs::GetFailbackReplicationConfiguration>

Returns: a L<Paws::Drs::GetFailbackReplicationConfigurationResponse> instance

Lists all Failback ReplicationConfigurations, filtered by Recovery
Instance ID.


=head2 GetLaunchConfiguration

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::GetLaunchConfiguration>

Returns: a L<Paws::Drs::LaunchConfiguration> instance

Gets a LaunchConfiguration, filtered by Source Server IDs.


=head2 GetReplicationConfiguration

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::GetReplicationConfiguration>

Returns: a L<Paws::Drs::ReplicationConfiguration> instance

Gets a ReplicationConfiguration, filtered by Source Server ID.


=head2 InitializeService






Each argument is described in detail in: L<Paws::Drs::InitializeService>

Returns: a L<Paws::Drs::InitializeServiceResponse> instance

Initialize Elastic Disaster Recovery.


=head2 ListExtensibleSourceServers

=over

=item StagingAccountID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::ListExtensibleSourceServers>

Returns: a L<Paws::Drs::ListExtensibleSourceServersResponse> instance

Returns a list of source servers on a staging account that are
extensible, which means that: a. The source server is not already
extended into this Account. b. The source server on the Account
weE<rsquo>re reading from is not an extension of another source server.


=head2 ListLaunchActions

=over

=item ResourceId => Str

=item [Filters => L<Paws::Drs::LaunchActionsRequestFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::ListLaunchActions>

Returns: a L<Paws::Drs::ListLaunchActionsResponse> instance

Lists resource launch actions.


=head2 ListStagingAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Drs::ListStagingAccounts>

Returns: a L<Paws::Drs::ListStagingAccountsResponse> instance

Returns an array of staging accounts for existing extended source
servers.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Drs::ListTagsForResource>

Returns: a L<Paws::Drs::ListTagsForResourceResponse> instance

List all tags for your Elastic Disaster Recovery resources.


=head2 PutLaunchAction

=over

=item ActionCode => Str

=item ActionId => Str

=item ActionVersion => Str

=item Active => Bool

=item Category => Str

=item Description => Str

=item Name => Str

=item Optional => Bool

=item Order => Int

=item ResourceId => Str

=item [Parameters => L<Paws::Drs::LaunchActionParameters>]


=back

Each argument is described in detail in: L<Paws::Drs::PutLaunchAction>

Returns: a L<Paws::Drs::PutLaunchActionResponse> instance

Puts a resource launch action.


=head2 RetryDataReplication

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::RetryDataReplication>

Returns: a L<Paws::Drs::SourceServer> instance

WARNING: RetryDataReplication is deprecated. Causes the data
replication initiation sequence to begin immediately upon next
Handshake for the specified Source Server ID, regardless of when the
previous initiation started. This command will work only if the Source
Server is stalled or is in a DISCONNECTED or STOPPED state.


=head2 ReverseReplication

=over

=item RecoveryInstanceID => Str


=back

Each argument is described in detail in: L<Paws::Drs::ReverseReplication>

Returns: a L<Paws::Drs::ReverseReplicationResponse> instance

Start replication to origin / target region - applies only to protected
instances that originated in EC2. For recovery instances on target
region - starts replication back to origin region. For failback
instances on origin region - starts replication to target region to
re-protect them.


=head2 StartFailbackLaunch

=over

=item RecoveryInstanceIDs => ArrayRef[Str|Undef]

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::StartFailbackLaunch>

Returns: a L<Paws::Drs::StartFailbackLaunchResponse> instance

Initiates a Job for launching the machine that is being failed back to
from the specified Recovery Instance. This will run conversion on the
failback client and will reboot your machine, thus completing the
failback process.


=head2 StartRecovery

=over

=item SourceServers => ArrayRef[L<Paws::Drs::StartRecoveryRequestSourceServer>]

=item [IsDrill => Bool]

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::StartRecovery>

Returns: a L<Paws::Drs::StartRecoveryResponse> instance

Launches Recovery Instances for the specified Source Servers. For each
Source Server you may choose a point in time snapshot to launch from,
or use an on demand snapshot.


=head2 StartReplication

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::StartReplication>

Returns: a L<Paws::Drs::StartReplicationResponse> instance

Starts replication for a stopped Source Server. This action would make
the Source Server protected again and restart billing for it.


=head2 StartSourceNetworkRecovery

=over

=item SourceNetworks => ArrayRef[L<Paws::Drs::StartSourceNetworkRecoveryRequestNetworkEntry>]

=item [DeployAsNew => Bool]

=item [Tags => L<Paws::Drs::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Drs::StartSourceNetworkRecovery>

Returns: a L<Paws::Drs::StartSourceNetworkRecoveryResponse> instance

Deploy VPC for the specified Source Network and modify launch templates
to use this network. The VPC will be deployed using a dedicated
CloudFormation stack.


=head2 StartSourceNetworkReplication

=over

=item SourceNetworkID => Str


=back

Each argument is described in detail in: L<Paws::Drs::StartSourceNetworkReplication>

Returns: a L<Paws::Drs::StartSourceNetworkReplicationResponse> instance

Starts replication for a Source Network. This action would make the
Source Network protected.


=head2 StopFailback

=over

=item RecoveryInstanceID => Str


=back

Each argument is described in detail in: L<Paws::Drs::StopFailback>

Returns: nothing

Stops the failback process for a specified Recovery Instance. This
changes the Failback State of the Recovery Instance back to
FAILBACK_NOT_STARTED.


=head2 StopReplication

=over

=item SourceServerID => Str


=back

Each argument is described in detail in: L<Paws::Drs::StopReplication>

Returns: a L<Paws::Drs::StopReplicationResponse> instance

Stops replication for a Source Server. This action would make the
Source Server unprotected, delete its existing snapshots and stop
billing for it.


=head2 StopSourceNetworkReplication

=over

=item SourceNetworkID => Str


=back

Each argument is described in detail in: L<Paws::Drs::StopSourceNetworkReplication>

Returns: a L<Paws::Drs::StopSourceNetworkReplicationResponse> instance

Stops replication for a Source Network. This action would make the
Source Network unprotected.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Drs::TagsMap>


=back

Each argument is described in detail in: L<Paws::Drs::TagResource>

Returns: nothing

Adds or overwrites only the specified tags for the specified Elastic
Disaster Recovery resource or resources. When you specify an existing
tag key, the value is overwritten with the new value. Each resource can
have a maximum of 50 tags. Each tag consists of a key and optional
value.


=head2 TerminateRecoveryInstances

=over

=item RecoveryInstanceIDs => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Drs::TerminateRecoveryInstances>

Returns: a L<Paws::Drs::TerminateRecoveryInstancesResponse> instance

Initiates a Job for terminating the EC2 resources associated with the
specified Recovery Instances, and then will delete the Recovery
Instances from the Elastic Disaster Recovery service.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Drs::UntagResource>

Returns: nothing

Deletes the specified set of tags from the specified set of Elastic
Disaster Recovery resources.


=head2 UpdateFailbackReplicationConfiguration

=over

=item RecoveryInstanceID => Str

=item [BandwidthThrottling => Int]

=item [Name => Str]

=item [UsePrivateIP => Bool]


=back

Each argument is described in detail in: L<Paws::Drs::UpdateFailbackReplicationConfiguration>

Returns: nothing

Allows you to update the failback replication configuration of a
Recovery Instance by ID.


=head2 UpdateLaunchConfiguration

=over

=item SourceServerID => Str

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [LaunchDisposition => Str]

=item [LaunchIntoInstanceProperties => L<Paws::Drs::LaunchIntoInstanceProperties>]

=item [Licensing => L<Paws::Drs::Licensing>]

=item [Name => Str]

=item [PostLaunchEnabled => Bool]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::Drs::UpdateLaunchConfiguration>

Returns: a L<Paws::Drs::LaunchConfiguration> instance

Updates a LaunchConfiguration by Source Server ID.


=head2 UpdateLaunchConfigurationTemplate

=over

=item LaunchConfigurationTemplateID => Str

=item [CopyPrivateIp => Bool]

=item [CopyTags => Bool]

=item [ExportBucketArn => Str]

=item [LaunchDisposition => Str]

=item [LaunchIntoSourceInstance => Bool]

=item [Licensing => L<Paws::Drs::Licensing>]

=item [PostLaunchEnabled => Bool]

=item [TargetInstanceTypeRightSizingMethod => Str]


=back

Each argument is described in detail in: L<Paws::Drs::UpdateLaunchConfigurationTemplate>

Returns: a L<Paws::Drs::UpdateLaunchConfigurationTemplateResponse> instance

Updates an existing Launch Configuration Template by ID.


=head2 UpdateReplicationConfiguration

=over

=item SourceServerID => Str

=item [AssociateDefaultSecurityGroup => Bool]

=item [AutoReplicateNewDisks => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [Name => Str]

=item [PitPolicy => ArrayRef[L<Paws::Drs::PITPolicyRule>]]

=item [ReplicatedDisks => ArrayRef[L<Paws::Drs::ReplicationConfigurationReplicatedDisk>]]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::Drs::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]


=back

Each argument is described in detail in: L<Paws::Drs::UpdateReplicationConfiguration>

Returns: a L<Paws::Drs::ReplicationConfiguration> instance

Allows you to update a ReplicationConfiguration by Source Server ID.


=head2 UpdateReplicationConfigurationTemplate

=over

=item ReplicationConfigurationTemplateID => Str

=item [Arn => Str]

=item [AssociateDefaultSecurityGroup => Bool]

=item [AutoReplicateNewDisks => Bool]

=item [BandwidthThrottling => Int]

=item [CreatePublicIP => Bool]

=item [DataPlaneRouting => Str]

=item [DefaultLargeStagingDiskType => Str]

=item [EbsEncryption => Str]

=item [EbsEncryptionKeyArn => Str]

=item [PitPolicy => ArrayRef[L<Paws::Drs::PITPolicyRule>]]

=item [ReplicationServerInstanceType => Str]

=item [ReplicationServersSecurityGroupsIDs => ArrayRef[Str|Undef]]

=item [StagingAreaSubnetId => Str]

=item [StagingAreaTags => L<Paws::Drs::TagsMap>]

=item [UseDedicatedReplicationServer => Bool]


=back

Each argument is described in detail in: L<Paws::Drs::UpdateReplicationConfigurationTemplate>

Returns: a L<Paws::Drs::ReplicationConfigurationTemplate> instance

Updates a ReplicationConfigurationTemplate by ID.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllJobLogItems(sub { },JobID => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobLogItems(JobID => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeJobLogItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllJobs(sub { },[Filters => L<Paws::Drs::DescribeJobsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllJobs([Filters => L<Paws::Drs::DescribeJobsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLaunchConfigurationTemplates(sub { },[LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllLaunchConfigurationTemplates([LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeLaunchConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRecoveryInstances(sub { },[Filters => L<Paws::Drs::DescribeRecoveryInstancesRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllRecoveryInstances([Filters => L<Paws::Drs::DescribeRecoveryInstancesRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeRecoveryInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllRecoverySnapshots(sub { },SourceServerID => Str, [Filters => L<Paws::Drs::DescribeRecoverySnapshotsRequestFilters>, MaxResults => Int, NextToken => Str, Order => Str])

=head2 DescribeAllRecoverySnapshots(SourceServerID => Str, [Filters => L<Paws::Drs::DescribeRecoverySnapshotsRequestFilters>, MaxResults => Int, NextToken => Str, Order => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeRecoverySnapshotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationConfigurationTemplates(sub { },[MaxResults => Int, NextToken => Str, ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]])

=head2 DescribeAllReplicationConfigurationTemplates([MaxResults => Int, NextToken => Str, ReplicationConfigurationTemplateIDs => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeReplicationConfigurationTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSourceNetworks(sub { },[Filters => L<Paws::Drs::DescribeSourceNetworksRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSourceNetworks([Filters => L<Paws::Drs::DescribeSourceNetworksRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeSourceNetworksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSourceServers(sub { },[Filters => L<Paws::Drs::DescribeSourceServersRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 DescribeAllSourceServers([Filters => L<Paws::Drs::DescribeSourceServersRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::DescribeSourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExtensibleSourceServers(sub { },StagingAccountID => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllExtensibleSourceServers(StagingAccountID => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::ListExtensibleSourceServersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLaunchActions(sub { },ResourceId => Str, [Filters => L<Paws::Drs::LaunchActionsRequestFilters>, MaxResults => Int, NextToken => Str])

=head2 ListAllLaunchActions(ResourceId => Str, [Filters => L<Paws::Drs::LaunchActionsRequestFilters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::Drs::ListLaunchActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStagingAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllStagingAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accounts, passing the object as the first parameter, and the string 'accounts' as the second parameter 

If not, it will return a a L<Paws::Drs::ListStagingAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


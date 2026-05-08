package Paws::EMR;
  use Moose;
  sub service { 'elasticmapreduce' }
  sub signing_name { 'elasticmapreduce' }
  sub version { '2009-03-31' }
  sub target_prefix { 'ElasticMapReduce' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      uri => 'https://elasticmapreduce.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'equals',
          'eu-central-1'
        ]
      ],
      uri => 'https://elasticmapreduce.eu-central-1.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'equals',
          'us-east-1'
        ]
      ],
      uri => 'https://elasticmapreduce.us-east-1.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'notEquals',
          undef
        ]
      ],
      uri => 'https://{region}.elasticmapreduce.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AddInstanceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::AddInstanceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddInstanceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::AddInstanceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddJobFlowSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::AddJobFlowSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::CancelSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePersistentAppUI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::CreatePersistentAppUI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::CreateSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::CreateStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStudioSessionMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::CreateStudioSessionMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DeleteSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DeleteStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStudioSessionMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DeleteStudioSessionMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeJobFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeNotebookExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePersistentAppUI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribePersistentAppUI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReleaseLabel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeReleaseLabel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStep {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeStep', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::DescribeStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutoTerminationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetAutoTerminationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBlockPublicAccessConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetBlockPublicAccessConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClusterSessionCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetClusterSessionCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetManagedScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOnClusterAppUIPresignedURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetOnClusterAppUIPresignedURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPersistentAppUIPresignedURL {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetPersistentAppUIPresignedURL', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStudioSessionMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::GetStudioSessionMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBootstrapActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListBootstrapActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListInstanceFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListInstanceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListNotebookExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListReleaseLabels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListReleaseLabels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListSecurityConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudios {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListStudios', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStudioSessionMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListStudioSessionMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupportedInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ListSupportedInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ModifyCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ModifyInstanceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::ModifyInstanceGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAutoScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::PutAutoScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAutoTerminationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::PutAutoTerminationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBlockPublicAccessConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::PutBlockPublicAccessConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutManagedScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::PutManagedScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAutoScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::RemoveAutoScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAutoTerminationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::RemoveAutoTerminationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveManagedScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::RemoveManagedScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunJobFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::RunJobFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetKeepJobFlowAliveWhenNoSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::SetKeepJobFlowAliveWhenNoSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTerminationProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::SetTerminationProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetUnhealthyNodeReplacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::SetUnhealthyNodeReplacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetVisibleToAllUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::SetVisibleToAllUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNotebookExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::StartNotebookExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopNotebookExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::StopNotebookExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateJobFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::TerminateJobFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStudio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::UpdateStudio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStudioSessionMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EMR::UpdateStudioSessionMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBootstrapActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBootstrapActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListBootstrapActions(@_, Marker => $next_result->Marker);
        push @{ $result->BootstrapActions }, @{ $next_result->BootstrapActions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'BootstrapActions') foreach (@{ $result->BootstrapActions });
        $result = $self->ListBootstrapActions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'BootstrapActions') foreach (@{ $result->BootstrapActions });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListClusters(@_, Marker => $next_result->Marker);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->ListClusters(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub ListAllInstanceFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListInstanceFleets(@_, Marker => $next_result->Marker);
        push @{ $result->InstanceFleets }, @{ $next_result->InstanceFleets };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'InstanceFleets') foreach (@{ $result->InstanceFleets });
        $result = $self->ListInstanceFleets(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'InstanceFleets') foreach (@{ $result->InstanceFleets });
    }

    return undef
  }
  sub ListAllInstanceGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListInstanceGroups(@_, Marker => $next_result->Marker);
        push @{ $result->InstanceGroups }, @{ $next_result->InstanceGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'InstanceGroups') foreach (@{ $result->InstanceGroups });
        $result = $self->ListInstanceGroups(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'InstanceGroups') foreach (@{ $result->InstanceGroups });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListInstances(@_, Marker => $next_result->Marker);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListInstances(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllNotebookExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListNotebookExecutions(@_, Marker => $next_result->Marker);
        push @{ $result->NotebookExecutions }, @{ $next_result->NotebookExecutions };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'NotebookExecutions') foreach (@{ $result->NotebookExecutions });
        $result = $self->ListNotebookExecutions(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'NotebookExecutions') foreach (@{ $result->NotebookExecutions });
    }

    return undef
  }
  sub ListAllSecurityConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListSecurityConfigurations(@_, Marker => $next_result->Marker);
        push @{ $result->SecurityConfigurations }, @{ $next_result->SecurityConfigurations };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
        $result = $self->ListSecurityConfigurations(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
    }

    return undef
  }
  sub ListAllSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListSteps(@_, Marker => $next_result->Marker);
        push @{ $result->Steps }, @{ $next_result->Steps };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Steps') foreach (@{ $result->Steps });
        $result = $self->ListSteps(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Steps') foreach (@{ $result->Steps });
    }

    return undef
  }
  sub ListAllStudios {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudios(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListStudios(@_, Marker => $next_result->Marker);
        push @{ $result->Studios }, @{ $next_result->Studios };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'Studios') foreach (@{ $result->Studios });
        $result = $self->ListStudios(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'Studios') foreach (@{ $result->Studios });
    }

    return undef
  }
  sub ListAllStudioSessionMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStudioSessionMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Marker) {
        $next_result = $self->ListStudioSessionMappings(@_, Marker => $next_result->Marker);
        push @{ $result->SessionMappings }, @{ $next_result->SessionMappings };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $callback->($_ => 'SessionMappings') foreach (@{ $result->SessionMappings });
        $result = $self->ListStudioSessionMappings(@_, Marker => $result->Marker);
      }
      $callback->($_ => 'SessionMappings') foreach (@{ $result->SessionMappings });
    }

    return undef
  }


  sub operations { qw/AddInstanceFleet AddInstanceGroups AddJobFlowSteps AddTags CancelSteps CreatePersistentAppUI CreateSecurityConfiguration CreateStudio CreateStudioSessionMapping DeleteSecurityConfiguration DeleteStudio DeleteStudioSessionMapping DescribeCluster DescribeJobFlows DescribeNotebookExecution DescribePersistentAppUI DescribeReleaseLabel DescribeSecurityConfiguration DescribeStep DescribeStudio GetAutoTerminationPolicy GetBlockPublicAccessConfiguration GetClusterSessionCredentials GetManagedScalingPolicy GetOnClusterAppUIPresignedURL GetPersistentAppUIPresignedURL GetStudioSessionMapping ListBootstrapActions ListClusters ListInstanceFleets ListInstanceGroups ListInstances ListNotebookExecutions ListReleaseLabels ListSecurityConfigurations ListSteps ListStudios ListStudioSessionMappings ListSupportedInstanceTypes ModifyCluster ModifyInstanceFleet ModifyInstanceGroups PutAutoScalingPolicy PutAutoTerminationPolicy PutBlockPublicAccessConfiguration PutManagedScalingPolicy RemoveAutoScalingPolicy RemoveAutoTerminationPolicy RemoveManagedScalingPolicy RemoveTags RunJobFlow SetKeepJobFlowAliveWhenNoSteps SetTerminationProtection SetUnhealthyNodeReplacement SetVisibleToAllUsers StartNotebookExecution StopNotebookExecution TerminateJobFlows UpdateStudio UpdateStudioSessionMapping / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR - Perl Interface to AWS Amazon EMR

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EMR');
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

Amazon EMR is a web service that makes it easier to process large
amounts of data efficiently. Amazon EMR uses Hadoop processing combined
with several Amazon Web Services services to do tasks such as web
indexing, data mining, log file analysis, machine learning, scientific
simulation, and data warehouse management.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce-2009-03-31>


=head1 METHODS

=head2 AddInstanceFleet

=over

=item ClusterId => Str

=item InstanceFleet => L<Paws::EMR::InstanceFleetConfig>


=back

Each argument is described in detail in: L<Paws::EMR::AddInstanceFleet>

Returns: a L<Paws::EMR::AddInstanceFleetOutput> instance

Adds an instance fleet to a running cluster.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x.


=head2 AddInstanceGroups

=over

=item InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupConfig>]

=item JobFlowId => Str


=back

Each argument is described in detail in: L<Paws::EMR::AddInstanceGroups>

Returns: a L<Paws::EMR::AddInstanceGroupsOutput> instance

Adds one or more instance groups to a running cluster.


=head2 AddJobFlowSteps

=over

=item JobFlowId => Str

=item Steps => ArrayRef[L<Paws::EMR::StepConfig>]

=item [ExecutionRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EMR::AddJobFlowSteps>

Returns: a L<Paws::EMR::AddJobFlowStepsOutput> instance

AddJobFlowSteps adds new steps to a running cluster. A maximum of 256
steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or
complex, you may require more than 256 steps to process your data. You
can bypass the 256-step limitation in various ways, including using SSH
to connect to the master node and submitting queries directly to the
software running on the master node, such as Hive and Hadoop.

A step specifies the location of a JAR file stored either on the master
node of the cluster or in Amazon S3. Each step is performed by the main
function of the main class of the JAR file. The main class can be
specified either in the manifest of the JAR or by using the
MainFunction parameter of the step.

Amazon EMR executes each step in the order listed. For a step to be
considered complete, the main function must exit with a zero exit code
and all Hadoop jobs started while the step was running must have
completed and run successfully.

You can only add steps to a cluster that is in one of the following
states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.

The string values passed into C<HadoopJarStep> object cannot exceed a
total of 10240 characters.


=head2 AddTags

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::EMR::Tag>]


=back

Each argument is described in detail in: L<Paws::EMR::AddTags>

Returns: a L<Paws::EMR::AddTagsOutput> instance

Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR
Studio. Tags make it easier to associate resources in various ways,
such as grouping clusters to track your Amazon EMR resource allocation
costs. For more information, see Tag Clusters
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).


=head2 CancelSteps

=over

=item ClusterId => Str

=item StepIds => ArrayRef[Str|Undef]

=item [StepCancellationOption => Str]


=back

Each argument is described in detail in: L<Paws::EMR::CancelSteps>

Returns: a L<Paws::EMR::CancelStepsOutput> instance

Cancels a pending step or steps in a running cluster. Available only in
Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum
of 256 steps are allowed in each CancelSteps request. CancelSteps is
idempotent but asynchronous; it does not guarantee that a step will be
canceled, even if the request is successfully submitted. When you use
Amazon EMR releases 5.28.0 and later, you can cancel steps that are in
a C<PENDING> or C<RUNNING> state. In earlier versions of Amazon EMR,
you can only cancel steps that are in a C<PENDING> state.


=head2 CreatePersistentAppUI

=over

=item TargetResourceArn => Str

=item [EMRContainersConfig => L<Paws::EMR::EMRContainersConfig>]

=item [ProfilerType => Str]

=item [Tags => ArrayRef[L<Paws::EMR::Tag>]]

=item [XReferer => Str]


=back

Each argument is described in detail in: L<Paws::EMR::CreatePersistentAppUI>

Returns: a L<Paws::EMR::CreatePersistentAppUIOutput> instance

Creates a persistent application user interface.


=head2 CreateSecurityConfiguration

=over

=item Name => Str

=item SecurityConfiguration => Str


=back

Each argument is described in detail in: L<Paws::EMR::CreateSecurityConfiguration>

Returns: a L<Paws::EMR::CreateSecurityConfigurationOutput> instance

Creates a security configuration, which is stored in the service and
can be specified when a cluster is created.


=head2 CreateStudio

=over

=item AuthMode => Str

=item DefaultS3Location => Str

=item EngineSecurityGroupId => Str

=item Name => Str

=item ServiceRole => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item WorkspaceSecurityGroupId => Str

=item [Description => Str]

=item [EncryptionKeyArn => Str]

=item [IdcInstanceArn => Str]

=item [IdcUserAssignment => Str]

=item [IdpAuthUrl => Str]

=item [IdpRelayStateParameterName => Str]

=item [Tags => ArrayRef[L<Paws::EMR::Tag>]]

=item [TrustedIdentityPropagationEnabled => Bool]

=item [UserRole => Str]


=back

Each argument is described in detail in: L<Paws::EMR::CreateStudio>

Returns: a L<Paws::EMR::CreateStudioOutput> instance

Creates a new Amazon EMR Studio.


=head2 CreateStudioSessionMapping

=over

=item IdentityType => Str

=item SessionPolicyArn => Str

=item StudioId => Str

=item [IdentityId => Str]

=item [IdentityName => Str]


=back

Each argument is described in detail in: L<Paws::EMR::CreateStudioSessionMapping>

Returns: nothing

Maps a user or group to the Amazon EMR Studio specified by C<StudioId>,
and applies a session policy to refine Studio permissions for that user
or group. Use C<CreateStudioSessionMapping> to assign users to a Studio
when you use IAM Identity Center authentication. For instructions on
how to assign users to a Studio when you use IAM authentication, see
Assign a user or group to your EMR Studio
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups).


=head2 DeleteSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EMR::DeleteSecurityConfiguration>

Returns: a L<Paws::EMR::DeleteSecurityConfigurationOutput> instance

Deletes a security configuration.


=head2 DeleteStudio

=over

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DeleteStudio>

Returns: nothing

Removes an Amazon EMR Studio from the Studio metadata store.


=head2 DeleteStudioSessionMapping

=over

=item IdentityType => Str

=item StudioId => Str

=item [IdentityId => Str]

=item [IdentityName => Str]


=back

Each argument is described in detail in: L<Paws::EMR::DeleteStudioSessionMapping>

Returns: nothing

Removes a user or group from an Amazon EMR Studio.


=head2 DescribeCluster

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribeCluster>

Returns: a L<Paws::EMR::DescribeClusterOutput> instance

Provides cluster-level details including status, hardware and software
configuration, VPC settings, and so on.


=head2 DescribeJobFlows

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [JobFlowIds => ArrayRef[Str|Undef]]

=item [JobFlowStates => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMR::DescribeJobFlows>

Returns: a L<Paws::EMR::DescribeJobFlowsOutput> instance

This API is no longer supported and will eventually be removed. We
recommend you use ListClusters, DescribeCluster, ListSteps,
ListInstanceGroups and ListBootstrapActions instead.

DescribeJobFlows returns a list of job flows that match all of the
supplied parameters. The parameters can include a list of job flow IDs,
job flow states, and restrictions on job flow creation date and time.

Regardless of supplied parameters, only job flows created within the
last two months are returned.

If no parameters are supplied, then job flows matching either of the
following criteria are returned:

=over

=item *

Job flows created and completed in the last two weeks

=item *

Job flows created within the last two months that are in one of the
following states: C<RUNNING>, C<WAITING>, C<SHUTTING_DOWN>, C<STARTING>

=back

Amazon EMR can return a maximum of 512 job flow descriptions.


=head2 DescribeNotebookExecution

=over

=item NotebookExecutionId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribeNotebookExecution>

Returns: a L<Paws::EMR::DescribeNotebookExecutionOutput> instance

Provides details of a notebook execution.


=head2 DescribePersistentAppUI

=over

=item PersistentAppUIId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribePersistentAppUI>

Returns: a L<Paws::EMR::DescribePersistentAppUIOutput> instance

Describes a persistent application user interface.


=head2 DescribeReleaseLabel

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReleaseLabel => Str]


=back

Each argument is described in detail in: L<Paws::EMR::DescribeReleaseLabel>

Returns: a L<Paws::EMR::DescribeReleaseLabelOutput> instance

Provides Amazon EMR release label details, such as the releases
available the Region where the API request is run, and the available
applications for a specific Amazon EMR release label. Can also list
Amazon EMR releases that support a specified version of Spark.


=head2 DescribeSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribeSecurityConfiguration>

Returns: a L<Paws::EMR::DescribeSecurityConfigurationOutput> instance

Provides the details of a security configuration by returning the
configuration JSON.


=head2 DescribeStep

=over

=item ClusterId => Str

=item StepId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribeStep>

Returns: a L<Paws::EMR::DescribeStepOutput> instance

Provides more detail about the cluster step.


=head2 DescribeStudio

=over

=item StudioId => Str


=back

Each argument is described in detail in: L<Paws::EMR::DescribeStudio>

Returns: a L<Paws::EMR::DescribeStudioOutput> instance

Returns details for the specified Amazon EMR Studio including ID, Name,
VPC, Studio access URL, and so on.


=head2 GetAutoTerminationPolicy

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMR::GetAutoTerminationPolicy>

Returns: a L<Paws::EMR::GetAutoTerminationPolicyOutput> instance

Returns the auto-termination policy for an Amazon EMR cluster.


=head2 GetBlockPublicAccessConfiguration






Each argument is described in detail in: L<Paws::EMR::GetBlockPublicAccessConfiguration>

Returns: a L<Paws::EMR::GetBlockPublicAccessConfigurationOutput> instance

Returns the Amazon EMR block public access configuration for your
Amazon Web Services account in the current Region. For more information
see Configure Block Public Access for Amazon EMR
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
in the I<Amazon EMR Management Guide>.


=head2 GetClusterSessionCredentials

=over

=item ClusterId => Str

=item [ExecutionRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EMR::GetClusterSessionCredentials>

Returns: a L<Paws::EMR::GetClusterSessionCredentialsOutput> instance

Provides temporary, HTTP basic credentials that are associated with a
given runtime IAM role and used by a cluster with fine-grained access
control activated. You can use these credentials to connect to cluster
endpoints that support username and password authentication.


=head2 GetManagedScalingPolicy

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMR::GetManagedScalingPolicy>

Returns: a L<Paws::EMR::GetManagedScalingPolicyOutput> instance

Fetches the attached managed scaling policy for an Amazon EMR cluster.


=head2 GetOnClusterAppUIPresignedURL

=over

=item ClusterId => Str

=item [ApplicationId => Str]

=item [DryRun => Bool]

=item [ExecutionRoleArn => Str]

=item [OnClusterAppUIType => Str]


=back

Each argument is described in detail in: L<Paws::EMR::GetOnClusterAppUIPresignedURL>

Returns: a L<Paws::EMR::GetOnClusterAppUIPresignedURLOutput> instance

The presigned URL properties for the cluster's application user
interface.


=head2 GetPersistentAppUIPresignedURL

=over

=item PersistentAppUIId => Str

=item [ApplicationId => Str]

=item [AuthProxyCall => Bool]

=item [ExecutionRoleArn => Str]

=item [PersistentAppUIType => Str]


=back

Each argument is described in detail in: L<Paws::EMR::GetPersistentAppUIPresignedURL>

Returns: a L<Paws::EMR::GetPersistentAppUIPresignedURLOutput> instance

The presigned URL properties for the cluster's application user
interface.


=head2 GetStudioSessionMapping

=over

=item IdentityType => Str

=item StudioId => Str

=item [IdentityId => Str]

=item [IdentityName => Str]


=back

Each argument is described in detail in: L<Paws::EMR::GetStudioSessionMapping>

Returns: a L<Paws::EMR::GetStudioSessionMappingOutput> instance

Fetches mapping details for the specified Amazon EMR Studio and
identity (user or group).


=head2 ListBootstrapActions

=over

=item ClusterId => Str

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListBootstrapActions>

Returns: a L<Paws::EMR::ListBootstrapActionsOutput> instance

Provides information about the bootstrap actions associated with a
cluster.


=head2 ListClusters

=over

=item [ClusterStates => ArrayRef[Str|Undef]]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListClusters>

Returns: a L<Paws::EMR::ListClustersOutput> instance

Provides the status of all clusters visible to this Amazon Web Services
account. Allows you to filter the list of clusters based on certain
criteria; for example, filtering by cluster creation date and time or
by status. This call returns a maximum of 50 clusters in unsorted order
per call, but returns a marker to track the paging of the cluster list
across multiple ListClusters calls.


=head2 ListInstanceFleets

=over

=item ClusterId => Str

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListInstanceFleets>

Returns: a L<Paws::EMR::ListInstanceFleetsOutput> instance

Lists all available details about the instance fleets in a cluster.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions.


=head2 ListInstanceGroups

=over

=item ClusterId => Str

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListInstanceGroups>

Returns: a L<Paws::EMR::ListInstanceGroupsOutput> instance

Provides all available details about the instance groups in a cluster.


=head2 ListInstances

=over

=item ClusterId => Str

=item [InstanceFleetId => Str]

=item [InstanceFleetType => Str]

=item [InstanceGroupId => Str]

=item [InstanceGroupTypes => ArrayRef[Str|Undef]]

=item [InstanceStates => ArrayRef[Str|Undef]]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListInstances>

Returns: a L<Paws::EMR::ListInstancesOutput> instance

Provides information for all active Amazon EC2 instances and Amazon EC2
instances terminated in the last 30 days, up to a maximum of 2,000.
Amazon EC2 instances in any of the following states are considered
active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.


=head2 ListNotebookExecutions

=over

=item [EditorId => Str]

=item [ExecutionEngineId => Str]

=item [From => Str]

=item [Marker => Str]

=item [Status => Str]

=item [To => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListNotebookExecutions>

Returns: a L<Paws::EMR::ListNotebookExecutionsOutput> instance

Provides summaries of all notebook executions. You can filter the list
based on multiple criteria such as status, time range, and editor id.
Returns a maximum of 50 notebook executions and a marker to track the
paging of a longer notebook execution list across multiple
C<ListNotebookExecutions> calls.


=head2 ListReleaseLabels

=over

=item [Filters => L<Paws::EMR::ReleaseLabelFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListReleaseLabels>

Returns: a L<Paws::EMR::ListReleaseLabelsOutput> instance

Retrieves release labels of Amazon EMR services in the Region where the
API is called.


=head2 ListSecurityConfigurations

=over

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListSecurityConfigurations>

Returns: a L<Paws::EMR::ListSecurityConfigurationsOutput> instance

Lists all the security configurations visible to this account,
providing their creation dates and times, and their names. This call
returns a maximum of 50 clusters per call, but returns a marker to
track the paging of the cluster list across multiple
ListSecurityConfigurations calls.


=head2 ListSteps

=over

=item ClusterId => Str

=item [Marker => Str]

=item [StepIds => ArrayRef[Str|Undef]]

=item [StepStates => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMR::ListSteps>

Returns: a L<Paws::EMR::ListStepsOutput> instance

Provides a list of steps for the cluster in reverse order unless you
specify C<stepIds> with the request or filter by C<StepStates>. You can
specify a maximum of 10 C<stepIDs>. The CLI automatically paginates
results to return a list greater than 50 steps. To return more than 50
steps using the CLI, specify a C<Marker>, which is a pagination token
that indicates the next set of steps to retrieve.


=head2 ListStudios

=over

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListStudios>

Returns: a L<Paws::EMR::ListStudiosOutput> instance

Returns a list of all Amazon EMR Studios associated with the Amazon Web
Services account. The list includes details such as ID, Studio Access
URL, and creation time for each Studio.


=head2 ListStudioSessionMappings

=over

=item [IdentityType => Str]

=item [Marker => Str]

=item [StudioId => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListStudioSessionMappings>

Returns: a L<Paws::EMR::ListStudioSessionMappingsOutput> instance

Returns a list of all user or group session mappings for the Amazon EMR
Studio specified by C<StudioId>.


=head2 ListSupportedInstanceTypes

=over

=item ReleaseLabel => Str

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::EMR::ListSupportedInstanceTypes>

Returns: a L<Paws::EMR::ListSupportedInstanceTypesOutput> instance

A list of the instance types that Amazon EMR supports. You can filter
the list by Amazon Web Services Region and Amazon EMR release.


=head2 ModifyCluster

=over

=item ClusterId => Str

=item [StepConcurrencyLevel => Int]


=back

Each argument is described in detail in: L<Paws::EMR::ModifyCluster>

Returns: a L<Paws::EMR::ModifyClusterOutput> instance

Modifies the number of steps that can be executed concurrently for the
cluster specified using ClusterID.


=head2 ModifyInstanceFleet

=over

=item ClusterId => Str

=item InstanceFleet => L<Paws::EMR::InstanceFleetModifyConfig>


=back

Each argument is described in detail in: L<Paws::EMR::ModifyInstanceFleet>

Returns: nothing

Modifies the target On-Demand and target Spot capacities for the
instance fleet with the specified InstanceFleetID within the cluster
specified using ClusterID. The call either succeeds or fails
atomically.

The instance fleet configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions.


=head2 ModifyInstanceGroups

=over

=item [ClusterId => Str]

=item [InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupModifyConfig>]]


=back

Each argument is described in detail in: L<Paws::EMR::ModifyInstanceGroups>

Returns: nothing

ModifyInstanceGroups modifies the number of nodes and configuration
settings of an instance group. The input parameters include the new
target instance count for the group and the instance group ID. The call
will either succeed or fail atomically.


=head2 PutAutoScalingPolicy

=over

=item AutoScalingPolicy => L<Paws::EMR::AutoScalingPolicy>

=item ClusterId => Str

=item InstanceGroupId => Str


=back

Each argument is described in detail in: L<Paws::EMR::PutAutoScalingPolicy>

Returns: a L<Paws::EMR::PutAutoScalingPolicyOutput> instance

Creates or updates an automatic scaling policy for a core instance
group or task instance group in an Amazon EMR cluster. The automatic
scaling policy defines how an instance group dynamically adds and
terminates Amazon EC2 instances in response to the value of a
CloudWatch metric.


=head2 PutAutoTerminationPolicy

=over

=item ClusterId => Str

=item [AutoTerminationPolicy => L<Paws::EMR::AutoTerminationPolicy>]


=back

Each argument is described in detail in: L<Paws::EMR::PutAutoTerminationPolicy>

Returns: a L<Paws::EMR::PutAutoTerminationPolicyOutput> instance

Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0
and later. For more information, see Using an auto-termination policy
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html).

Creates or updates an auto-termination policy for an Amazon EMR
cluster. An auto-termination policy defines the amount of idle time in
seconds after which a cluster automatically terminates. For alternative
cluster termination options, see Control cluster termination
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html).


=head2 PutBlockPublicAccessConfiguration

=over

=item BlockPublicAccessConfiguration => L<Paws::EMR::BlockPublicAccessConfiguration>


=back

Each argument is described in detail in: L<Paws::EMR::PutBlockPublicAccessConfiguration>

Returns: a L<Paws::EMR::PutBlockPublicAccessConfigurationOutput> instance

Creates or updates an Amazon EMR block public access configuration for
your Amazon Web Services account in the current Region. For more
information see Configure Block Public Access for Amazon EMR
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html)
in the I<Amazon EMR Management Guide>.


=head2 PutManagedScalingPolicy

=over

=item ClusterId => Str

=item ManagedScalingPolicy => L<Paws::EMR::ManagedScalingPolicy>


=back

Each argument is described in detail in: L<Paws::EMR::PutManagedScalingPolicy>

Returns: a L<Paws::EMR::PutManagedScalingPolicyOutput> instance

Creates or updates a managed scaling policy for an Amazon EMR cluster.
The managed scaling policy defines the limits for resources, such as
Amazon EC2 instances that can be added or terminated from a cluster.
The policy only applies to the core and task nodes. The master node
cannot be scaled after initial configuration.


=head2 RemoveAutoScalingPolicy

=over

=item ClusterId => Str

=item InstanceGroupId => Str


=back

Each argument is described in detail in: L<Paws::EMR::RemoveAutoScalingPolicy>

Returns: a L<Paws::EMR::RemoveAutoScalingPolicyOutput> instance

Removes an automatic scaling policy from a specified instance group
within an Amazon EMR cluster.


=head2 RemoveAutoTerminationPolicy

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMR::RemoveAutoTerminationPolicy>

Returns: a L<Paws::EMR::RemoveAutoTerminationPolicyOutput> instance

Removes an auto-termination policy from an Amazon EMR cluster.


=head2 RemoveManagedScalingPolicy

=over

=item ClusterId => Str


=back

Each argument is described in detail in: L<Paws::EMR::RemoveManagedScalingPolicy>

Returns: a L<Paws::EMR::RemoveManagedScalingPolicyOutput> instance

Removes a managed scaling policy from a specified Amazon EMR cluster.


=head2 RemoveTags

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EMR::RemoveTags>

Returns: a L<Paws::EMR::RemoveTagsOutput> instance

Removes tags from an Amazon EMR resource, such as a cluster or Amazon
EMR Studio. Tags make it easier to associate resources in various ways,
such as grouping clusters to track your Amazon EMR resource allocation
costs. For more information, see Tag Clusters
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html).

The following example removes the stack tag with value Prod from a
cluster:


=head2 RunJobFlow

=over

=item Instances => L<Paws::EMR::JobFlowInstancesConfig>

=item Name => Str

=item [AdditionalInfo => Str]

=item [AmiVersion => Str]

=item [Applications => ArrayRef[L<Paws::EMR::Application>]]

=item [AutoScalingRole => Str]

=item [AutoTerminationPolicy => L<Paws::EMR::AutoTerminationPolicy>]

=item [BootstrapActions => ArrayRef[L<Paws::EMR::BootstrapActionConfig>]]

=item [Configurations => ArrayRef[L<Paws::EMR::Configuration>]]

=item [CustomAmiId => Str]

=item [EbsRootVolumeIops => Int]

=item [EbsRootVolumeSize => Int]

=item [EbsRootVolumeThroughput => Int]

=item [JobFlowRole => Str]

=item [KerberosAttributes => L<Paws::EMR::KerberosAttributes>]

=item [LogEncryptionKmsKeyId => Str]

=item [LogUri => Str]

=item [ManagedScalingPolicy => L<Paws::EMR::ManagedScalingPolicy>]

=item [NewSupportedProducts => ArrayRef[L<Paws::EMR::SupportedProductConfig>]]

=item [OSReleaseLabel => Str]

=item [PlacementGroupConfigs => ArrayRef[L<Paws::EMR::PlacementGroupConfig>]]

=item [ReleaseLabel => Str]

=item [RepoUpgradeOnBoot => Str]

=item [ScaleDownBehavior => Str]

=item [SecurityConfiguration => Str]

=item [ServiceRole => Str]

=item [StepConcurrencyLevel => Int]

=item [Steps => ArrayRef[L<Paws::EMR::StepConfig>]]

=item [SupportedProducts => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::EMR::Tag>]]

=item [VisibleToAllUsers => Bool]


=back

Each argument is described in detail in: L<Paws::EMR::RunJobFlow>

Returns: a L<Paws::EMR::RunJobFlowOutput> instance

RunJobFlow creates and starts running a new cluster (job flow). The
cluster runs the steps specified. After the steps complete, the cluster
stops and the HDFS partition is lost. To prevent loss of data,
configure the last step of the job flow to store results in Amazon S3.
If the JobFlowInstancesConfig C<KeepJobFlowAliveWhenNoSteps> parameter
is set to C<TRUE>, the cluster transitions to the WAITING state rather
than shutting down after the steps have completed.

For additional protection, you can set the JobFlowInstancesConfig
C<TerminationProtected> parameter to C<TRUE> to lock the cluster and
prevent it from being terminated by API call, user intervention, or in
the event of a job flow error.

A maximum of 256 steps are allowed in each job flow.

If your cluster is long-running (such as a Hive data warehouse) or
complex, you may require more than 256 steps to process your data. You
can bypass the 256-step limitation in various ways, including using the
SSH shell to connect to the master node and submitting queries directly
to the software running on the master node, such as Hive and Hadoop.

For long-running clusters, we recommend that you periodically store
your results.

The instance fleets configuration is available only in Amazon EMR
releases 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow
request can contain InstanceFleets parameters or InstanceGroups
parameters, but not both.


=head2 SetKeepJobFlowAliveWhenNoSteps

=over

=item JobFlowIds => ArrayRef[Str|Undef]

=item KeepJobFlowAliveWhenNoSteps => Bool


=back

Each argument is described in detail in: L<Paws::EMR::SetKeepJobFlowAliveWhenNoSteps>

Returns: nothing

You can use the C<SetKeepJobFlowAliveWhenNoSteps> to configure a
cluster (job flow) to terminate after the step execution, i.e., all
your steps are executed. If you want a transient cluster that shuts
down after the last of the current executing steps are completed, you
can configure C<SetKeepJobFlowAliveWhenNoSteps> to false. If you want a
long running cluster, configure C<SetKeepJobFlowAliveWhenNoSteps> to
true.

For more information, see Managing Cluster Termination
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
in the I<Amazon EMR Management Guide>.


=head2 SetTerminationProtection

=over

=item JobFlowIds => ArrayRef[Str|Undef]

=item TerminationProtected => Bool


=back

Each argument is described in detail in: L<Paws::EMR::SetTerminationProtection>

Returns: nothing

SetTerminationProtection locks a cluster (job flow) so the Amazon EC2
instances in the cluster cannot be terminated by user intervention, an
API call, or in the event of a job-flow error. The cluster still
terminates upon successful completion of the job flow. Calling
C<SetTerminationProtection> on a cluster is similar to calling the
Amazon EC2 C<DisableAPITermination> API on all Amazon EC2 instances in
a cluster.

C<SetTerminationProtection> is used to prevent accidental termination
of a cluster and to ensure that in the event of an error, the instances
persist so that you can recover any data stored in their ephemeral
instance storage.

To terminate a cluster that has been locked by setting
C<SetTerminationProtection> to C<true>, you must first unlock the job
flow by a subsequent call to C<SetTerminationProtection> in which you
set the value to C<false>.

For more information, see Managing Cluster Termination
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html)
in the I<Amazon EMR Management Guide>.


=head2 SetUnhealthyNodeReplacement

=over

=item JobFlowIds => ArrayRef[Str|Undef]

=item UnhealthyNodeReplacement => Bool


=back

Each argument is described in detail in: L<Paws::EMR::SetUnhealthyNodeReplacement>

Returns: nothing

Specify whether to enable unhealthy node replacement, which lets Amazon
EMR gracefully replace core nodes on a cluster if any nodes become
unhealthy. For example, a node becomes unhealthy if disk usage is above
90%. If unhealthy node replacement is on and C<TerminationProtected>
are off, Amazon EMR immediately terminates the unhealthy core nodes. To
use unhealthy node replacement and retain unhealthy core nodes, use to
turn on termination protection. In such cases, Amazon EMR adds the
unhealthy nodes to a denylist, reducing job interruptions and failures.

If unhealthy node replacement is on, Amazon EMR notifies YARN and other
applications on the cluster to stop scheduling tasks with these nodes,
moves the data, and then terminates the nodes.

For more information, see graceful node replacement
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-node-replacement.html)
in the I<Amazon EMR Management Guide>.


=head2 SetVisibleToAllUsers

=over

=item JobFlowIds => ArrayRef[Str|Undef]

=item VisibleToAllUsers => Bool


=back

Each argument is described in detail in: L<Paws::EMR::SetVisibleToAllUsers>

Returns: nothing

The SetVisibleToAllUsers parameter is no longer supported. Your cluster
may be visible to all users in your account. To restrict cluster access
using an IAM policy, see Identity and Access Management for Amazon EMR
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-IAM.html).

Sets the Cluster$VisibleToAllUsers value for an Amazon EMR cluster.
When C<true>, IAM principals in the Amazon Web Services account can
perform Amazon EMR cluster actions that their IAM policies allow. When
C<false>, only the IAM principal that created the cluster and the
Amazon Web Services account root user can perform Amazon EMR actions on
the cluster, regardless of IAM permissions policies attached to other
IAM principals.

This action works on running clusters. When you create a cluster, use
the RunJobFlowInput$VisibleToAllUsers parameter.

For more information, see Understanding the Amazon EMR Cluster
VisibleToAllUsers Setting
(https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users)
in the I<Amazon EMR Management Guide>.


=head2 StartNotebookExecution

=over

=item ExecutionEngine => L<Paws::EMR::ExecutionEngineConfig>

=item ServiceRole => Str

=item [EditorId => Str]

=item [EnvironmentVariables => L<Paws::EMR::EnvironmentVariablesMap>]

=item [NotebookExecutionName => Str]

=item [NotebookInstanceSecurityGroupId => Str]

=item [NotebookParams => Str]

=item [NotebookS3Location => L<Paws::EMR::NotebookS3LocationFromInput>]

=item [OutputNotebookFormat => Str]

=item [OutputNotebookS3Location => L<Paws::EMR::OutputNotebookS3LocationFromInput>]

=item [RelativePath => Str]

=item [Tags => ArrayRef[L<Paws::EMR::Tag>]]


=back

Each argument is described in detail in: L<Paws::EMR::StartNotebookExecution>

Returns: a L<Paws::EMR::StartNotebookExecutionOutput> instance

Starts a notebook execution.


=head2 StopNotebookExecution

=over

=item NotebookExecutionId => Str


=back

Each argument is described in detail in: L<Paws::EMR::StopNotebookExecution>

Returns: nothing

Stops a notebook execution.


=head2 TerminateJobFlows

=over

=item JobFlowIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EMR::TerminateJobFlows>

Returns: nothing

TerminateJobFlows shuts a list of clusters (job flows) down. When a job
flow is shut down, any step not yet completed is canceled and the
Amazon EC2 instances on which the cluster is running are stopped. Any
log files not already saved are uploaded to Amazon S3 if a LogUri was
specified when the cluster was created.

The maximum number of clusters allowed is 10. The call to
C<TerminateJobFlows> is asynchronous. Depending on the configuration of
the cluster, it may take up to 1-5 minutes for the cluster to
completely terminate and release allocated resources, such as Amazon
EC2 instances.


=head2 UpdateStudio

=over

=item StudioId => Str

=item [DefaultS3Location => Str]

=item [Description => Str]

=item [EncryptionKeyArn => Str]

=item [Name => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EMR::UpdateStudio>

Returns: nothing

Updates an Amazon EMR Studio configuration, including attributes such
as name, description, and subnets.


=head2 UpdateStudioSessionMapping

=over

=item IdentityType => Str

=item SessionPolicyArn => Str

=item StudioId => Str

=item [IdentityId => Str]

=item [IdentityName => Str]


=back

Each argument is described in detail in: L<Paws::EMR::UpdateStudioSessionMapping>

Returns: nothing

Updates the session policy attached to the user or group for the
specified Amazon EMR Studio.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBootstrapActions(sub { },ClusterId => Str, [Marker => Str])

=head2 ListAllBootstrapActions(ClusterId => Str, [Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BootstrapActions, passing the object as the first parameter, and the string 'BootstrapActions' as the second parameter 

If not, it will return a a L<Paws::EMR::ListBootstrapActionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[ClusterStates => ArrayRef[Str|Undef], CreatedAfter => Str, CreatedBefore => Str, Marker => Str])

=head2 ListAllClusters([ClusterStates => ArrayRef[Str|Undef], CreatedAfter => Str, CreatedBefore => Str, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::EMR::ListClustersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceFleets(sub { },ClusterId => Str, [Marker => Str])

=head2 ListAllInstanceFleets(ClusterId => Str, [Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceFleets, passing the object as the first parameter, and the string 'InstanceFleets' as the second parameter 

If not, it will return a a L<Paws::EMR::ListInstanceFleetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceGroups(sub { },ClusterId => Str, [Marker => Str])

=head2 ListAllInstanceGroups(ClusterId => Str, [Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceGroups, passing the object as the first parameter, and the string 'InstanceGroups' as the second parameter 

If not, it will return a a L<Paws::EMR::ListInstanceGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },ClusterId => Str, [InstanceFleetId => Str, InstanceFleetType => Str, InstanceGroupId => Str, InstanceGroupTypes => ArrayRef[Str|Undef], InstanceStates => ArrayRef[Str|Undef], Marker => Str])

=head2 ListAllInstances(ClusterId => Str, [InstanceFleetId => Str, InstanceFleetType => Str, InstanceGroupId => Str, InstanceGroupTypes => ArrayRef[Str|Undef], InstanceStates => ArrayRef[Str|Undef], Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::EMR::ListInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookExecutions(sub { },[EditorId => Str, ExecutionEngineId => Str, From => Str, Marker => Str, Status => Str, To => Str])

=head2 ListAllNotebookExecutions([EditorId => Str, ExecutionEngineId => Str, From => Str, Marker => Str, Status => Str, To => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookExecutions, passing the object as the first parameter, and the string 'NotebookExecutions' as the second parameter 

If not, it will return a a L<Paws::EMR::ListNotebookExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityConfigurations(sub { },[Marker => Str])

=head2 ListAllSecurityConfigurations([Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityConfigurations, passing the object as the first parameter, and the string 'SecurityConfigurations' as the second parameter 

If not, it will return a a L<Paws::EMR::ListSecurityConfigurationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSteps(sub { },ClusterId => Str, [Marker => Str, StepIds => ArrayRef[Str|Undef], StepStates => ArrayRef[Str|Undef]])

=head2 ListAllSteps(ClusterId => Str, [Marker => Str, StepIds => ArrayRef[Str|Undef], StepStates => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Steps, passing the object as the first parameter, and the string 'Steps' as the second parameter 

If not, it will return a a L<Paws::EMR::ListStepsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudios(sub { },[Marker => Str])

=head2 ListAllStudios([Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Studios, passing the object as the first parameter, and the string 'Studios' as the second parameter 

If not, it will return a a L<Paws::EMR::ListStudiosOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStudioSessionMappings(sub { },[IdentityType => Str, Marker => Str, StudioId => Str])

=head2 ListAllStudioSessionMappings([IdentityType => Str, Marker => Str, StudioId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SessionMappings, passing the object as the first parameter, and the string 'SessionMappings' as the second parameter 

If not, it will return a a L<Paws::EMR::ListStudioSessionMappingsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


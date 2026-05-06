package Paws::ECS;
  use Moose;
  sub service { 'ecs' }
  sub signing_name { 'ecs' }
  sub version { '2014-11-13' }
  sub target_prefix { 'AmazonEC2ContainerServiceV20141113' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCapacityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateCapacityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTaskSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::CreateTaskSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountSetting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteAccountSetting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCapacityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteCapacityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTaskSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeleteTaskSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DeregisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCapacityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeCapacityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeServiceDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServiceRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeServiceRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTaskSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DescribeTaskSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DiscoverPollEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::DiscoverPollEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ExecuteCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaskProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::GetTaskProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContainerInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListContainerInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListServiceDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServicesByNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListServicesByNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitionFamilies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitionFamilies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaskDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTaskDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::ListTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSetting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAccountSetting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountSettingDefault {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAccountSettingDefault', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutClusterCapacityProviders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::PutClusterCapacityProviders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterContainerInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterContainerInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTaskDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RegisterTaskDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::RunTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StartTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopServiceDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StopServiceDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::StopTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitAttachmentStateChanges {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitAttachmentStateChanges', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitContainerStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitContainerStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitTaskStateChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::SubmitTaskStateChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCapacityProvider {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateCapacityProvider', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateClusterSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerAgent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateContainerAgent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContainerInstancesState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateContainerInstancesState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServicePrimaryTaskSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateServicePrimaryTaskSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTaskProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateTaskProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTaskSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ECS::UpdateTaskSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountSettings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountSettings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAccountSettings(@_, nextToken => $next_result->nextToken);
        push @{ $result->settings }, @{ $next_result->settings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'settings') foreach (@{ $result->settings });
        $result = $self->ListAccountSettings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'settings') foreach (@{ $result->settings });
    }

    return undef
  }
  sub ListAllAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAttributes(@_, nextToken => $next_result->nextToken);
        push @{ $result->attributes }, @{ $next_result->attributes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'attributes') foreach (@{ $result->attributes });
        $result = $self->ListAttributes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'attributes') foreach (@{ $result->attributes });
    }

    return undef
  }
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusterArns }, @{ $next_result->clusterArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusterArns') foreach (@{ $result->clusterArns });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusterArns') foreach (@{ $result->clusterArns });
    }

    return undef
  }
  sub ListAllContainerInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContainerInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListContainerInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->containerInstanceArns }, @{ $next_result->containerInstanceArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'containerInstanceArns') foreach (@{ $result->containerInstanceArns });
        $result = $self->ListContainerInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'containerInstanceArns') foreach (@{ $result->containerInstanceArns });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceArns }, @{ $next_result->serviceArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
    }

    return undef
  }
  sub ListAllServicesByNamespace {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServicesByNamespace(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServicesByNamespace(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceArns }, @{ $next_result->serviceArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
        $result = $self->ListServicesByNamespace(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceArns') foreach (@{ $result->serviceArns });
    }

    return undef
  }
  sub ListAllTaskDefinitionFamilies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitionFamilies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaskDefinitionFamilies(@_, nextToken => $next_result->nextToken);
        push @{ $result->families }, @{ $next_result->families };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'families') foreach (@{ $result->families });
        $result = $self->ListTaskDefinitionFamilies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'families') foreach (@{ $result->families });
    }

    return undef
  }
  sub ListAllTaskDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaskDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaskDefinitions(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskDefinitionArns }, @{ $next_result->taskDefinitionArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskDefinitionArns') foreach (@{ $result->taskDefinitionArns });
        $result = $self->ListTaskDefinitions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskDefinitionArns') foreach (@{ $result->taskDefinitionArns });
    }

    return undef
  }
  sub ListAllTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskArns }, @{ $next_result->taskArns };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskArns') foreach (@{ $result->taskArns });
        $result = $self->ListTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskArns') foreach (@{ $result->taskArns });
    }

    return undef
  }


  sub operations { qw/CreateCapacityProvider CreateCluster CreateService CreateTaskSet DeleteAccountSetting DeleteAttributes DeleteCapacityProvider DeleteCluster DeleteService DeleteTaskDefinitions DeleteTaskSet DeregisterContainerInstance DeregisterTaskDefinition DescribeCapacityProviders DescribeClusters DescribeContainerInstances DescribeServiceDeployments DescribeServiceRevisions DescribeServices DescribeTaskDefinition DescribeTasks DescribeTaskSets DiscoverPollEndpoint ExecuteCommand GetTaskProtection ListAccountSettings ListAttributes ListClusters ListContainerInstances ListServiceDeployments ListServices ListServicesByNamespace ListTagsForResource ListTaskDefinitionFamilies ListTaskDefinitions ListTasks PutAccountSetting PutAccountSettingDefault PutAttributes PutClusterCapacityProviders RegisterContainerInstance RegisterTaskDefinition RunTask StartTask StopServiceDeployment StopTask SubmitAttachmentStateChanges SubmitContainerStateChange SubmitTaskStateChange TagResource UntagResource UpdateCapacityProvider UpdateCluster UpdateClusterSettings UpdateContainerAgent UpdateContainerInstancesState UpdateService UpdateServicePrimaryTaskSet UpdateTaskProtection UpdateTaskSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS - Perl Interface to AWS Amazon EC2 Container Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ECS');
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

Amazon Elastic Container Service

Amazon Elastic Container Service (Amazon ECS) is a highly scalable,
fast, container management service. It makes it easy to run, stop, and
manage Docker containers. You can host your cluster on a serverless
infrastructure that's managed by Amazon ECS by launching your services
or tasks on Fargate. For more control, you can host your tasks on a
cluster of Amazon Elastic Compute Cloud (Amazon EC2) or External
(on-premises) instances that you manage.

Amazon ECS makes it easy to launch and stop container-based
applications with simple API calls. This makes it easy to get the state
of your cluster from a centralized service, and gives you access to
many familiar Amazon EC2 features.

You can use Amazon ECS to schedule the placement of containers across
your cluster based on your resource needs, isolation policies, and
availability requirements. With Amazon ECS, you don't need to operate
your own cluster management and configuration management systems. You
also don't need to worry about scaling your management infrastructure.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCapacityProvider

=over

=item AutoScalingGroupProvider => L<Paws::ECS::AutoScalingGroupProvider>

=item Name => Str

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateCapacityProvider>

Returns: a L<Paws::ECS::CreateCapacityProviderResponse> instance

Creates a new capacity provider. Capacity providers are associated with
an Amazon ECS cluster and are used in capacity provider strategies to
facilitate cluster auto scaling.

Only capacity providers that use an Auto Scaling group can be created.
Amazon ECS tasks on Fargate use the C<FARGATE> and C<FARGATE_SPOT>
capacity providers. These providers are available to all accounts in
the Amazon Web Services Regions that Fargate supports.


=head2 CreateCluster

=over

=item [CapacityProviders => ArrayRef[Str|Undef]]

=item [ClusterName => Str]

=item [Configuration => L<Paws::ECS::ClusterConfiguration>]

=item [DefaultCapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]]

=item [ServiceConnectDefaults => L<Paws::ECS::ClusterServiceConnectDefaultsRequest>]

=item [Settings => ArrayRef[L<Paws::ECS::ClusterSetting>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateCluster>

Returns: a L<Paws::ECS::CreateClusterResponse> instance

Creates a new Amazon ECS cluster. By default, your account receives a
C<default> cluster when you launch your first container instance.
However, you can create your own cluster with a unique name.

When you call the CreateCluster
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html)
API operation, Amazon ECS attempts to create the Amazon ECS
service-linked role for your account. This is so that it can manage
required resources in other Amazon Web Services services on your
behalf. However, if the user that makes the call doesn't have
permissions to create the service-linked role, it isn't created. For
more information, see Using service-linked roles for Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 CreateService

=over

=item ServiceName => Str

=item [AvailabilityZoneRebalancing => Str]

=item [CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]]

=item [ClientToken => Str]

=item [Cluster => Str]

=item [DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>]

=item [DeploymentController => L<Paws::ECS::DeploymentController>]

=item [DesiredCount => Int]

=item [EnableECSManagedTags => Bool]

=item [EnableExecuteCommand => Bool]

=item [HealthCheckGracePeriodSeconds => Int]

=item [LaunchType => Str]

=item [LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]]

=item [PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]]

=item [PlatformVersion => Str]

=item [PropagateTags => Str]

=item [Role => Str]

=item [SchedulingStrategy => Str]

=item [ServiceConnectConfiguration => L<Paws::ECS::ServiceConnectConfiguration>]

=item [ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [TaskDefinition => Str]

=item [VolumeConfigurations => ArrayRef[L<Paws::ECS::ServiceVolumeConfiguration>]]

=item [VpcLatticeConfigurations => ArrayRef[L<Paws::ECS::VpcLatticeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateService>

Returns: a L<Paws::ECS::CreateServiceResponse> instance

Runs and maintains your desired number of tasks from a specified task
definition. If the number of tasks running in a service drops below the
C<desiredCount>, Amazon ECS runs another copy of the task in the
specified cluster. To update an existing service, use UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html).

On March 21, 2024, a change was made to resolve the task definition
revision before authorization. When a task definition revision is not
specified, authorization will occur using the latest revision of a task
definition.

Amazon Elastic Inference (EI) is no longer available to customers.

In addition to maintaining the desired count of tasks in your service,
you can optionally run your service behind one or more load balancers.
The load balancers distribute traffic across the tasks that are
associated with the service. For more information, see Service load
balancing
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
the volume when creating or updating a service. C<volumeConfigurations>
is only supported for REPLICA service and not DAEMON service. For more
infomation, see Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>.

Tasks for services that don't use a load balancer are considered
healthy if they're in the C<RUNNING> state. Tasks for services that use
a load balancer are considered healthy if they're in the C<RUNNING>
state and are reported as healthy by the load balancer.

There are two service scheduler strategies available:

=over

=item *

C<REPLICA> - The replica scheduling strategy places and maintains your
desired number of tasks across your cluster. By default, the service
scheduler spreads tasks across Availability Zones. You can use task
placement strategies and constraints to customize task placement
decisions. For more information, see Service scheduler concepts
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=item *

C<DAEMON> - The daemon scheduling strategy deploys exactly one task on
each active container instance that meets all of the task placement
constraints that you specify in your cluster. The service scheduler
also evaluates the task placement constraints for running tasks. It
also stops tasks that don't meet the placement constraints. When using
this strategy, you don't need to specify a desired number of tasks, a
task placement strategy, or use Service Auto Scaling policies. For more
information, see Service scheduler concepts
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=back

You can optionally specify a deployment configuration for your service.
The deployment is initiated by changing properties. For example, the
deployment might be initiated by the task definition or by your desired
count of a service. You can use UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html).
The default value for a replica service for C<minimumHealthyPercent> is
100%. The default value for a daemon service for
C<minimumHealthyPercent> is 0%.

If a service uses the C<ECS> deployment controller, the minimum healthy
percent represents a lower limit on the number of tasks in a service
that must remain in the C<RUNNING> state during a deployment.
Specifically, it represents it as a percentage of your desired number
of tasks (rounded up to the nearest integer). This happens when any of
your container instances are in the C<DRAINING> state if the service
contains tasks using the EC2 launch type. Using this parameter, you can
deploy without using additional cluster capacity. For example, if you
set your service to have desired number of four tasks and a minimum
healthy percent of 50%, the scheduler might stop two existing tasks to
free up cluster capacity before starting two new tasks. If they're in
the C<RUNNING> state, tasks for services that don't use a load balancer
are considered healthy . If they're in the C<RUNNING> state and
reported as healthy by the load balancer, tasks for services that I<do>
use a load balancer are considered healthy . The default value for
minimum healthy percent is 100%.

If a service uses the C<ECS> deployment controller, the B<maximum
percent> parameter represents an upper limit on the number of tasks in
a service that are allowed in the C<RUNNING> or C<PENDING> state during
a deployment. Specifically, it represents it as a percentage of the
desired number of tasks (rounded down to the nearest integer). This
happens when any of your container instances are in the C<DRAINING>
state if the service contains tasks using the EC2 launch type. Using
this parameter, you can define the deployment batch size. For example,
if your service has a desired number of four tasks and a maximum
percent value of 200%, the scheduler may start four new tasks before
stopping the four older tasks (provided that the cluster resources
required to do this are available). The default value for maximum
percent is 200%.

If a service uses either the C<CODE_DEPLOY> or C<EXTERNAL> deployment
controller types and tasks that use the EC2 launch type, the B<minimum
healthy percent> and B<maximum percent> values are used only to define
the lower and upper limit on the number of the tasks in the service
that remain in the C<RUNNING> state. This is while the container
instances are in the C<DRAINING> state. If the tasks in the service use
the Fargate launch type, the minimum healthy percent and maximum
percent values aren't used. This is the case even if they're currently
visible when describing your service.

When creating a service that uses the C<EXTERNAL> deployment
controller, you can specify only parameters that aren't controlled at
the task set level. The only required parameter is the service name.
You control your services using the CreateTaskSet
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html).
For more information, see Amazon ECS deployment types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

When the service scheduler launches new tasks, it determines task
placement. For information about task placement and task placement
strategies, see Amazon ECS task placement
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html)
in the I<Amazon Elastic Container Service Developer Guide>


=head2 CreateTaskSet

=over

=item Cluster => Str

=item Service => Str

=item TaskDefinition => Str

=item [CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]]

=item [ClientToken => Str]

=item [ExternalId => Str]

=item [LaunchType => Str]

=item [LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [PlatformVersion => Str]

=item [Scale => L<Paws::ECS::Scale>]

=item [ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]


=back

Each argument is described in detail in: L<Paws::ECS::CreateTaskSet>

Returns: a L<Paws::ECS::CreateTaskSetResponse> instance

Create a task set in the specified cluster and service. This is used
when a service uses the C<EXTERNAL> deployment controller type. For
more information, see Amazon ECS deployment types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

On March 21, 2024, a change was made to resolve the task definition
revision before authorization. When a task definition revision is not
specified, authorization will occur using the latest revision of a task
definition.

For information about the maximum number of task sets and other quotas,
see Amazon ECS service quotas
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 DeleteAccountSetting

=over

=item Name => Str

=item [PrincipalArn => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteAccountSetting>

Returns: a L<Paws::ECS::DeleteAccountSettingResponse> instance

Disables an account setting for a specified user, role, or the root
user for an account.


=head2 DeleteAttributes

=over

=item Attributes => ArrayRef[L<Paws::ECS::Attribute>]

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteAttributes>

Returns: a L<Paws::ECS::DeleteAttributesResponse> instance

Deletes one or more custom attributes from an Amazon ECS resource.


=head2 DeleteCapacityProvider

=over

=item CapacityProvider => Str


=back

Each argument is described in detail in: L<Paws::ECS::DeleteCapacityProvider>

Returns: a L<Paws::ECS::DeleteCapacityProviderResponse> instance

Deletes the specified capacity provider.

The C<FARGATE> and C<FARGATE_SPOT> capacity providers are reserved and
can't be deleted. You can disassociate them from a cluster using either
PutClusterCapacityProviders
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)
or by deleting the cluster.

Prior to a capacity provider being deleted, the capacity provider must
be removed from the capacity provider strategy from all services. The
UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html)
API can be used to remove a capacity provider from a service's capacity
provider strategy. When updating a service, the C<forceNewDeployment>
option can be used to ensure that any tasks using the Amazon EC2
instance capacity provided by the capacity provider are transitioned to
use the capacity from the remaining capacity providers. Only capacity
providers that aren't associated with a cluster can be deleted. To
remove a capacity provider from a cluster, you can either use
PutClusterCapacityProviders
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)
or delete the cluster.


=head2 DeleteCluster

=over

=item Cluster => Str


=back

Each argument is described in detail in: L<Paws::ECS::DeleteCluster>

Returns: a L<Paws::ECS::DeleteClusterResponse> instance

Deletes the specified cluster. The cluster transitions to the
C<INACTIVE> state. Clusters with an C<INACTIVE> status might remain
discoverable in your account for a period of time. However, this
behavior is subject to change in the future. We don't recommend that
you rely on C<INACTIVE> clusters persisting.

You must deregister all container instances from this cluster before
you may delete it. You can list the container instances in a cluster
with ListContainerInstances
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html)
and deregister them with DeregisterContainerInstance
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html).


=head2 DeleteService

=over

=item Service => Str

=item [Cluster => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteService>

Returns: a L<Paws::ECS::DeleteServiceResponse> instance

Deletes a specified service within a cluster. You can delete a service
if you have no running tasks in it and the desired task count is zero.
If the service is actively maintaining tasks, you can't delete it, and
you must update the service to a desired task count of zero. For more
information, see UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html).

When you delete a service, if there are still running tasks that
require cleanup, the service status moves from C<ACTIVE> to
C<DRAINING>, and the service is no longer visible in the console or in
the ListServices
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html)
API operation. After all tasks have transitioned to either C<STOPPING>
or C<STOPPED> status, the service status moves from C<DRAINING> to
C<INACTIVE>. Services in the C<DRAINING> or C<INACTIVE> status can
still be viewed with the DescribeServices
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html)
API operation. However, in the future, C<INACTIVE> services may be
cleaned up and purged from Amazon ECS record keeping, and
DescribeServices
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html)
calls on those services return a C<ServiceNotFoundException> error.

If you attempt to create a new service with the same name as an
existing service in either C<ACTIVE> or C<DRAINING> status, you receive
an error.


=head2 DeleteTaskDefinitions

=over

=item TaskDefinitions => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteTaskDefinitions>

Returns: a L<Paws::ECS::DeleteTaskDefinitionsResponse> instance

Deletes one or more task definitions.

You must deregister a task definition revision before you delete it.
For more information, see DeregisterTaskDefinition
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html).

When you delete a task definition revision, it is immediately
transitions from the C<INACTIVE> to C<DELETE_IN_PROGRESS>. Existing
tasks and services that reference a C<DELETE_IN_PROGRESS> task
definition revision continue to run without disruption. Existing
services that reference a C<DELETE_IN_PROGRESS> task definition
revision can still scale up or down by modifying the service's desired
count.

You can't use a C<DELETE_IN_PROGRESS> task definition revision to run
new tasks or create new services. You also can't update an existing
service to reference a C<DELETE_IN_PROGRESS> task definition revision.

A task definition revision will stay in C<DELETE_IN_PROGRESS> status
until all the associated tasks and services have been terminated.

When you delete all C<INACTIVE> task definition revisions, the task
definition name is not displayed in the console and not returned in the
API. If a task definition revisions are in the C<DELETE_IN_PROGRESS>
state, the task definition name is displayed in the console and
returned in the API. The task definition name is retained by Amazon ECS
and the revision is incremented the next time you create a task
definition with that name.


=head2 DeleteTaskSet

=over

=item Cluster => Str

=item Service => Str

=item TaskSet => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::ECS::DeleteTaskSet>

Returns: a L<Paws::ECS::DeleteTaskSetResponse> instance

Deletes a specified task set within a service. This is used when a
service uses the C<EXTERNAL> deployment controller type. For more
information, see Amazon ECS deployment types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 DeregisterContainerInstance

=over

=item ContainerInstance => Str

=item [Cluster => Str]

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::ECS::DeregisterContainerInstance>

Returns: a L<Paws::ECS::DeregisterContainerInstanceResponse> instance

Deregisters an Amazon ECS container instance from the specified
cluster. This instance is no longer available to run tasks.

If you intend to use the container instance for some other purpose
after deregistration, we recommend that you stop all of the tasks
running on the container instance before deregistration. That prevents
any orphaned tasks from consuming resources.

Deregistering a container instance removes the instance from a cluster,
but it doesn't terminate the EC2 instance. If you are finished using
the instance, be sure to terminate it in the Amazon EC2 console to stop
billing.

If you terminate a running container instance, Amazon ECS automatically
deregisters the instance from your cluster (stopped container instances
or instances with disconnected agents aren't automatically deregistered
when terminated).


=head2 DeregisterTaskDefinition

=over

=item TaskDefinition => Str


=back

Each argument is described in detail in: L<Paws::ECS::DeregisterTaskDefinition>

Returns: a L<Paws::ECS::DeregisterTaskDefinitionResponse> instance

Deregisters the specified task definition by family and revision. Upon
deregistration, the task definition is marked as C<INACTIVE>. Existing
tasks and services that reference an C<INACTIVE> task definition
continue to run without disruption. Existing services that reference an
C<INACTIVE> task definition can still scale up or down by modifying the
service's desired count. If you want to delete a task definition
revision, you must first deregister the task definition revision.

You can't use an C<INACTIVE> task definition to run new tasks or create
new services, and you can't update an existing service to reference an
C<INACTIVE> task definition. However, there may be up to a 10-minute
window following deregistration where these restrictions have not yet
taken effect.

At this time, C<INACTIVE> task definitions remain discoverable in your
account indefinitely. However, this behavior is subject to change in
the future. We don't recommend that you rely on C<INACTIVE> task
definitions persisting beyond the lifecycle of any associated tasks and
services.

You must deregister a task definition revision before you delete it.
For more information, see DeleteTaskDefinitions
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html).


=head2 DescribeCapacityProviders

=over

=item [CapacityProviders => ArrayRef[Str|Undef]]

=item [Include => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeCapacityProviders>

Returns: a L<Paws::ECS::DescribeCapacityProvidersResponse> instance

Describes one or more of your capacity providers.


=head2 DescribeClusters

=over

=item [Clusters => ArrayRef[Str|Undef]]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeClusters>

Returns: a L<Paws::ECS::DescribeClustersResponse> instance

Describes one or more of your clusters.

For CLI examples, see describe-clusters.rst
(https://github.com/aws/aws-cli/blob/develop/awscli/examples/ecs/describe-clusters.rst)
on GitHub.


=head2 DescribeContainerInstances

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeContainerInstances>

Returns: a L<Paws::ECS::DescribeContainerInstancesResponse> instance

Describes one or more container instances. Returns metadata about each
container instance requested.


=head2 DescribeServiceDeployments

=over

=item ServiceDeploymentArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeServiceDeployments>

Returns: a L<Paws::ECS::DescribeServiceDeploymentsResponse> instance

Describes one or more of your service deployments.

A service deployment happens when you release a software update for the
service. For more information, see View service history using Amazon
ECS service deployments
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployment.html).


=head2 DescribeServiceRevisions

=over

=item ServiceRevisionArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeServiceRevisions>

Returns: a L<Paws::ECS::DescribeServiceRevisionsResponse> instance

Describes one or more service revisions.

A service revision is a version of the service that includes the values
for the Amazon ECS resources (for example, task definition) and the
environment resources (for example, load balancers, subnets, and
security groups). For more information, see Amazon ECS service
revisions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html).

You can't describe a service revision that was created before October
25, 2024.


=head2 DescribeServices

=over

=item Services => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeServices>

Returns: a L<Paws::ECS::DescribeServicesResponse> instance

Describes the specified services running in your cluster.


=head2 DescribeTaskDefinition

=over

=item TaskDefinition => Str

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeTaskDefinition>

Returns: a L<Paws::ECS::DescribeTaskDefinitionResponse> instance

Describes a task definition. You can specify a C<family> and
C<revision> to find information about a specific task definition, or
you can simply specify the family to find the latest C<ACTIVE> revision
in that family.

You can only describe C<INACTIVE> task definitions while an active task
or service references them.


=head2 DescribeTasks

=over

=item Tasks => ArrayRef[Str|Undef]

=item [Cluster => Str]

=item [Include => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeTasks>

Returns: a L<Paws::ECS::DescribeTasksResponse> instance

Describes a specified task or tasks.

Currently, stopped tasks appear in the returned results for at least
one hour.

If you have tasks with tags, and then delete the cluster, the tagged
tasks are returned in the response. If you create a new cluster with
the same name as the deleted cluster, the tagged tasks are not included
in the response.


=head2 DescribeTaskSets

=over

=item Cluster => Str

=item Service => Str

=item [Include => ArrayRef[Str|Undef]]

=item [TaskSets => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::DescribeTaskSets>

Returns: a L<Paws::ECS::DescribeTaskSetsResponse> instance

Describes the task sets in the specified cluster and service. This is
used when a service uses the C<EXTERNAL> deployment controller type.
For more information, see Amazon ECS Deployment Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 DiscoverPollEndpoint

=over

=item [Cluster => Str]

=item [ContainerInstance => Str]


=back

Each argument is described in detail in: L<Paws::ECS::DiscoverPollEndpoint>

Returns: a L<Paws::ECS::DiscoverPollEndpointResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Returns an endpoint for the Amazon ECS agent to poll for updates.


=head2 ExecuteCommand

=over

=item Command => Str

=item Interactive => Bool

=item Task => Str

=item [Cluster => Str]

=item [Container => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ExecuteCommand>

Returns: a L<Paws::ECS::ExecuteCommandResponse> instance

Runs a command remotely on a container within a task.

If you use a condition key in your IAM policy to refine the conditions
for the policy statement, for example limit the actions to a specific
cluster, you receive an C<AccessDeniedException> when there is a
mismatch between the condition key value and the corresponding
parameter value.

For information about required permissions and considerations, see
Using Amazon ECS Exec for debugging
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html)
in the I<Amazon ECS Developer Guide>.


=head2 GetTaskProtection

=over

=item Cluster => Str

=item [Tasks => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::GetTaskProtection>

Returns: a L<Paws::ECS::GetTaskProtectionResponse> instance

Retrieves the protection status of tasks in an Amazon ECS service.


=head2 ListAccountSettings

=over

=item [EffectiveSettings => Bool]

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [PrincipalArn => Str]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListAccountSettings>

Returns: a L<Paws::ECS::ListAccountSettingsResponse> instance

Lists the account settings for a specified principal.


=head2 ListAttributes

=over

=item TargetType => Str

=item [AttributeName => Str]

=item [AttributeValue => Str]

=item [Cluster => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListAttributes>

Returns: a L<Paws::ECS::ListAttributesResponse> instance

Lists the attributes for Amazon ECS resources within a specified target
type and cluster. When you specify a target type and cluster,
C<ListAttributes> returns a list of attribute objects, one for each
attribute on each resource. You can filter the list of results to a
single attribute name to only return results that have that name. You
can also filter the results by attribute name and value. You can do
this, for example, to see which container instances in a cluster are
running a Linux AMI (C<ecs.os-type=linux>).


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListClusters>

Returns: a L<Paws::ECS::ListClustersResponse> instance

Returns a list of existing clusters.


=head2 ListContainerInstances

=over

=item [Cluster => Str]

=item [Filter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListContainerInstances>

Returns: a L<Paws::ECS::ListContainerInstancesResponse> instance

Returns a list of container instances in a specified cluster. You can
filter the results of a C<ListContainerInstances> operation with
cluster query language statements inside the C<filter> parameter. For
more information, see Cluster Query Language
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 ListServiceDeployments

=over

=item Service => Str

=item [Cluster => Str]

=item [CreatedAt => L<Paws::ECS::CreatedAt>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ECS::ListServiceDeployments>

Returns: a L<Paws::ECS::ListServiceDeploymentsResponse> instance

This operation lists all the service deployments that meet the
specified filter criteria.

A service deployment happens when you release a software update for the
service. You route traffic from the running service revisions to the
new service revison and control the number of running tasks.

This API returns the values that you use for the request parameters in
DescribeServiceRevisions
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServiceRevisions.html).


=head2 ListServices

=over

=item [Cluster => Str]

=item [LaunchType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SchedulingStrategy => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListServices>

Returns: a L<Paws::ECS::ListServicesResponse> instance

Returns a list of services. You can filter the results by cluster,
launch type, and scheduling strategy.


=head2 ListServicesByNamespace

=over

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListServicesByNamespace>

Returns: a L<Paws::ECS::ListServicesByNamespaceResponse> instance

This operation lists all of the services that are associated with a
Cloud Map namespace. This list might include services in different
clusters. In contrast, C<ListServices> can only list services in one
cluster at a time. If you need to filter the list of services in a
single cluster by various parameters, use C<ListServices>. For more
information, see Service Connect
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ECS::ListTagsForResource>

Returns: a L<Paws::ECS::ListTagsForResourceResponse> instance

List the tags for an Amazon ECS resource.


=head2 ListTaskDefinitionFamilies

=over

=item [FamilyPrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitionFamilies>

Returns: a L<Paws::ECS::ListTaskDefinitionFamiliesResponse> instance

Returns a list of task definition families that are registered to your
account. This list includes task definition families that no longer
have any C<ACTIVE> task definition revisions.

You can filter out task definition families that don't contain any
C<ACTIVE> task definition revisions by setting the C<status> parameter
to C<ACTIVE>. You can also filter the results with the C<familyPrefix>
parameter.


=head2 ListTaskDefinitions

=over

=item [FamilyPrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTaskDefinitions>

Returns: a L<Paws::ECS::ListTaskDefinitionsResponse> instance

Returns a list of task definitions that are registered to your account.
You can filter the results by family name with the C<familyPrefix>
parameter or by status with the C<status> parameter.


=head2 ListTasks

=over

=item [Cluster => Str]

=item [ContainerInstance => Str]

=item [DesiredStatus => Str]

=item [Family => Str]

=item [LaunchType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceName => Str]

=item [StartedBy => Str]


=back

Each argument is described in detail in: L<Paws::ECS::ListTasks>

Returns: a L<Paws::ECS::ListTasksResponse> instance

Returns a list of tasks. You can filter the results by cluster, task
definition family, container instance, launch type, what IAM principal
started the task, or by the desired status of the task.

Recently stopped tasks might appear in the returned results.


=head2 PutAccountSetting

=over

=item Name => Str

=item Value => Str

=item [PrincipalArn => Str]


=back

Each argument is described in detail in: L<Paws::ECS::PutAccountSetting>

Returns: a L<Paws::ECS::PutAccountSettingResponse> instance

Modifies an account setting. Account settings are set on a per-Region
basis.

If you change the root user account setting, the default settings are
reset for users and roles that do not have specified individual account
settings. For more information, see Account Settings
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PutAccountSettingDefault

=over

=item Name => Str

=item Value => Str


=back

Each argument is described in detail in: L<Paws::ECS::PutAccountSettingDefault>

Returns: a L<Paws::ECS::PutAccountSettingDefaultResponse> instance

Modifies an account setting for all users on an account for whom no
individual account setting has been specified. Account settings are set
on a per-Region basis.


=head2 PutAttributes

=over

=item Attributes => ArrayRef[L<Paws::ECS::Attribute>]

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::PutAttributes>

Returns: a L<Paws::ECS::PutAttributesResponse> instance

Create or update an attribute on an Amazon ECS resource. If the
attribute doesn't exist, it's created. If the attribute exists, its
value is replaced with the specified value. To delete an attribute, use
DeleteAttributes
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html).
For more information, see Attributes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PutClusterCapacityProviders

=over

=item CapacityProviders => ArrayRef[Str|Undef]

=item Cluster => Str

=item DefaultCapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]


=back

Each argument is described in detail in: L<Paws::ECS::PutClusterCapacityProviders>

Returns: a L<Paws::ECS::PutClusterCapacityProvidersResponse> instance

Modifies the available capacity providers and the default capacity
provider strategy for a cluster.

You must specify both the available capacity providers and a default
capacity provider strategy for the cluster. If the specified cluster
has existing capacity providers associated with it, you must specify
all existing capacity providers in addition to any new ones you want to
add. Any existing capacity providers that are associated with a cluster
that are omitted from a PutClusterCapacityProviders
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html)
API call will be disassociated with the cluster. You can only
disassociate an existing capacity provider from a cluster if it's not
being used by any existing tasks.

When creating a service or running a task on a cluster, if no capacity
provider or launch type is specified, then the cluster's default
capacity provider strategy is used. We recommend that you define a
default capacity provider strategy for your cluster. However, you must
specify an empty array (C<[]>) to bypass defining a default strategy.


=head2 RegisterContainerInstance

=over

=item [Attributes => ArrayRef[L<Paws::ECS::Attribute>]]

=item [Cluster => Str]

=item [ContainerInstanceArn => Str]

=item [InstanceIdentityDocument => Str]

=item [InstanceIdentityDocumentSignature => Str]

=item [PlatformDevices => ArrayRef[L<Paws::ECS::PlatformDevice>]]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [TotalResources => ArrayRef[L<Paws::ECS::Resource>]]

=item [VersionInfo => L<Paws::ECS::VersionInfo>]


=back

Each argument is described in detail in: L<Paws::ECS::RegisterContainerInstance>

Returns: a L<Paws::ECS::RegisterContainerInstanceResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Registers an EC2 instance into the specified cluster. This instance
becomes available to place containers on.


=head2 RegisterTaskDefinition

=over

=item ContainerDefinitions => ArrayRef[L<Paws::ECS::ContainerDefinition>]

=item Family => Str

=item [Cpu => Str]

=item [EnableFaultInjection => Bool]

=item [EphemeralStorage => L<Paws::ECS::EphemeralStorage>]

=item [ExecutionRoleArn => Str]

=item [InferenceAccelerators => ArrayRef[L<Paws::ECS::InferenceAccelerator>]]

=item [IpcMode => Str]

=item [Memory => Str]

=item [NetworkMode => Str]

=item [PidMode => Str]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::TaskDefinitionPlacementConstraint>]]

=item [ProxyConfiguration => L<Paws::ECS::ProxyConfiguration>]

=item [RequiresCompatibilities => ArrayRef[Str|Undef]]

=item [RuntimePlatform => L<Paws::ECS::RuntimePlatform>]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [TaskRoleArn => Str]

=item [Volumes => ArrayRef[L<Paws::ECS::Volume>]]


=back

Each argument is described in detail in: L<Paws::ECS::RegisterTaskDefinition>

Returns: a L<Paws::ECS::RegisterTaskDefinitionResponse> instance

Registers a new task definition from the supplied C<family> and
C<containerDefinitions>. Optionally, you can add data volumes to your
containers with the C<volumes> parameter. For more information about
task definition parameters and defaults, see Amazon ECS Task
Definitions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can specify a role for your task with the C<taskRoleArn> parameter.
When you specify a role for a task, its containers can then use the
latest versions of the CLI or SDKs to make API requests to the Amazon
Web Services services that are specified in the policy that's
associated with the role. For more information, see IAM Roles for Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can specify a Docker networking mode for the containers in your
task definition with the C<networkMode> parameter. If you specify the
C<awsvpc> network mode, the task is allocated an elastic network
interface, and you must specify a NetworkConfiguration
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html)
when you create a service or run a task with the task definition. For
more information, see Task Networking
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 RunTask

=over

=item TaskDefinition => Str

=item [CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]]

=item [ClientToken => Str]

=item [Cluster => Str]

=item [Count => Int]

=item [EnableECSManagedTags => Bool]

=item [EnableExecuteCommand => Bool]

=item [Group => Str]

=item [LaunchType => Str]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [Overrides => L<Paws::ECS::TaskOverride>]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]]

=item [PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]]

=item [PlatformVersion => Str]

=item [PropagateTags => Str]

=item [ReferenceId => Str]

=item [StartedBy => Str]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [VolumeConfigurations => ArrayRef[L<Paws::ECS::TaskVolumeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ECS::RunTask>

Returns: a L<Paws::ECS::RunTaskResponse> instance

Starts a new task using the specified task definition.

On March 21, 2024, a change was made to resolve the task definition
revision before authorization. When a task definition revision is not
specified, authorization will occur using the latest revision of a task
definition.

Amazon Elastic Inference (EI) is no longer available to customers.

You can allow Amazon ECS to place tasks for you, or you can customize
how Amazon ECS places tasks using placement constraints and placement
strategies. For more information, see Scheduling Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Alternatively, you can use C<StartTask> to use your own scheduler or
place tasks manually on specific container instances.

You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
the volume when creating or updating a service. For more infomation,
see Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>.

The Amazon ECS API follows an eventual consistency model. This is
because of the distributed nature of the system supporting the API.
This means that the result of an API command you run that affects your
Amazon ECS resources might not be immediately visible to all subsequent
commands you run. Keep this in mind when you carry out an API command
that immediately follows a previous API command.

To manage eventual consistency, you can do the following:

=over

=item *

Confirm the state of the resource before you run a command to modify
it. Run the DescribeTasks command using an exponential backoff
algorithm to ensure that you allow enough time for the previous command
to propagate through the system. To do this, run the DescribeTasks
command repeatedly, starting with a couple of seconds of wait time and
increasing gradually up to five minutes of wait time.

=item *

Add wait time between subsequent commands, even if the DescribeTasks
command returns an accurate response. Apply an exponential backoff
algorithm starting with a couple of seconds of wait time, and increase
gradually up to about five minutes of wait time.

=back

If you get a C<ConflictException> error, the C<RunTask> request could
not be processed due to conflicts. The provided C<clientToken> is
already in use with a different C<RunTask> request. The C<resourceIds>
are the existing task ARNs which are already associated with the
C<clientToken>.

To fix this issue:

=over

=item *

Run C<RunTask> with a unique C<clientToken>.

=item *

Run C<RunTask> with the C<clientToken> and the original set of
parameters

=back

If you get a C<ClientException>error, the C<RunTask> could not be
processed because you use managed scaling and there is a capacity error
because the quota of tasks in the C<PROVISIONING> per cluster has been
reached. For information about the service quotas, see Amazon ECS
service quotas
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html).


=head2 StartTask

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item TaskDefinition => Str

=item [Cluster => Str]

=item [EnableECSManagedTags => Bool]

=item [EnableExecuteCommand => Bool]

=item [Group => Str]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [Overrides => L<Paws::ECS::TaskOverride>]

=item [PropagateTags => Str]

=item [ReferenceId => Str]

=item [StartedBy => Str]

=item [Tags => ArrayRef[L<Paws::ECS::Tag>]]

=item [VolumeConfigurations => ArrayRef[L<Paws::ECS::TaskVolumeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ECS::StartTask>

Returns: a L<Paws::ECS::StartTaskResponse> instance

Starts a new task from the specified task definition on the specified
container instance or instances.

On March 21, 2024, a change was made to resolve the task definition
revision before authorization. When a task definition revision is not
specified, authorization will occur using the latest revision of a task
definition.

Amazon Elastic Inference (EI) is no longer available to customers.

Alternatively, you can useC<RunTask> to place tasks for you. For more
information, see Scheduling Tasks
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html)
in the I<Amazon Elastic Container Service Developer Guide>.

You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
the volume when creating or updating a service. For more infomation,
see Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 StopServiceDeployment

=over

=item ServiceDeploymentArn => Str

=item [StopType => Str]


=back

Each argument is described in detail in: L<Paws::ECS::StopServiceDeployment>

Returns: a L<Paws::ECS::StopServiceDeploymentResponse> instance

Stops an ongoing service deployment.

The following stop types are avaiable:

=over

=item *

ROLLBACK - This option rolls back the service deployment to the
previous service revision.

You can use this option even if you didn't configure the service
deployment for the rollback option.

=back

For more information, see Stopping Amazon ECS service deployments
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/stop-service-deployment.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 StopTask

=over

=item Task => Str

=item [Cluster => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::ECS::StopTask>

Returns: a L<Paws::ECS::StopTaskResponse> instance

Stops a running task. Any tags associated with the task will be
deleted.

When you call C<StopTask> on a task, the equivalent of C<docker stop>
is issued to the containers running in the task. This results in a
C<SIGTERM> value and a default 30-second timeout, after which the
C<SIGKILL> value is sent and the containers are forcibly stopped. If
the container handles the C<SIGTERM> value gracefully and exits within
30 seconds from receiving it, no C<SIGKILL> value is sent.

For Windows containers, POSIX signals do not work and runtime stops the
container by sending a C<CTRL_SHUTDOWN_EVENT>. For more information,
see Unable to react to graceful shutdown of (Windows) container #25982
(https://github.com/moby/moby/issues/25982) on GitHub.

The default 30-second timeout can be configured on the Amazon ECS
container agent with the C<ECS_CONTAINER_STOP_TIMEOUT> variable. For
more information, see Amazon ECS Container Agent Configuration
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 SubmitAttachmentStateChanges

=over

=item Attachments => ArrayRef[L<Paws::ECS::AttachmentStateChange>]

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::SubmitAttachmentStateChanges>

Returns: a L<Paws::ECS::SubmitAttachmentStateChangesResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Sent to acknowledge that an attachment changed states.


=head2 SubmitContainerStateChange

=over

=item [Cluster => Str]

=item [ContainerName => Str]

=item [ExitCode => Int]

=item [NetworkBindings => ArrayRef[L<Paws::ECS::NetworkBinding>]]

=item [Reason => Str]

=item [RuntimeId => Str]

=item [Status => Str]

=item [Task => Str]


=back

Each argument is described in detail in: L<Paws::ECS::SubmitContainerStateChange>

Returns: a L<Paws::ECS::SubmitContainerStateChangeResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Sent to acknowledge that a container changed states.


=head2 SubmitTaskStateChange

=over

=item [Attachments => ArrayRef[L<Paws::ECS::AttachmentStateChange>]]

=item [Cluster => Str]

=item [Containers => ArrayRef[L<Paws::ECS::ContainerStateChange>]]

=item [ExecutionStoppedAt => Str]

=item [ManagedAgents => ArrayRef[L<Paws::ECS::ManagedAgentStateChange>]]

=item [PullStartedAt => Str]

=item [PullStoppedAt => Str]

=item [Reason => Str]

=item [Status => Str]

=item [Task => Str]


=back

Each argument is described in detail in: L<Paws::ECS::SubmitTaskStateChange>

Returns: a L<Paws::ECS::SubmitTaskStateChangeResponse> instance

This action is only used by the Amazon ECS agent, and it is not
intended for use outside of the agent.

Sent to acknowledge that a task changed states.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::ECS::Tag>]


=back

Each argument is described in detail in: L<Paws::ECS::TagResource>

Returns: a L<Paws::ECS::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted,
the tags that are associated with that resource are deleted as well.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ECS::UntagResource>

Returns: a L<Paws::ECS::UntagResourceResponse> instance

Deletes specified tags from a resource.


=head2 UpdateCapacityProvider

=over

=item AutoScalingGroupProvider => L<Paws::ECS::AutoScalingGroupProviderUpdate>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ECS::UpdateCapacityProvider>

Returns: a L<Paws::ECS::UpdateCapacityProviderResponse> instance

Modifies the parameters for a capacity provider.


=head2 UpdateCluster

=over

=item Cluster => Str

=item [Configuration => L<Paws::ECS::ClusterConfiguration>]

=item [ServiceConnectDefaults => L<Paws::ECS::ClusterServiceConnectDefaultsRequest>]

=item [Settings => ArrayRef[L<Paws::ECS::ClusterSetting>]]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateCluster>

Returns: a L<Paws::ECS::UpdateClusterResponse> instance

Updates the cluster.


=head2 UpdateClusterSettings

=over

=item Cluster => Str

=item Settings => ArrayRef[L<Paws::ECS::ClusterSetting>]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateClusterSettings>

Returns: a L<Paws::ECS::UpdateClusterSettingsResponse> instance

Modifies the settings to use for a cluster.


=head2 UpdateContainerAgent

=over

=item ContainerInstance => Str

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateContainerAgent>

Returns: a L<Paws::ECS::UpdateContainerAgentResponse> instance

Updates the Amazon ECS container agent on a specified container
instance. Updating the Amazon ECS container agent doesn't interrupt
running tasks or services on the container instance. The process for
updating the agent differs depending on whether your container instance
was launched with the Amazon ECS-optimized AMI or another operating
system.

The C<UpdateContainerAgent> API isn't supported for container instances
using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update
the container agent, you can update the C<ecs-init> package. This
updates the agent. For more information, see Updating the Amazon ECS
container agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Agent updates with the C<UpdateContainerAgent> API operation do not
apply to Windows container instances. We recommend that you launch new
container instances to update the agent version in your Windows
clusters.

The C<UpdateContainerAgent> API requires an Amazon ECS-optimized AMI or
Amazon Linux AMI with the C<ecs-init> service installed and running.
For help updating the Amazon ECS container agent on other operating
systems, see Manually updating the Amazon ECS container agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 UpdateContainerInstancesState

=over

=item ContainerInstances => ArrayRef[Str|Undef]

=item Status => Str

=item [Cluster => Str]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateContainerInstancesState>

Returns: a L<Paws::ECS::UpdateContainerInstancesStateResponse> instance

Modifies the status of an Amazon ECS container instance.

Once a container instance has reached an C<ACTIVE> state, you can
change the status of a container instance to C<DRAINING> to manually
remove an instance from a cluster, for example to perform system
updates, update the Docker daemon, or scale down the cluster size.

A container instance can't be changed to C<DRAINING> until it has
reached an C<ACTIVE> status. If the instance is in any other status, an
error will be received.

When you set a container instance to C<DRAINING>, Amazon ECS prevents
new tasks from being scheduled for placement on the container instance
and replacement service tasks are started on other container instances
in the cluster if the resources are available. Service tasks on the
container instance that are in the C<PENDING> state are stopped
immediately.

Service tasks on the container instance that are in the C<RUNNING>
state are stopped and replaced according to the service's deployment
configuration parameters, C<minimumHealthyPercent> and
C<maximumPercent>. You can change the deployment configuration of your
service using UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html).

=over

=item *

If C<minimumHealthyPercent> is below 100%, the scheduler can ignore
C<desiredCount> temporarily during task replacement. For example,
C<desiredCount> is four tasks, a minimum of 50% allows the scheduler to
stop two existing tasks before starting two new tasks. If the minimum
is 100%, the service scheduler can't remove existing tasks until the
replacement tasks are considered healthy. Tasks for services that do
not use a load balancer are considered healthy if they're in the
C<RUNNING> state. Tasks for services that use a load balancer are
considered healthy if they're in the C<RUNNING> state and are reported
as healthy by the load balancer.

=item *

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during task replacement. You can use this to define
the replacement batch size. For example, if C<desiredCount> is four
tasks, a maximum of 200% starts four new tasks before stopping the four
tasks to be drained, provided that the cluster resources required to do
this are available. If the maximum is 100%, then replacement tasks
can't start until the draining tasks have stopped.

=back

Any C<PENDING> or C<RUNNING> tasks that do not belong to a service
aren't affected. You must wait for them to finish or stop them
manually.

A container instance has completed draining when it has no more
C<RUNNING> tasks. You can verify this using ListTasks
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html).

When a container instance has been drained, you can set a container
instance to C<ACTIVE> status and once it has reached that status the
Amazon ECS scheduler can begin scheduling tasks on the instance again.


=head2 UpdateService

=over

=item Service => Str

=item [AvailabilityZoneRebalancing => Str]

=item [CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]]

=item [Cluster => Str]

=item [DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>]

=item [DesiredCount => Int]

=item [EnableECSManagedTags => Bool]

=item [EnableExecuteCommand => Bool]

=item [ForceNewDeployment => Bool]

=item [HealthCheckGracePeriodSeconds => Int]

=item [LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]]

=item [NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>]

=item [PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]]

=item [PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]]

=item [PlatformVersion => Str]

=item [PropagateTags => Str]

=item [ServiceConnectConfiguration => L<Paws::ECS::ServiceConnectConfiguration>]

=item [ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]]

=item [TaskDefinition => Str]

=item [VolumeConfigurations => ArrayRef[L<Paws::ECS::ServiceVolumeConfiguration>]]

=item [VpcLatticeConfigurations => ArrayRef[L<Paws::ECS::VpcLatticeConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateService>

Returns: a L<Paws::ECS::UpdateServiceResponse> instance

Modifies the parameters of a service.

On March 21, 2024, a change was made to resolve the task definition
revision before authorization. When a task definition revision is not
specified, authorization will occur using the latest revision of a task
definition.

For services using the rolling update (C<ECS>) you can update the
desired count, deployment configuration, network configuration, load
balancers, service registries, enable ECS managed tags option,
propagate tags option, task placement constraints and strategies, and
task definition. When you update any of these parameters, Amazon ECS
starts new tasks with the new configuration.

You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
the volume when starting or running a task, or when creating or
updating a service. For more infomation, see Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>. You can
update your volume configurations and trigger a new deployment.
C<volumeConfigurations> is only supported for REPLICA service and not
DAEMON service. If you leave C<volumeConfigurations> C<null>, it
doesn't trigger a new deployment. For more infomation on volumes, see
Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>.

For services using the blue/green (C<CODE_DEPLOY>) deployment
controller, only the desired count, deployment configuration, health
check grace period, task placement constraints and strategies, enable
ECS managed tags option, and propagate tags can be updated using this
API. If the network configuration, platform version, task definition,
or load balancer need to be updated, create a new CodeDeploy
deployment. For more information, see CreateDeployment
(https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html)
in the I<CodeDeploy API Reference>.

For services using an external deployment controller, you can update
only the desired count, task placement constraints and strategies,
health check grace period, enable ECS managed tags option, and
propagate tags option, using this API. If the launch type, load
balancer, network configuration, platform version, or task definition
need to be updated, create a new task set For more information, see
CreateTaskSet
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html).

You can add to or subtract from the number of instantiations of a task
definition in a service by specifying the cluster that the service is
running in and a new C<desiredCount> parameter.

You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
the volume when starting or running a task, or when creating or
updating a service. For more infomation, see Amazon EBS volumes
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types)
in the I<Amazon Elastic Container Service Developer Guide>.

If you have updated the container image of your application, you can
create a new task definition with that image and deploy it to your
service. The service scheduler uses the minimum healthy percent and
maximum percent parameters (in the service's deployment configuration)
to determine the deployment strategy.

If your updated Docker image uses the same tag as what is in the
existing task definition for your service (for example,
C<my_image:latest>), you don't need to create a new revision of your
task definition. You can update the service using the
C<forceNewDeployment> option. The new tasks launched by the deployment
pull the current image/tag combination from your repository when they
start.

You can also update the deployment configuration of a service. When a
deployment is triggered by updating the task definition of a service,
the service scheduler uses the deployment configuration parameters,
C<minimumHealthyPercent> and C<maximumPercent>, to determine the
deployment strategy.

=over

=item *

If C<minimumHealthyPercent> is below 100%, the scheduler can ignore
C<desiredCount> temporarily during a deployment. For example, if
C<desiredCount> is four tasks, a minimum of 50% allows the scheduler to
stop two existing tasks before starting two new tasks. Tasks for
services that don't use a load balancer are considered healthy if
they're in the C<RUNNING> state. Tasks for services that use a load
balancer are considered healthy if they're in the C<RUNNING> state and
are reported as healthy by the load balancer.

=item *

The C<maximumPercent> parameter represents an upper limit on the number
of running tasks during a deployment. You can use it to define the
deployment batch size. For example, if C<desiredCount> is four tasks, a
maximum of 200% starts four new tasks before stopping the four older
tasks (provided that the cluster resources required to do this are
available).

=back

When UpdateService
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html)
stops a task during a deployment, the equivalent of C<docker stop> is
issued to the containers running in the task. This results in a
C<SIGTERM> and a 30-second timeout. After this, C<SIGKILL> is sent and
the containers are forcibly stopped. If the container handles the
C<SIGTERM> gracefully and exits within 30 seconds from receiving it, no
C<SIGKILL> is sent.

When the service scheduler launches new tasks, it determines task
placement in your cluster with the following logic.

=over

=item *

Determine which of the container instances in your cluster can support
your service's task definition. For example, they have the required
CPU, memory, ports, and container instance attributes.

=item *

By default, the service scheduler attempts to balance tasks across
Availability Zones in this manner even though you can choose a
different placement strategy.

=over

=item *

Sort the valid container instances by the fewest number of running
tasks for this service in the same Availability Zone as the instance.
For example, if zone A has one running service task and zones B and C
each have zero, valid container instances in either zone B or C are
considered optimal for placement.

=item *

Place the new service task on a valid container instance in an optimal
Availability Zone (based on the previous steps), favoring container
instances with the fewest number of running tasks for this service.

=back

=back

When the service scheduler stops running tasks, it attempts to maintain
balance across the Availability Zones in your cluster using the
following logic:

=over

=item *

Sort the container instances by the largest number of running tasks for
this service in the same Availability Zone as the instance. For
example, if zone A has one running service task and zones B and C each
have two, container instances in either zone B or C are considered
optimal for termination.

=item *

Stop the task on a container instance in an optimal Availability Zone
(based on the previous steps), favoring container instances with the
largest number of running tasks for this service.

=back

You must have a service-linked role when you update any of the
following service properties:

=over

=item *

C<loadBalancers>,

=item *

C<serviceRegistries>

=back

For more information about the role see the C<CreateService> request
parameter C<role>
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role).


=head2 UpdateServicePrimaryTaskSet

=over

=item Cluster => Str

=item PrimaryTaskSet => Str

=item Service => Str


=back

Each argument is described in detail in: L<Paws::ECS::UpdateServicePrimaryTaskSet>

Returns: a L<Paws::ECS::UpdateServicePrimaryTaskSetResponse> instance

Modifies which task set in a service is the primary task set. Any
parameters that are updated on the primary task set in a service will
transition to the service. This is used when a service uses the
C<EXTERNAL> deployment controller type. For more information, see
Amazon ECS Deployment Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 UpdateTaskProtection

=over

=item Cluster => Str

=item ProtectionEnabled => Bool

=item Tasks => ArrayRef[Str|Undef]

=item [ExpiresInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::ECS::UpdateTaskProtection>

Returns: a L<Paws::ECS::UpdateTaskProtectionResponse> instance

Updates the protection status of a task. You can set
C<protectionEnabled> to C<true> to protect your task from termination
during scale-in events from Service Autoscaling
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
or deployments
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html).

Task-protection, by default, expires after 2 hours at which point
Amazon ECS clears the C<protectionEnabled> property making the task
eligible for termination by a subsequent scale-in event.

You can specify a custom expiration period for task protection from 1
minute to up to 2,880 minutes (48 hours). To specify the custom
expiration period, set the C<expiresInMinutes> property. The
C<expiresInMinutes> property is always reset when you invoke this
operation for a task that already has C<protectionEnabled> set to
C<true>. You can keep extending the protection expiration period of a
task by invoking this operation repeatedly.

To learn more about Amazon ECS task protection, see Task scale-in
protection
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html)
in the I< I<Amazon Elastic Container Service Developer Guide> >.

This operation is only supported for tasks belonging to an Amazon ECS
service. Invoking this operation for a standalone task will result in
an C<TASK_NOT_VALID> failure. For more information, see API failure
reasons
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html).

If you prefer to set task protection from within the container, we
recommend using the Task scale-in protection endpoint
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html).


=head2 UpdateTaskSet

=over

=item Cluster => Str

=item Scale => L<Paws::ECS::Scale>

=item Service => Str

=item TaskSet => Str


=back

Each argument is described in detail in: L<Paws::ECS::UpdateTaskSet>

Returns: a L<Paws::ECS::UpdateTaskSetResponse> instance

Modifies a task set. This is used when a service uses the C<EXTERNAL>
deployment controller type. For more information, see Amazon ECS
Deployment Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountSettings(sub { },[EffectiveSettings => Bool, MaxResults => Int, Name => Str, NextToken => Str, PrincipalArn => Str, Value => Str])

=head2 ListAllAccountSettings([EffectiveSettings => Bool, MaxResults => Int, Name => Str, NextToken => Str, PrincipalArn => Str, Value => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - settings, passing the object as the first parameter, and the string 'settings' as the second parameter 

If not, it will return a a L<Paws::ECS::ListAccountSettingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttributes(sub { },TargetType => Str, [AttributeName => Str, AttributeValue => Str, Cluster => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAttributes(TargetType => Str, [AttributeName => Str, AttributeValue => Str, Cluster => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - attributes, passing the object as the first parameter, and the string 'attributes' as the second parameter 

If not, it will return a a L<Paws::ECS::ListAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusterArns, passing the object as the first parameter, and the string 'clusterArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContainerInstances(sub { },[Cluster => Str, Filter => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllContainerInstances([Cluster => Str, Filter => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - containerInstanceArns, passing the object as the first parameter, and the string 'containerInstanceArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListContainerInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[Cluster => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, SchedulingStrategy => Str])

=head2 ListAllServices([Cluster => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, SchedulingStrategy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceArns, passing the object as the first parameter, and the string 'serviceArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServicesByNamespace(sub { },Namespace => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServicesByNamespace(Namespace => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceArns, passing the object as the first parameter, and the string 'serviceArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListServicesByNamespaceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskDefinitionFamilies(sub { },[FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllTaskDefinitionFamilies([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - families, passing the object as the first parameter, and the string 'families' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTaskDefinitionFamiliesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaskDefinitions(sub { },[FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Sort => Str, Status => Str])

=head2 ListAllTaskDefinitions([FamilyPrefix => Str, MaxResults => Int, NextToken => Str, Sort => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskDefinitionArns, passing the object as the first parameter, and the string 'taskDefinitionArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTaskDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTasks(sub { },[Cluster => Str, ContainerInstance => Str, DesiredStatus => Str, Family => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, ServiceName => Str, StartedBy => Str])

=head2 ListAllTasks([Cluster => Str, ContainerInstance => Str, DesiredStatus => Str, Family => Str, LaunchType => Str, MaxResults => Int, NextToken => Str, ServiceName => Str, StartedBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskArns, passing the object as the first parameter, and the string 'taskArns' as the second parameter 

If not, it will return a a L<Paws::ECS::ListTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


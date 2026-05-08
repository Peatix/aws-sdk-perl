package Paws::PCS;
  use Moose;
  sub service { 'pcs' }
  sub signing_name { 'pcs' }
  sub version { '2023-02-10' }
  sub target_prefix { 'AWSParallelComputingService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComputeNodeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::CreateComputeNodeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComputeNodeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::DeleteComputeNodeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::DeleteQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::GetCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComputeNodeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::GetComputeNodeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::GetQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComputeNodeGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::ListComputeNodeGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterComputeNodeGroupInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::RegisterComputeNodeGroupInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComputeNodeGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::UpdateComputeNodeGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PCS::UpdateQueue', @_);
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
  sub ListAllComputeNodeGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComputeNodeGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComputeNodeGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->computeNodeGroups }, @{ $next_result->computeNodeGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'computeNodeGroups') foreach (@{ $result->computeNodeGroups });
        $result = $self->ListComputeNodeGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'computeNodeGroups') foreach (@{ $result->computeNodeGroups });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListQueues(@_, nextToken => $next_result->nextToken);
        push @{ $result->queues }, @{ $next_result->queues };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'queues') foreach (@{ $result->queues });
        $result = $self->ListQueues(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'queues') foreach (@{ $result->queues });
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateComputeNodeGroup CreateQueue DeleteCluster DeleteComputeNodeGroup DeleteQueue GetCluster GetComputeNodeGroup GetQueue ListClusters ListComputeNodeGroups ListQueues ListTagsForResource RegisterComputeNodeGroupInstance TagResource UntagResource UpdateComputeNodeGroup UpdateQueue / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS - Perl Interface to AWS AWS Parallel Computing Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PCS');
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

Amazon Web Services Parallel Computing Service (Amazon Web Services
PCS) is a managed service that makes it easier for you to run and scale
your high performance computing (HPC) workloads, and build scientific
and engineering models on Amazon Web Services using Slurm. For more
information, see the Amazon Web Services Parallel Computing Service
User Guide (https://docs.aws.amazon.com/pcs/latest/userguide).

This reference describes the actions and data types of the service
management API. You can use the Amazon Web Services SDKs to call the
API actions in software, or use the Command Line Interface (CLI) to
call the API actions manually. These API actions manage the service
through an Amazon Web Services account.

The API actions operate on Amazon Web Services PCS resources. A
I<resource> is an entity in Amazon Web Services that you can work with.
Amazon Web Services services create resources when you use the features
of the service. Examples of Amazon Web Services PCS resources include
clusters, compute node groups, and queues. For more information about
resources in Amazon Web Services, see Resource
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-resource)
in the I<Resource Explorer User Guide>.

An Amazon Web Services PCS I<compute node> is an Amazon EC2 instance.
You don't launch compute nodes directly. Amazon Web Services PCS uses
configuration information that you provide to launch compute nodes in
your Amazon Web Services account. You receive billing charges for your
running compute nodes. Amazon Web Services PCS automatically terminates
your compute nodes when you delete the Amazon Web Services PCS
resources related to those compute nodes.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs-2023-02-10>


=head1 METHODS

=head2 CreateCluster

=over

=item ClusterName => Str

=item Networking => L<Paws::PCS::NetworkingRequest>

=item Scheduler => L<Paws::PCS::SchedulerRequest>

=item Size => Str

=item [ClientToken => Str]

=item [SlurmConfiguration => L<Paws::PCS::ClusterSlurmConfigurationRequest>]

=item [Tags => L<Paws::PCS::RequestTagMap>]


=back

Each argument is described in detail in: L<Paws::PCS::CreateCluster>

Returns: a L<Paws::PCS::CreateClusterResponse> instance

Creates a cluster in your account. Amazon Web Services PCS creates the
cluster controller in a service-owned account. The cluster controller
communicates with the cluster resources in your account. The subnets
and security groups for the cluster must already exist before you use
this API action.

It takes time for Amazon Web Services PCS to create the cluster. The
cluster is in a C<Creating> state until it is ready to use. There can
only be 1 cluster in a C<Creating> state per Amazon Web Services Region
per Amazon Web Services account. C<CreateCluster> fails with a
C<ServiceQuotaExceededException> if there is already a cluster in a
C<Creating> state.


=head2 CreateComputeNodeGroup

=over

=item ClusterIdentifier => Str

=item ComputeNodeGroupName => Str

=item CustomLaunchTemplate => L<Paws::PCS::CustomLaunchTemplate>

=item IamInstanceProfileArn => Str

=item InstanceConfigs => ArrayRef[L<Paws::PCS::InstanceConfig>]

=item ScalingConfiguration => L<Paws::PCS::ScalingConfigurationRequest>

=item SubnetIds => ArrayRef[Str|Undef]

=item [AmiId => Str]

=item [ClientToken => Str]

=item [PurchaseOption => Str]

=item [SlurmConfiguration => L<Paws::PCS::ComputeNodeGroupSlurmConfigurationRequest>]

=item [SpotOptions => L<Paws::PCS::SpotOptions>]

=item [Tags => L<Paws::PCS::RequestTagMap>]


=back

Each argument is described in detail in: L<Paws::PCS::CreateComputeNodeGroup>

Returns: a L<Paws::PCS::CreateComputeNodeGroupResponse> instance

Creates a managed set of compute nodes. You associate a compute node
group with a cluster through 1 or more Amazon Web Services PCS queues
or as part of the login fleet. A compute node group includes the
definition of the compute properties and lifecycle management. Amazon
Web Services PCS uses the information you provide to this API action to
launch compute nodes in your account. You can only specify subnets in
the same Amazon VPC as your cluster. You receive billing charges for
the compute nodes that Amazon Web Services PCS launches in your
account. You must already have a launch template before you call this
API. For more information, see Launch an instance from a launch
template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
in the I<Amazon Elastic Compute Cloud User Guide for Linux Instances>.


=head2 CreateQueue

=over

=item ClusterIdentifier => Str

=item QueueName => Str

=item [ClientToken => Str]

=item [ComputeNodeGroupConfigurations => ArrayRef[L<Paws::PCS::ComputeNodeGroupConfiguration>]]

=item [Tags => L<Paws::PCS::RequestTagMap>]


=back

Each argument is described in detail in: L<Paws::PCS::CreateQueue>

Returns: a L<Paws::PCS::CreateQueueResponse> instance

Creates a job queue. You must associate 1 or more compute node groups
with the queue. You can associate 1 compute node group with multiple
queues.


=head2 DeleteCluster

=over

=item ClusterIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::DeleteCluster>

Returns: a L<Paws::PCS::DeleteClusterResponse> instance

Deletes a cluster and all its linked resources. You must delete all
queues and compute node groups associated with the cluster before you
can delete the cluster.


=head2 DeleteComputeNodeGroup

=over

=item ClusterIdentifier => Str

=item ComputeNodeGroupIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::DeleteComputeNodeGroup>

Returns: a L<Paws::PCS::DeleteComputeNodeGroupResponse> instance

Deletes a compute node group. You must delete all queues associated
with the compute node group first.


=head2 DeleteQueue

=over

=item ClusterIdentifier => Str

=item QueueIdentifier => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::DeleteQueue>

Returns: a L<Paws::PCS::DeleteQueueResponse> instance

Deletes a job queue. If the compute node group associated with this
queue isn't associated with any other queues, Amazon Web Services PCS
terminates all the compute nodes for this queue.


=head2 GetCluster

=over

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PCS::GetCluster>

Returns: a L<Paws::PCS::GetClusterResponse> instance

Returns detailed information about a running cluster in your account.
This API action provides networking information, endpoint information
for communication with the scheduler, and provisioning status.


=head2 GetComputeNodeGroup

=over

=item ClusterIdentifier => Str

=item ComputeNodeGroupIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PCS::GetComputeNodeGroup>

Returns: a L<Paws::PCS::GetComputeNodeGroupResponse> instance

Returns detailed information about a compute node group. This API
action provides networking information, EC2 instance type, compute node
group status, and scheduler (such as Slurm) configuration.


=head2 GetQueue

=over

=item ClusterIdentifier => Str

=item QueueIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PCS::GetQueue>

Returns: a L<Paws::PCS::GetQueueResponse> instance

Returns detailed information about a queue. The information includes
the compute node groups that the queue uses to schedule jobs.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::ListClusters>

Returns: a L<Paws::PCS::ListClustersResponse> instance

Returns a list of running clusters in your account.


=head2 ListComputeNodeGroups

=over

=item ClusterIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::ListComputeNodeGroups>

Returns: a L<Paws::PCS::ListComputeNodeGroupsResponse> instance

Returns a list of all compute node groups associated with a cluster.


=head2 ListQueues

=over

=item ClusterIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::PCS::ListQueues>

Returns: a L<Paws::PCS::ListQueuesResponse> instance

Returns a list of all queues associated with a cluster.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::PCS::ListTagsForResource>

Returns: a L<Paws::PCS::ListTagsForResourceResponse> instance

Returns a list of all tags on an Amazon Web Services PCS resource.


=head2 RegisterComputeNodeGroupInstance

=over

=item BootstrapId => Str

=item ClusterIdentifier => Str


=back

Each argument is described in detail in: L<Paws::PCS::RegisterComputeNodeGroupInstance>

Returns: a L<Paws::PCS::RegisterComputeNodeGroupInstanceResponse> instance

This API action isn't intended for you to use.

Amazon Web Services PCS uses this API action to register the compute
nodes it launches in your account.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::PCS::RequestTagMap>


=back

Each argument is described in detail in: L<Paws::PCS::TagResource>

Returns: nothing

Adds or edits tags on an Amazon Web Services PCS resource. Each tag
consists of a tag key and a tag value. The tag key and tag value are
case-sensitive strings. The tag value can be an empty (null) string. To
add a tag, specify a new tag key and a tag value. To edit a tag,
specify an existing tag key and a new tag value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::PCS::UntagResource>

Returns: nothing

Deletes tags from an Amazon Web Services PCS resource. To delete a tag,
specify the tag key and the Amazon Resource Name (ARN) of the Amazon
Web Services PCS resource.


=head2 UpdateComputeNodeGroup

=over

=item ClusterIdentifier => Str

=item ComputeNodeGroupIdentifier => Str

=item [AmiId => Str]

=item [ClientToken => Str]

=item [CustomLaunchTemplate => L<Paws::PCS::CustomLaunchTemplate>]

=item [IamInstanceProfileArn => Str]

=item [PurchaseOption => Str]

=item [ScalingConfiguration => L<Paws::PCS::ScalingConfigurationRequest>]

=item [SlurmConfiguration => L<Paws::PCS::UpdateComputeNodeGroupSlurmConfigurationRequest>]

=item [SpotOptions => L<Paws::PCS::SpotOptions>]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::PCS::UpdateComputeNodeGroup>

Returns: a L<Paws::PCS::UpdateComputeNodeGroupResponse> instance

Updates a compute node group. You can update many of the fields related
to your compute node group including the configurations for networking,
compute nodes, and settings specific to your scheduler (such as Slurm).


=head2 UpdateQueue

=over

=item ClusterIdentifier => Str

=item QueueIdentifier => Str

=item [ClientToken => Str]

=item [ComputeNodeGroupConfigurations => ArrayRef[L<Paws::PCS::ComputeNodeGroupConfiguration>]]


=back

Each argument is described in detail in: L<Paws::PCS::UpdateQueue>

Returns: a L<Paws::PCS::UpdateQueueResponse> instance

Updates the compute node group configuration of a queue. Use this API
to change the compute node groups that the queue can send jobs to.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusters, passing the object as the first parameter, and the string 'clusters' as the second parameter 

If not, it will return a a L<Paws::PCS::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComputeNodeGroups(sub { },ClusterIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComputeNodeGroups(ClusterIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - computeNodeGroups, passing the object as the first parameter, and the string 'computeNodeGroups' as the second parameter 

If not, it will return a a L<Paws::PCS::ListComputeNodeGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },ClusterIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQueues(ClusterIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - queues, passing the object as the first parameter, and the string 'queues' as the second parameter 

If not, it will return a a L<Paws::PCS::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


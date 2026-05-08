package Paws::EFS;
  use Moose;
  sub service { 'elasticfilesystem' }
  sub signing_name { 'elasticfilesystem' }
  sub version { '2015-02-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMountTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateMountTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteAccessPoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFileSystemPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteFileSystemPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMountTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteMountTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteReplicationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteReplicationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccessPoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeAccessPoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeAccountPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeBackupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystemPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeFileSystemPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFileSystems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeFileSystems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMountTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeMountTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMountTargetSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeMountTargetSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReplicationConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeReplicationConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyMountTargetSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::ModifyMountTargetSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::PutAccountPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBackupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::PutBackupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFileSystemPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::PutFileSystemPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::PutLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileSystem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::UpdateFileSystem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFileSystemProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EFS::UpdateFileSystemProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAccessPoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccessPoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccessPoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccessPoints }, @{ $next_result->AccessPoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccessPoints') foreach (@{ $result->AccessPoints });
        $result = $self->DescribeAccessPoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccessPoints') foreach (@{ $result->AccessPoints });
    }

    return undef
  }
  sub DescribeAllFileSystems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeFileSystems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeFileSystems(@_, Marker => $next_result->NextMarker);
        push @{ $result->FileSystems }, @{ $next_result->FileSystems };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
        $result = $self->DescribeFileSystems(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'FileSystems') foreach (@{ $result->FileSystems });
    }

    return undef
  }
  sub DescribeAllMountTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMountTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeMountTargets(@_, Marker => $next_result->NextMarker);
        push @{ $result->MountTargets }, @{ $next_result->MountTargets };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'MountTargets') foreach (@{ $result->MountTargets });
        $result = $self->DescribeMountTargets(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'MountTargets') foreach (@{ $result->MountTargets });
    }

    return undef
  }
  sub DescribeAllReplicationConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReplicationConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReplicationConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Replications }, @{ $next_result->Replications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Replications') foreach (@{ $result->Replications });
        $result = $self->DescribeReplicationConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Replications') foreach (@{ $result->Replications });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeTags(@_, Marker => $next_result->NextMarker);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->DescribeTags(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }


  sub operations { qw/CreateAccessPoint CreateFileSystem CreateMountTarget CreateReplicationConfiguration CreateTags DeleteAccessPoint DeleteFileSystem DeleteFileSystemPolicy DeleteMountTarget DeleteReplicationConfiguration DeleteTags DescribeAccessPoints DescribeAccountPreferences DescribeBackupPolicy DescribeFileSystemPolicy DescribeFileSystems DescribeLifecycleConfiguration DescribeMountTargets DescribeMountTargetSecurityGroups DescribeReplicationConfigurations DescribeTags ListTagsForResource ModifyMountTargetSecurityGroups PutAccountPreferences PutBackupPolicy PutFileSystemPolicy PutLifecycleConfiguration TagResource UntagResource UpdateFileSystem UpdateFileSystemProtection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS - Perl Interface to AWS Amazon Elastic File System

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EFS');
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

Amazon Elastic File System

Amazon Elastic File System (Amazon EFS) provides simple, scalable file
storage for use with Amazon EC2 Linux and Mac instances in the Amazon
Web Services Cloud. With Amazon EFS, storage capacity is elastic,
growing and shrinking automatically as you add and remove files, so
that your applications have the storage they need, when they need it.
For more information, see the Amazon Elastic File System API Reference
(https://docs.aws.amazon.com/efs/latest/ug/api-reference.html) and the
Amazon Elastic File System User Guide
(https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem-2015-02-01>


=head1 METHODS

=head2 CreateAccessPoint

=over

=item ClientToken => Str

=item FileSystemId => Str

=item [PosixUser => L<Paws::EFS::PosixUser>]

=item [RootDirectory => L<Paws::EFS::RootDirectory>]

=item [Tags => ArrayRef[L<Paws::EFS::Tag>]]


=back

Each argument is described in detail in: L<Paws::EFS::CreateAccessPoint>

Returns: a L<Paws::EFS::AccessPointDescription> instance

Creates an EFS access point. An access point is an application-specific
view into an EFS file system that applies an operating system user and
group, and a file system path, to any file system request made through
the access point. The operating system user and group override any
identity information provided by the NFS client. The file system path
is exposed as the access point's root directory. Applications using the
access point can only access data in the application's own directory
and any subdirectories. To learn more, see Mounting a file system using
EFS access points
(https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html).

If multiple requests to create access points on the same file system
are sent in quick succession, and the file system is near the limit of
1,000 access points, you may experience a throttling response for these
requests. This is to ensure that the file system does not exceed the
stated access point limit.

This operation requires permissions for the
C<elasticfilesystem:CreateAccessPoint> action.

Access points can be tagged on creation. If tags are specified in the
creation action, IAM performs additional authorization on the
C<elasticfilesystem:TagResource> action to verify if users have
permissions to create tags. Therefore, you must grant explicit
permissions to use the C<elasticfilesystem:TagResource> action. For
more information, see Granting permissions to tag resources during
creation
(https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html).


=head2 CreateFileSystem

=over

=item CreationToken => Str

=item [AvailabilityZoneName => Str]

=item [Backup => Bool]

=item [Encrypted => Bool]

=item [KmsKeyId => Str]

=item [PerformanceMode => Str]

=item [ProvisionedThroughputInMibps => Num]

=item [Tags => ArrayRef[L<Paws::EFS::Tag>]]

=item [ThroughputMode => Str]


=back

Each argument is described in detail in: L<Paws::EFS::CreateFileSystem>

Returns: a L<Paws::EFS::FileSystemDescription> instance

Creates a new, empty file system. The operation requires a creation
token in the request that Amazon EFS uses to ensure idempotent creation
(calling the operation with same creation token has no effect). If a
file system does not currently exist that is owned by the caller's
Amazon Web Services account with the specified creation token, this
operation does the following:

=over

=item *

Creates a new, empty file system. The file system will have an Amazon
EFS assigned ID, and an initial lifecycle state C<creating>.

=item *

Returns with the description of the created file system.

=back

Otherwise, this operation returns a C<FileSystemAlreadyExists> error
with the ID of the existing file system.

For basic use cases, you can use a randomly generated UUID for the
creation token.

The idempotent operation allows you to retry a C<CreateFileSystem> call
without risk of creating an extra file system. This can happen when an
initial call fails in a way that leaves it uncertain whether or not a
file system was actually created. An example might be that a transport
level timeout occurred or your connection was reset. As long as you use
the same creation token, if the initial call had succeeded in creating
a file system, the client can learn of its existence from the
C<FileSystemAlreadyExists> error.

For more information, see Creating a file system
(https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1)
in the I<Amazon EFS User Guide>.

The C<CreateFileSystem> call returns while the file system's lifecycle
state is still C<creating>. You can check the file system creation
status by calling the DescribeFileSystems operation, which among other
things returns the file system state.

This operation accepts an optional C<PerformanceMode> parameter that
you choose for your file system. We recommend C<generalPurpose>
C<PerformanceMode> for all file systems. The C<maxIO> mode is a
previous generation performance type that is designed for highly
parallelized workloads that can tolerate higher latencies than the
C<generalPurpose> mode. C<MaxIO> mode is not supported for One Zone
file systems or file systems that use Elastic throughput.

The C<PerformanceMode> can't be changed after the file system has been
created. For more information, see Amazon EFS performance modes
(https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html).

You can set the throughput mode for the file system using the
C<ThroughputMode> parameter.

After the file system is fully created, Amazon EFS sets its lifecycle
state to C<available>, at which point you can create one or more mount
targets for the file system in your VPC. For more information, see
CreateMountTarget. You mount your Amazon EFS file system on an EC2
instances in your VPC by using the mount target. For more information,
see Amazon EFS: How it Works
(https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

This operation requires permissions for the
C<elasticfilesystem:CreateFileSystem> action.

File systems can be tagged on creation. If tags are specified in the
creation action, IAM performs additional authorization on the
C<elasticfilesystem:TagResource> action to verify if users have
permissions to create tags. Therefore, you must grant explicit
permissions to use the C<elasticfilesystem:TagResource> action. For
more information, see Granting permissions to tag resources during
creation
(https://docs.aws.amazon.com/efs/latest/ug/using-tags-efs.html#supported-iam-actions-tagging.html).


=head2 CreateMountTarget

=over

=item FileSystemId => Str

=item SubnetId => Str

=item [IpAddress => Str]

=item [SecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EFS::CreateMountTarget>

Returns: a L<Paws::EFS::MountTargetDescription> instance

Creates a mount target for a file system. You can then mount the file
system on EC2 instances by using the mount target.

You can create one mount target in each Availability Zone in your VPC.
All EC2 instances in a VPC within a given Availability Zone share a
single mount target for a given file system. If you have multiple
subnets in an Availability Zone, you create a mount target in one of
the subnets. EC2 instances do not need to be in the same subnet as the
mount target in order to access their file system.

You can create only one mount target for a One Zone file system. You
must create that mount target in the same Availability Zone in which
the file system is located. Use the C<AvailabilityZoneName> and
C<AvailabiltyZoneId> properties in the DescribeFileSystems response
object to get this information. Use the C<subnetId> associated with the
file system's Availability Zone when creating the mount target.

For more information, see Amazon EFS: How it Works
(https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

To create a mount target for a file system, the file system's lifecycle
state must be C<available>. For more information, see
DescribeFileSystems.

In the request, provide the following:

=over

=item *

The file system ID for which you are creating the mount target.

=item *

A subnet ID, which determines the following:

=over

=item *

The VPC in which Amazon EFS creates the mount target

=item *

The Availability Zone in which Amazon EFS creates the mount target

=item *

The IP address range from which Amazon EFS selects the IP address of
the mount target (if you don't specify an IP address in the request)

=back

=back

After creating the mount target, Amazon EFS returns a response that
includes, a C<MountTargetId> and an C<IpAddress>. You use this IP
address when mounting the file system in an EC2 instance. You can also
use the mount target's DNS name when mounting the file system. The EC2
instance on which you mount the file system by using the mount target
can resolve the mount target's DNS name to its IP address. For more
information, see How it Works: Implementation Overview
(https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

Note that you can create mount targets for a file system in only one
VPC, and there can be only one mount target per Availability Zone. That
is, if the file system already has one or more mount targets created
for it, the subnet specified in the request to add another mount target
must meet the following requirements:

=over

=item *

Must belong to the same VPC as the subnets of the existing mount
targets

=item *

Must not be in the same Availability Zone as any of the subnets of the
existing mount targets

=back

If the request satisfies the requirements, Amazon EFS does the
following:

=over

=item *

Creates a new mount target in the specified subnet.

=item *

Also creates a new network interface in the subnet as follows:

=over

=item *

If the request provides an C<IpAddress>, Amazon EFS assigns that IP
address to the network interface. Otherwise, Amazon EFS assigns a free
address in the subnet (in the same way that the Amazon EC2
C<CreateNetworkInterface> call does when a request does not specify a
primary private IP address).

=item *

If the request provides C<SecurityGroups>, this network interface is
associated with those security groups. Otherwise, it belongs to the
default security group for the subnet's VPC.

=item *

Assigns the description C<Mount target I<fsmt-id> for file system
I<fs-id> > where C< I<fsmt-id> > is the mount target ID, and C<
I<fs-id> > is the C<FileSystemId>.

=item *

Sets the C<requesterManaged> property of the network interface to
C<true>, and the C<requesterId> value to C<EFS>.

=back

Each Amazon EFS mount target has one corresponding requester-managed
EC2 network interface. After the network interface is created, Amazon
EFS sets the C<NetworkInterfaceId> field in the mount target's
description to the network interface ID, and the C<IpAddress> field to
its address. If network interface creation fails, the entire
C<CreateMountTarget> operation fails.

=back

The C<CreateMountTarget> call returns only after creating the network
interface, but while the mount target state is still C<creating>, you
can check the mount target creation status by calling the
DescribeMountTargets operation, which among other things returns the
mount target state.

We recommend that you create a mount target in each of the Availability
Zones. There are cost considerations for using a file system in an
Availability Zone through a mount target created in another
Availability Zone. For more information, see Amazon EFS
(http://aws.amazon.com/efs/). In addition, by always using a mount
target local to the instance's Availability Zone, you eliminate a
partial failure scenario. If the Availability Zone in which your mount
target is created goes down, then you can't access your file system
through that mount target.

This operation requires permissions for the following action on the
file system:

=over

=item *

C<elasticfilesystem:CreateMountTarget>

=back

This operation also requires permissions for the following Amazon EC2
actions:

=over

=item *

C<ec2:DescribeSubnets>

=item *

C<ec2:DescribeNetworkInterfaces>

=item *

C<ec2:CreateNetworkInterface>

=back



=head2 CreateReplicationConfiguration

=over

=item Destinations => ArrayRef[L<Paws::EFS::DestinationToCreate>]

=item SourceFileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::CreateReplicationConfiguration>

Returns: a L<Paws::EFS::ReplicationConfigurationDescription> instance

Creates a replication conguration to either a new or existing EFS file
system. For more information, see Amazon EFS replication
(https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html) in the
I<Amazon EFS User Guide>. The replication configuration specifies the
following:

=over

=item *

B<Source file system> E<ndash> The EFS file system that you want to
replicate.

=item *

B<Destination file system> E<ndash> The destination file system to
which the source file system is replicated. There can only be one
destination file system in a replication configuration.

A file system can be part of only one replication configuration.

The destination parameters for the replication configuration depend on
whether you are replicating to a new file system or to an existing file
system, and if you are replicating across Amazon Web Services accounts.
See DestinationToCreate for more information.

=back

This operation requires permissions for the
C<elasticfilesystem:CreateReplicationConfiguration> action.
Additionally, other permissions are required depending on how you are
replicating file systems. For more information, see Required
permissions for replication
(https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html#efs-replication-permissions)
in the I<Amazon EFS User Guide>.


=head2 CreateTags

=over

=item FileSystemId => Str

=item Tags => ArrayRef[L<Paws::EFS::Tag>]


=back

Each argument is described in detail in: L<Paws::EFS::CreateTags>

Returns: nothing

DEPRECATED - C<CreateTags> is deprecated and not maintained. To create
tags for EFS resources, use the API action.

Creates or overwrites tags associated with a file system. Each tag is a
key-value pair. If a tag key specified in the request already exists on
the file system, this operation overwrites its value with the value
provided in the request. If you add the C<Name> tag to your file
system, Amazon EFS returns it in the response to the
DescribeFileSystems operation.

This operation requires permission for the
C<elasticfilesystem:CreateTags> action.


=head2 DeleteAccessPoint

=over

=item AccessPointId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteAccessPoint>

Returns: nothing

Deletes the specified access point. After deletion is complete, new
clients can no longer connect to the access points. Clients connected
to the access point at the time of deletion will continue to function
until they terminate their connection.

This operation requires permissions for the
C<elasticfilesystem:DeleteAccessPoint> action.


=head2 DeleteFileSystem

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteFileSystem>

Returns: nothing

Deletes a file system, permanently severing access to its contents.
Upon return, the file system no longer exists and you can't access any
contents of the deleted file system.

You need to manually delete mount targets attached to a file system
before you can delete an EFS file system. This step is performed for
you when you use the Amazon Web Services console to delete a file
system.

You cannot delete a file system that is part of an EFS replication
configuration. You need to delete the replication configuration first.

You can't delete a file system that is in use. That is, if the file
system has any mount targets, you must first delete them. For more
information, see DescribeMountTargets and DeleteMountTarget.

The C<DeleteFileSystem> call returns while the file system state is
still C<deleting>. You can check the file system deletion status by
calling the DescribeFileSystems operation, which returns a list of file
systems in your account. If you pass file system ID or creation token
for the deleted file system, the DescribeFileSystems returns a C<404
FileSystemNotFound> error.

This operation requires permissions for the
C<elasticfilesystem:DeleteFileSystem> action.


=head2 DeleteFileSystemPolicy

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteFileSystemPolicy>

Returns: nothing

Deletes the C<FileSystemPolicy> for the specified file system. The
default C<FileSystemPolicy> goes into effect once the existing policy
is deleted. For more information about the default file system policy,
see Using Resource-based Policies with EFS
(https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html).

This operation requires permissions for the
C<elasticfilesystem:DeleteFileSystemPolicy> action.


=head2 DeleteMountTarget

=over

=item MountTargetId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DeleteMountTarget>

Returns: nothing

Deletes the specified mount target.

This operation forcibly breaks any mounts of the file system by using
the mount target that is being deleted, which might disrupt instances
or applications using those mounts. To avoid applications getting cut
off abruptly, you might consider unmounting any mounts of the mount
target, if feasible. The operation also deletes the associated network
interface. Uncommitted writes might be lost, but breaking a mount
target using this operation does not corrupt the file system itself.
The file system you created remains. You can mount an EC2 instance in
your VPC by using another mount target.

This operation requires permissions for the following action on the
file system:

=over

=item *

C<elasticfilesystem:DeleteMountTarget>

=back

The C<DeleteMountTarget> call returns while the mount target state is
still C<deleting>. You can check the mount target deletion by calling
the DescribeMountTargets operation, which returns a list of mount
target descriptions for the given file system.

The operation also requires permissions for the following Amazon EC2
action on the mount target's network interface:

=over

=item *

C<ec2:DeleteNetworkInterface>

=back



=head2 DeleteReplicationConfiguration

=over

=item SourceFileSystemId => Str

=item [DeletionMode => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DeleteReplicationConfiguration>

Returns: nothing

Deletes a replication configuration. Deleting a replication
configuration ends the replication process. After a replication
configuration is deleted, the destination file system becomes
C<Writeable> and its replication overwrite protection is re-enabled.
For more information, see Delete a replication configuration
(https://docs.aws.amazon.com/efs/latest/ug/delete-replications.html).

This operation requires permissions for the
C<elasticfilesystem:DeleteReplicationConfiguration> action.


=head2 DeleteTags

=over

=item FileSystemId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EFS::DeleteTags>

Returns: nothing

DEPRECATED - C<DeleteTags> is deprecated and not maintained. To remove
tags from EFS resources, use the API action.

Deletes the specified tags from a file system. If the C<DeleteTags>
request includes a tag key that doesn't exist, Amazon EFS ignores it
and doesn't cause an error. For more information about tags and related
restrictions, see Tag restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<Billing and Cost Management User Guide>.

This operation requires permissions for the
C<elasticfilesystem:DeleteTags> action.


=head2 DescribeAccessPoints

=over

=item [AccessPointId => Str]

=item [FileSystemId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeAccessPoints>

Returns: a L<Paws::EFS::DescribeAccessPointsResponse> instance

Returns the description of a specific Amazon EFS access point if the
C<AccessPointId> is provided. If you provide an EFS C<FileSystemId>, it
returns descriptions of all access points for that file system. You can
provide either an C<AccessPointId> or a C<FileSystemId> in the request,
but not both.

This operation requires permissions for the
C<elasticfilesystem:DescribeAccessPoints> action.


=head2 DescribeAccountPreferences

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeAccountPreferences>

Returns: a L<Paws::EFS::DescribeAccountPreferencesResponse> instance

Returns the account preferences settings for the Amazon Web Services
account associated with the user making the request, in the current
Amazon Web Services Region.


=head2 DescribeBackupPolicy

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DescribeBackupPolicy>

Returns: a L<Paws::EFS::BackupPolicyDescription> instance

Returns the backup policy for the specified EFS file system.


=head2 DescribeFileSystemPolicy

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DescribeFileSystemPolicy>

Returns: a L<Paws::EFS::FileSystemPolicyDescription> instance

Returns the C<FileSystemPolicy> for the specified EFS file system.

This operation requires permissions for the
C<elasticfilesystem:DescribeFileSystemPolicy> action.


=head2 DescribeFileSystems

=over

=item [CreationToken => Str]

=item [FileSystemId => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeFileSystems>

Returns: a L<Paws::EFS::DescribeFileSystemsResponse> instance

Returns the description of a specific Amazon EFS file system if either
the file system C<CreationToken> or the C<FileSystemId> is provided.
Otherwise, it returns descriptions of all file systems owned by the
caller's Amazon Web Services account in the Amazon Web Services Region
of the endpoint that you're calling.

When retrieving all file system descriptions, you can optionally
specify the C<MaxItems> parameter to limit the number of descriptions
in a response. This number is automatically set to 100. If more file
system descriptions remain, Amazon EFS returns a C<NextMarker>, an
opaque token, in the response. In this case, you should send a
subsequent request with the C<Marker> request parameter set to the
value of C<NextMarker>.

To retrieve a list of your file system descriptions, this operation is
used in an iterative process, where C<DescribeFileSystems> is called
first without the C<Marker> and then the operation continues to call it
with the C<Marker> parameter set to the value of the C<NextMarker> from
the previous response until the response has no C<NextMarker>.

The order of file systems returned in the response of one
C<DescribeFileSystems> call and the order of file systems returned
across the responses of a multi-call iteration is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeFileSystems> action.


=head2 DescribeLifecycleConfiguration

=over

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DescribeLifecycleConfiguration>

Returns: a L<Paws::EFS::LifecycleConfigurationDescription> instance

Returns the current C<LifecycleConfiguration> object for the specified
Amazon EFS file system. Lifecycle management uses the
C<LifecycleConfiguration> object to identify when to move files between
storage classes. For a file system without a C<LifecycleConfiguration>
object, the call returns an empty array in the response.

This operation requires permissions for the
C<elasticfilesystem:DescribeLifecycleConfiguration> operation.


=head2 DescribeMountTargets

=over

=item [AccessPointId => Str]

=item [FileSystemId => Str]

=item [Marker => Str]

=item [MaxItems => Int]

=item [MountTargetId => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeMountTargets>

Returns: a L<Paws::EFS::DescribeMountTargetsResponse> instance

Returns the descriptions of all the current mount targets, or a
specific mount target, for a file system. When requesting all of the
current mount targets, the order of mount targets returned in the
response is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeMountTargets> action, on either the file
system ID that you specify in C<FileSystemId>, or on the file system of
the mount target that you specify in C<MountTargetId>.


=head2 DescribeMountTargetSecurityGroups

=over

=item MountTargetId => Str


=back

Each argument is described in detail in: L<Paws::EFS::DescribeMountTargetSecurityGroups>

Returns: a L<Paws::EFS::DescribeMountTargetSecurityGroupsResponse> instance

Returns the security groups currently in effect for a mount target.
This operation requires that the network interface of the mount target
has been created and the lifecycle state of the mount target is not
C<deleted>.

This operation requires permissions for the following actions:

=over

=item *

C<elasticfilesystem:DescribeMountTargetSecurityGroups> action on the
mount target's file system.

=item *

C<ec2:DescribeNetworkInterfaceAttribute> action on the mount target's
network interface.

=back



=head2 DescribeReplicationConfigurations

=over

=item [FileSystemId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeReplicationConfigurations>

Returns: a L<Paws::EFS::DescribeReplicationConfigurationsResponse> instance

Retrieves the replication configuration for a specific file system. If
a file system is not specified, all of the replication configurations
for the Amazon Web Services account in an Amazon Web Services Region
are retrieved.


=head2 DescribeTags

=over

=item FileSystemId => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::EFS::DescribeTags>

Returns: a L<Paws::EFS::DescribeTagsResponse> instance

DEPRECATED - The C<DescribeTags> action is deprecated and not
maintained. To view tags associated with EFS resources, use the
C<ListTagsForResource> API action.

Returns the tags associated with a file system. The order of tags
returned in the response of one C<DescribeTags> call and the order of
tags returned across the responses of a multiple-call iteration (when
using pagination) is unspecified.

This operation requires permissions for the
C<elasticfilesystem:DescribeTags> action.


=head2 ListTagsForResource

=over

=item ResourceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EFS::ListTagsForResource>

Returns: a L<Paws::EFS::ListTagsForResourceResponse> instance

Lists all tags for a top-level EFS resource. You must provide the ID of
the resource that you want to retrieve the tags for.

This operation requires permissions for the
C<elasticfilesystem:DescribeAccessPoints> action.


=head2 ModifyMountTargetSecurityGroups

=over

=item MountTargetId => Str

=item [SecurityGroups => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::EFS::ModifyMountTargetSecurityGroups>

Returns: nothing

Modifies the set of security groups in effect for a mount target.

When you create a mount target, Amazon EFS also creates a new network
interface. For more information, see CreateMountTarget. This operation
replaces the security groups in effect for the network interface
associated with a mount target, with the C<SecurityGroups> provided in
the request. This operation requires that the network interface of the
mount target has been created and the lifecycle state of the mount
target is not C<deleted>.

The operation requires permissions for the following actions:

=over

=item *

C<elasticfilesystem:ModifyMountTargetSecurityGroups> action on the
mount target's file system.

=item *

C<ec2:ModifyNetworkInterfaceAttribute> action on the mount target's
network interface.

=back



=head2 PutAccountPreferences

=over

=item ResourceIdType => Str


=back

Each argument is described in detail in: L<Paws::EFS::PutAccountPreferences>

Returns: a L<Paws::EFS::PutAccountPreferencesResponse> instance

Use this operation to set the account preference in the current Amazon
Web Services Region to use long 17 character (63 bit) or short 8
character (32 bit) resource IDs for new EFS file system and mount
target resources. All existing resource IDs are not affected by any
changes you make. You can set the ID preference during the opt-in
period as EFS transitions to long resource IDs. For more information,
see Managing Amazon EFS resource IDs
(https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html).

Starting in October, 2021, you will receive an error if you try to set
the account preference to use the short 8 character format resource ID.
Contact Amazon Web Services support if you receive an error and must
use short IDs for file system and mount target resources.


=head2 PutBackupPolicy

=over

=item BackupPolicy => L<Paws::EFS::BackupPolicy>

=item FileSystemId => Str


=back

Each argument is described in detail in: L<Paws::EFS::PutBackupPolicy>

Returns: a L<Paws::EFS::BackupPolicyDescription> instance

Updates the file system's backup policy. Use this action to start or
stop automatic backups of the file system.


=head2 PutFileSystemPolicy

=over

=item FileSystemId => Str

=item Policy => Str

=item [BypassPolicyLockoutSafetyCheck => Bool]


=back

Each argument is described in detail in: L<Paws::EFS::PutFileSystemPolicy>

Returns: a L<Paws::EFS::FileSystemPolicyDescription> instance

Applies an Amazon EFS C<FileSystemPolicy> to an Amazon EFS file system.
A file system policy is an IAM resource-based policy and can contain
multiple policy statements. A file system always has exactly one file
system policy, which can be the default policy or an explicit policy
set or updated using this API operation. EFS file system policies have
a 20,000 character limit. When an explicit policy is set, it overrides
the default policy. For more information about the default file system
policy, see Default EFS file system policy
(https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy).

EFS file system policies have a 20,000 character limit.

This operation requires permissions for the
C<elasticfilesystem:PutFileSystemPolicy> action.


=head2 PutLifecycleConfiguration

=over

=item FileSystemId => Str

=item LifecyclePolicies => ArrayRef[L<Paws::EFS::LifecyclePolicy>]


=back

Each argument is described in detail in: L<Paws::EFS::PutLifecycleConfiguration>

Returns: a L<Paws::EFS::LifecycleConfigurationDescription> instance

Use this action to manage storage for your file system. A
C<LifecycleConfiguration> consists of one or more C<LifecyclePolicy>
objects that define the following:

=over

=item *

B<C<TransitionToIA> > E<ndash> When to move files in the file system
from primary storage (Standard storage class) into the Infrequent
Access (IA) storage.

=item *

B<C<TransitionToArchive> > E<ndash> When to move files in the file
system from their current storage class (either IA or Standard storage)
into the Archive storage.

File systems cannot transition into Archive storage before
transitioning into IA storage. Therefore, TransitionToArchive must
either not be set or must be later than TransitionToIA.

The Archive storage class is available only for file systems that use
the Elastic throughput mode and the General Purpose performance mode.

=back

=over

=item *

B<C<TransitionToPrimaryStorageClass> > E<ndash> Whether to move files
in the file system back to primary storage (Standard storage class)
after they are accessed in IA or Archive storage.

=back

For more information, see Managing file system storage
(https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html).

Each Amazon EFS file system supports one lifecycle configuration, which
applies to all files in the file system. If a C<LifecycleConfiguration>
object already exists for the specified file system, a
C<PutLifecycleConfiguration> call modifies the existing configuration.
A C<PutLifecycleConfiguration> call with an empty C<LifecyclePolicies>
array in the request body deletes any existing
C<LifecycleConfiguration>. In the request, specify the following:

=over

=item *

The ID for the file system for which you are enabling, disabling, or
modifying lifecycle management.

=item *

A C<LifecyclePolicies> array of C<LifecyclePolicy> objects that define
when to move files to IA storage, to Archive storage, and back to
primary storage.

Amazon EFS requires that each C<LifecyclePolicy> object have only have
a single transition, so the C<LifecyclePolicies> array needs to be
structured with separate C<LifecyclePolicy> objects. See the example
requests in the following section for more information.

=back

This operation requires permissions for the
C<elasticfilesystem:PutLifecycleConfiguration> operation.

To apply a C<LifecycleConfiguration> object to an encrypted file
system, you need the same Key Management Service permissions as when
you created the encrypted file system.


=head2 TagResource

=over

=item ResourceId => Str

=item Tags => ArrayRef[L<Paws::EFS::Tag>]


=back

Each argument is described in detail in: L<Paws::EFS::TagResource>

Returns: nothing

Creates a tag for an EFS resource. You can create tags for EFS file
systems and access points using this API operation.

This operation requires permissions for the
C<elasticfilesystem:TagResource> action.


=head2 UntagResource

=over

=item ResourceId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EFS::UntagResource>

Returns: nothing

Removes tags from an EFS resource. You can remove tags from EFS file
systems and access points using this API operation.

This operation requires permissions for the
C<elasticfilesystem:UntagResource> action.


=head2 UpdateFileSystem

=over

=item FileSystemId => Str

=item [ProvisionedThroughputInMibps => Num]

=item [ThroughputMode => Str]


=back

Each argument is described in detail in: L<Paws::EFS::UpdateFileSystem>

Returns: a L<Paws::EFS::FileSystemDescription> instance

Updates the throughput mode or the amount of provisioned throughput of
an existing file system.


=head2 UpdateFileSystemProtection

=over

=item FileSystemId => Str

=item [ReplicationOverwriteProtection => Str]


=back

Each argument is described in detail in: L<Paws::EFS::UpdateFileSystemProtection>

Returns: a L<Paws::EFS::FileSystemProtectionDescription> instance

Updates protection on the file system.

This operation requires permissions for the
C<elasticfilesystem:UpdateFileSystemProtection> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccessPoints(sub { },[AccessPointId => Str, FileSystemId => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllAccessPoints([AccessPointId => Str, FileSystemId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccessPoints, passing the object as the first parameter, and the string 'AccessPoints' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeAccessPointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllFileSystems(sub { },[CreationToken => Str, FileSystemId => Str, Marker => Str, MaxItems => Int])

=head2 DescribeAllFileSystems([CreationToken => Str, FileSystemId => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FileSystems, passing the object as the first parameter, and the string 'FileSystems' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeFileSystemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMountTargets(sub { },[AccessPointId => Str, FileSystemId => Str, Marker => Str, MaxItems => Int, MountTargetId => Str])

=head2 DescribeAllMountTargets([AccessPointId => Str, FileSystemId => Str, Marker => Str, MaxItems => Int, MountTargetId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MountTargets, passing the object as the first parameter, and the string 'MountTargets' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeMountTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReplicationConfigurations(sub { },[FileSystemId => Str, MaxResults => Int, NextToken => Str])

=head2 DescribeAllReplicationConfigurations([FileSystemId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Replications, passing the object as the first parameter, and the string 'Replications' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeReplicationConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },FileSystemId => Str, [Marker => Str, MaxItems => Int])

=head2 DescribeAllTags(FileSystemId => Str, [Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::EFS::DescribeTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


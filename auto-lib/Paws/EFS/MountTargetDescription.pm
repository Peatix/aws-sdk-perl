
package Paws::EFS::MountTargetDescription;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str');
  has AvailabilityZoneName => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str');
  has LifeCycleState => (is => 'ro', isa => 'Str', required => 1);
  has MountTargetId => (is => 'ro', isa => 'Str', required => 1);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has OwnerId => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::MountTargetDescription

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The unique and consistent identifier of the Availability Zone that the
mount target resides in. For example, C<use1-az1> is an AZ ID for the
us-east-1 Region and it has the same location in every Amazon Web
Services account.


=head2 AvailabilityZoneName => Str

The name of the Availability Zone in which the mount target is located.
Availability Zones are independently mapped to names for each Amazon
Web Services account. For example, the Availability Zone C<us-east-1a>
for your Amazon Web Services account might not be the same location as
C<us-east-1a> for another Amazon Web Services account.


=head2 B<REQUIRED> FileSystemId => Str

The ID of the file system for which the mount target is intended.


=head2 IpAddress => Str

Address at which the file system can be mounted by using the mount
target.


=head2 B<REQUIRED> LifeCycleState => Str

Lifecycle state of the mount target.

Valid values are: C<"creating">, C<"available">, C<"updating">, C<"deleting">, C<"deleted">, C<"error">
=head2 B<REQUIRED> MountTargetId => Str

System-assigned mount target ID.


=head2 NetworkInterfaceId => Str

The ID of the network interface that Amazon EFS created when it created
the mount target.


=head2 OwnerId => Str

Amazon Web Services account ID that owns the resource.


=head2 B<REQUIRED> SubnetId => Str

The ID of the mount target's subnet.


=head2 VpcId => Str

The virtual private cloud (VPC) ID that the mount target is configured
in.


=head2 _request_id => Str


=cut


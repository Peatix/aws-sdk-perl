
package Paws::Finspace::GetKxScalingGroupResponse;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has Clusters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'clusters');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has HostType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostType');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has ScalingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scalingGroupArn');
  has ScalingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scalingGroupName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxScalingGroupResponse

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The identifier of the availability zones.


=head2 Clusters => ArrayRef[Str|Undef]

The list of Managed kdb clusters that are currently active in the given
scaling group.


=head2 CreatedTimestamp => Str

The timestamp at which the scaling group was created in FinSpace. The
value is determined as epoch time in milliseconds. For example, the
value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
1635768000000.


=head2 HostType => Str

The memory and CPU capabilities of the scaling group host on which
FinSpace Managed kdb clusters will be placed.

It can have one of the following values:

=over

=item *

C<kx.sg.large> E<ndash> The host type with a configuration of 16 GiB
memory and 2 vCPUs.

=item *

C<kx.sg.xlarge> E<ndash> The host type with a configuration of 32 GiB
memory and 4 vCPUs.

=item *

C<kx.sg.2xlarge> E<ndash> The host type with a configuration of 64 GiB
memory and 8 vCPUs.

=item *

C<kx.sg.4xlarge> E<ndash> The host type with a configuration of 108 GiB
memory and 16 vCPUs.

=item *

C<kx.sg.8xlarge> E<ndash> The host type with a configuration of 216 GiB
memory and 32 vCPUs.

=item *

C<kx.sg.16xlarge> E<ndash> The host type with a configuration of 432
GiB memory and 64 vCPUs.

=item *

C<kx.sg.32xlarge> E<ndash> The host type with a configuration of 864
GiB memory and 128 vCPUs.

=item *

C<kx.sg1.16xlarge> E<ndash> The host type with a configuration of 1949
GiB memory and 64 vCPUs.

=item *

C<kx.sg1.24xlarge> E<ndash> The host type with a configuration of 2948
GiB memory and 96 vCPUs.

=back



=head2 LastModifiedTimestamp => Str

The last time that the scaling group was updated in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ScalingGroupArn => Str

The ARN identifier for the scaling group.


=head2 ScalingGroupName => Str

A unique identifier for the kdb scaling group.


=head2 Status => Str

The status of scaling group.

=over

=item *

CREATING E<ndash> The scaling group creation is in progress.

=item *

CREATE_FAILED E<ndash> The scaling group creation has failed.

=item *

ACTIVE E<ndash> The scaling group is active.

=item *

UPDATING E<ndash> The scaling group is in the process of being updated.

=item *

UPDATE_FAILED E<ndash> The update action failed.

=item *

DELETING E<ndash> The scaling group is in the process of being deleted.

=item *

DELETE_FAILED E<ndash> The system failed to delete the scaling group.

=item *

DELETED E<ndash> The scaling group is successfully deleted.

=back


Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"DELETE_FAILED">
=head2 StatusReason => Str

The error message when a failed state occurs.


=head2 _request_id => Str


=cut


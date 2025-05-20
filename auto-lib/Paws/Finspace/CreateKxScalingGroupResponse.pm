
package Paws::Finspace::CreateKxScalingGroupResponse;
  use Moose;
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has HostType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostType');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has ScalingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scalingGroupName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxScalingGroupResponse

=head1 ATTRIBUTES


=head2 AvailabilityZoneId => Str

The identifier of the availability zones.


=head2 CreatedTimestamp => Str

The timestamp at which the scaling group was created in FinSpace. The
value is determined as epoch time in milliseconds. For example, the
value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
1635768000000.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment, where you create the
scaling group.


=head2 HostType => Str

The memory and CPU capabilities of the scaling group host on which
FinSpace Managed kdb clusters will be placed.


=head2 LastModifiedTimestamp => Str

The last time that the scaling group was updated in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


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
=head2 _request_id => Str


=cut


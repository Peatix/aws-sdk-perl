
package Paws::Outposts::StartCapacityTaskOutput;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str');
  has CapacityTaskId => (is => 'ro', isa => 'Str');
  has CapacityTaskStatus => (is => 'ro', isa => 'Str');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Failed => (is => 'ro', isa => 'Paws::Outposts::CapacityTaskFailure');
  has InstancesToExclude => (is => 'ro', isa => 'Paws::Outposts::InstancesToExclude');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has OrderId => (is => 'ro', isa => 'Str');
  has OutpostId => (is => 'ro', isa => 'Str');
  has RequestedInstancePools => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::InstanceTypeCapacity]');
  has TaskActionOnBlockingInstances => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::StartCapacityTaskOutput

=head1 ATTRIBUTES


=head2 AssetId => Str

The ID of the asset. An Outpost asset can be a single server within an
Outposts rack or an Outposts server configuration.


=head2 CapacityTaskId => Str

ID of the capacity task that you want to start.


=head2 CapacityTaskStatus => Str

Status of the specified capacity task.

Valid values are: C<"REQUESTED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">, C<"WAITING_FOR_EVACUATION">, C<"CANCELLATION_IN_PROGRESS">, C<"CANCELLED">
=head2 CompletionDate => Str

Date that the specified capacity task ran successfully.


=head2 CreationDate => Str

Date that the specified capacity task was created.


=head2 DryRun => Bool

Results of the dry run showing if the specified capacity task is above
or below the available instance capacity.


=head2 Failed => L<Paws::Outposts::CapacityTaskFailure>

Reason that the specified capacity task failed.


=head2 InstancesToExclude => L<Paws::Outposts::InstancesToExclude>

User-specified instances that must not be stopped in order to free up
the capacity needed to run the capacity task.


=head2 LastModifiedDate => Str

Date that the specified capacity task was last modified.


=head2 OrderId => Str

ID of the Amazon Web Services Outposts order of the host associated
with the capacity task.


=head2 OutpostId => Str

ID of the Outpost associated with the capacity task.


=head2 RequestedInstancePools => ArrayRef[L<Paws::Outposts::InstanceTypeCapacity>]

List of the instance pools requested in the specified capacity task.


=head2 TaskActionOnBlockingInstances => Str

User-specified option in case an instance is blocking the capacity task
from running.

=over

=item *

C<WAIT_FOR_EVACUATION> - Checks every 10 minutes over 48 hours to
determine if instances have stopped and capacity is available to
complete the task.

=item *

C<FAIL_TASK> - The capacity task fails.

=back


Valid values are: C<"WAIT_FOR_EVACUATION">, C<"FAIL_TASK">
=head2 _request_id => Str


=cut


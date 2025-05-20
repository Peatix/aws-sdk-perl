
package Paws::Outposts::GetCapacityTaskOutput;
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

Paws::Outposts::GetCapacityTaskOutput

=head1 ATTRIBUTES


=head2 AssetId => Str

The ID of the Outpost asset. An Outpost asset can be a single server
within an Outposts rack or an Outposts server configuration.


=head2 CapacityTaskId => Str

ID of the capacity task.


=head2 CapacityTaskStatus => Str

Status of the capacity task.

A capacity task can have one of the following statuses:

=over

=item *

C<REQUESTED> - The capacity task was created and is awaiting the next
step by Amazon Web Services Outposts.

=item *

C<IN_PROGRESS> - The capacity task is running and cannot be cancelled.

=item *

C<FAILED> - The capacity task could not be completed.

=item *

C<COMPLETED> - The capacity task has completed successfully.

=item *

C<WAITING_FOR_EVACUATION> - The capacity task requires capacity to run.
You must stop the recommended EC2 running instances to free up capacity
for the task to run.

=item *

C<CANCELLATION_IN_PROGRESS> - The capacity task has been cancelled and
is in the process of cleaning up resources.

=item *

C<CANCELLED> - The capacity task is cancelled.

=back


Valid values are: C<"REQUESTED">, C<"IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">, C<"WAITING_FOR_EVACUATION">, C<"CANCELLATION_IN_PROGRESS">, C<"CANCELLED">
=head2 CompletionDate => Str

The date the capacity task ran successfully.


=head2 CreationDate => Str

The date the capacity task was created.


=head2 DryRun => Bool

Performs a dry run to determine if you are above or below instance
capacity.


=head2 Failed => L<Paws::Outposts::CapacityTaskFailure>

Reason why the capacity task failed.


=head2 InstancesToExclude => L<Paws::Outposts::InstancesToExclude>

Instances that the user specified they cannot stop in order to free up
the capacity needed to run the capacity task.


=head2 LastModifiedDate => Str

The date the capacity task was last modified.


=head2 OrderId => Str

ID of the Amazon Web Services Outposts order associated with the
specified capacity task.


=head2 OutpostId => Str

ID of the Outpost associated with the specified capacity task.


=head2 RequestedInstancePools => ArrayRef[L<Paws::Outposts::InstanceTypeCapacity>]

List of instance pools requested in the capacity task.


=head2 TaskActionOnBlockingInstances => Str

User-specified option in case an instance is blocking the capacity task
from running. Shows one of the following options:

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



package Paws::Deadline::GetQueueResponse;
  use Moose;
  has AllowedStorageProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'allowedStorageProfileIds');
  has BlockedReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blockedReason');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DefaultBudgetAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultBudgetAction', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'farmId', required => 1);
  has JobAttachmentSettings => (is => 'ro', isa => 'Paws::Deadline::JobAttachmentSettings', traits => ['NameInRequest'], request_name => 'jobAttachmentSettings');
  has JobRunAsUser => (is => 'ro', isa => 'Paws::Deadline::JobRunAsUser', traits => ['NameInRequest'], request_name => 'jobRunAsUser');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueId', required => 1);
  has RequiredFileSystemLocationNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'requiredFileSystemLocationNames');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetQueueResponse

=head1 ATTRIBUTES


=head2 AllowedStorageProfileIds => ArrayRef[Str|Undef]

The storage profile IDs for the queue.


=head2 BlockedReason => Str

The reason the queue was blocked.

Valid values are: C<"NO_BUDGET_CONFIGURED">, C<"BUDGET_THRESHOLD_REACHED">
=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 B<REQUIRED> DefaultBudgetAction => Str

The default action taken on a queue if a budget wasn't configured.

Valid values are: C<"NONE">, C<"STOP_SCHEDULING_AND_COMPLETE_TASKS">, C<"STOP_SCHEDULING_AND_CANCEL_TASKS">
=head2 Description => Str

The description of the queue.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> DisplayName => Str

The display name of the queue.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> FarmId => Str

The farm ID for the queue.


=head2 JobAttachmentSettings => L<Paws::Deadline::JobAttachmentSettings>

The job attachment settings for the queue.


=head2 JobRunAsUser => L<Paws::Deadline::JobRunAsUser>

The jobs in the queue ran as this specified POSIX user.


=head2 B<REQUIRED> QueueId => Str

The queue ID.


=head2 RequiredFileSystemLocationNames => ArrayRef[Str|Undef]

A list of the required file system location names in the queue.


=head2 RoleArn => Str

The IAM role ARN.


=head2 B<REQUIRED> Status => Str

The status of the queue.

=over

=item *

C<ACTIVE>E<ndash>The queue is active.

=item *

C<SCHEDULING>E<ndash>The queue is scheduling.

=item *

C<SCHEDULING_BLOCKED>E<ndash>The queue scheduling is blocked. See the
provided reason.

=back


Valid values are: C<"IDLE">, C<"SCHEDULING">, C<"SCHEDULING_BLOCKED">
=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 _request_id => Str


=cut


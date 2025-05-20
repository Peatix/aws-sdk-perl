
package Paws::Deadline::GetBudgetResponse;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::ResponseBudgetAction]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ApproximateDollarLimit => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'approximateDollarLimit', required => 1);
  has BudgetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'budgetId', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has QueueStoppedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueStoppedAt');
  has Schedule => (is => 'ro', isa => 'Paws::Deadline::BudgetSchedule', traits => ['NameInRequest'], request_name => 'schedule', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has Usages => (is => 'ro', isa => 'Paws::Deadline::ConsumedUsages', traits => ['NameInRequest'], request_name => 'usages', required => 1);
  has UsageTrackingResource => (is => 'ro', isa => 'Paws::Deadline::UsageTrackingResource', traits => ['NameInRequest'], request_name => 'usageTrackingResource', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetBudgetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Deadline::ResponseBudgetAction>]

The budget actions for the budget.


=head2 B<REQUIRED> ApproximateDollarLimit => Num

The consumed usage limit for the budget.


=head2 B<REQUIRED> BudgetId => Str

The budget ID.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the resource was created.


=head2 B<REQUIRED> CreatedBy => Str

The user or system that created this resource.


=head2 Description => Str

The description of the budget.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> DisplayName => Str

The display name of the budget.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 QueueStoppedAt => Str

The date and time the queue stopped.


=head2 B<REQUIRED> Schedule => L<Paws::Deadline::BudgetSchedule>

The budget schedule.


=head2 B<REQUIRED> Status => Str

The status of the budget.

=over

=item *

C<ACTIVE>E<ndash>Get a budget being evaluated.

=item *

C<INACTIVE>E<ndash>Get an inactive budget. This can include expired,
canceled, or deleted statuses.

=back


Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 UpdatedAt => Str

The date and time the resource was updated.


=head2 UpdatedBy => Str

The user or system that updated this resource.


=head2 B<REQUIRED> Usages => L<Paws::Deadline::ConsumedUsages>

The usages of the budget.


=head2 B<REQUIRED> UsageTrackingResource => L<Paws::Deadline::UsageTrackingResource>

The resource that the budget is tracking usage for.


=head2 _request_id => Str


=cut


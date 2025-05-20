
package Paws::KendraRanking::DescribeRescoreExecutionPlanResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CapacityUnits => (is => 'ro', isa => 'Paws::KendraRanking::CapacityUnitsConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::DescribeRescoreExecutionPlanResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the rescore execution plan.


=head2 CapacityUnits => L<Paws::KendraRanking::CapacityUnitsConfiguration>

The capacity units set for the rescore execution plan. A capacity of
zero indicates that the rescore execution plan is using the default
capacity. For more information on the default capacity and additional
capacity units, see Adjusting capacity
(https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).


=head2 CreatedAt => Str

The Unix timestamp of when the rescore execution plan was created.


=head2 Description => Str

The description for the rescore execution plan.


=head2 ErrorMessage => Str

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a message that explains why.


=head2 Id => Str

The identifier of the rescore execution plan.


=head2 Name => Str

The name for the rescore execution plan.


=head2 Status => Str

The current status of the rescore execution plan. When the value is
C<ACTIVE>, the rescore execution plan is ready for use. If the
C<Status> field value is C<FAILED>, the C<ErrorMessage> field contains
a message that explains why.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 UpdatedAt => Str

The Unix timestamp of when the rescore execution plan was last updated.


=head2 _request_id => Str


=cut

1;
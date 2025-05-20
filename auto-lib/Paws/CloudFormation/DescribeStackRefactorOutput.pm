
package Paws::CloudFormation::DescribeStackRefactorOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionStatus => (is => 'ro', isa => 'Str');
  has ExecutionStatusReason => (is => 'ro', isa => 'Str');
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackRefactorId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackRefactorOutput

=head1 ATTRIBUTES


=head2 Description => Str

A description to help you identify the refactor.


=head2 ExecutionStatus => Str

The stack refactor execution operation status that's provided after
calling the ExecuteStackRefactor action.

Valid values are: C<"UNAVAILABLE">, C<"AVAILABLE">, C<"OBSOLETE">, C<"EXECUTE_IN_PROGRESS">, C<"EXECUTE_COMPLETE">, C<"EXECUTE_FAILED">, C<"ROLLBACK_IN_PROGRESS">, C<"ROLLBACK_COMPLETE">, C<"ROLLBACK_FAILED">
=head2 ExecutionStatusReason => Str

A detailed explanation for the stack refactor C<ExecutionStatus>.


=head2 StackIds => ArrayRef[Str|Undef]

The unique ID for each stack.


=head2 StackRefactorId => Str

The ID associated with the stack refactor created from the
CreateStackRefactor action.


=head2 Status => Str

The stack refactor operation status that's provided after calling the
CreateStackRefactor action.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"CREATE_FAILED">, C<"DELETE_IN_PROGRESS">, C<"DELETE_COMPLETE">, C<"DELETE_FAILED">
=head2 StatusReason => Str

A detailed explanation for the stack refactor operation C<Status>.


=head2 _request_id => Str


=cut


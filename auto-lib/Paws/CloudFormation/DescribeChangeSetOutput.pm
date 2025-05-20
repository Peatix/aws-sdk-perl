
package Paws::CloudFormation::DescribeChangeSetOutput;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Changes => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Change]');
  has ChangeSetId => (is => 'ro', isa => 'Str');
  has ChangeSetName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionStatus => (is => 'ro', isa => 'Str');
  has ImportExistingResources => (is => 'ro', isa => 'Bool');
  has IncludeNestedStacks => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OnStackFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has ParentChangeSetId => (is => 'ro', isa => 'Str');
  has RollbackConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::RollbackConfiguration');
  has RootChangeSetId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeChangeSetOutput

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

If you execute the change set, the list of capabilities that were
explicitly acknowledged when the change set was created.


=head2 Changes => ArrayRef[L<Paws::CloudFormation::Change>]

A list of C<Change> structures that describes the resources
CloudFormation changes if you execute the change set.


=head2 ChangeSetId => Str

The Amazon Resource Name (ARN) of the change set.


=head2 ChangeSetName => Str

The name of the change set.


=head2 CreationTime => Str

The start time when the change set was created, in UTC.


=head2 Description => Str

Information about the change set.


=head2 ExecutionStatus => Str

If the change set execution status is C<AVAILABLE>, you can execute the
change set. If you can't execute the change set, the status indicates
why. For example, a change set might be in an C<UNAVAILABLE> state
because CloudFormation is still creating it or in an C<OBSOLETE> state
because the stack was already updated.

Valid values are: C<"UNAVAILABLE">, C<"AVAILABLE">, C<"EXECUTE_IN_PROGRESS">, C<"EXECUTE_COMPLETE">, C<"EXECUTE_FAILED">, C<"OBSOLETE">
=head2 ImportExistingResources => Bool

Indicates if the change set imports resources that already exist.

This parameter can only import resources that have custom names
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html)
in templates. To import resources that do not accept custom names, such
as EC2 instances, use the resource import
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import.html)
feature instead.


=head2 IncludeNestedStacks => Bool

Verifies if C<IncludeNestedStacks> is set to C<True>.


=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
changes. If there is no additional page, this value is null.


=head2 NotificationARNs => ArrayRef[Str|Undef]

The ARNs of the Amazon SNS topics that will be associated with the
stack if you execute the change set.


=head2 OnStackFailure => Str

Determines what action will be taken if stack creation fails. When this
parameter is specified, the C<DisableRollback> parameter to the
ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation must not be specified. This must be one of these values:

=over

=item *

C<DELETE> - Deletes the change set if the stack creation fails. This is
only valid when the C<ChangeSetType> parameter is set to C<CREATE>. If
the deletion of the stack fails, the status of the stack is
C<DELETE_FAILED>.

=item *

C<DO_NOTHING> - if the stack creation fails, do nothing. This is
equivalent to specifying C<true> for the C<DisableRollback> parameter
to the ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation.

=item *

C<ROLLBACK> - if the stack creation fails, roll back the stack. This is
equivalent to specifying C<false> for the C<DisableRollback> parameter
to the ExecuteChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ExecuteChangeSet.html)
API operation.

=back


Valid values are: C<"DO_NOTHING">, C<"ROLLBACK">, C<"DELETE">
=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

A list of C<Parameter> structures that describes the input parameters
and their values used to create the change set. For more information,
see the Parameter
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html)
data type.


=head2 ParentChangeSetId => Str

Specifies the change set ID of the parent change set in the current
nested change set hierarchy.


=head2 RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>

The rollback triggers for CloudFormation to monitor during stack
creation and updating operations, and for the specified monitoring
period afterwards.


=head2 RootChangeSetId => Str

Specifies the change set ID of the root change set in the current
nested change set hierarchy.


=head2 StackId => Str

The Amazon Resource Name (ARN) of the stack that's associated with the
change set.


=head2 StackName => Str

The name of the stack that's associated with the change set.


=head2 Status => Str

The current status of the change set, such as C<CREATE_PENDING>,
C<CREATE_COMPLETE>, or C<FAILED>.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_COMPLETE">, C<"DELETE_FAILED">, C<"FAILED">
=head2 StatusReason => Str

A description of the change set's status. For example, if your attempt
to create a change set failed, CloudFormation shows the error message.


=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

If you execute the change set, the tags that will be associated with
the stack.


=head2 _request_id => Str


=cut


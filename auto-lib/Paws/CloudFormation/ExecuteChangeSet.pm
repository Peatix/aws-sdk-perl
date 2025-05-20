
package Paws::CloudFormation::ExecuteChangeSet;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has RetainExceptOnCreate => (is => 'ro', isa => 'Bool');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ExecuteChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExecuteChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ExecuteChangeSet - Arguments for method ExecuteChangeSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteChangeSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ExecuteChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteChangeSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ExecuteChangeSetOutput = $cloudformation->ExecuteChangeSet(
      ChangeSetName        => 'MyChangeSetNameOrId',
      ClientRequestToken   => 'MyClientRequestToken',    # OPTIONAL
      DisableRollback      => 1,                         # OPTIONAL
      RetainExceptOnCreate => 1,                         # OPTIONAL
      StackName            => 'MyStackNameOrId',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ExecuteChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeSetName => Str

The name or Amazon Resource Name (ARN) of the change set that you want
use to update the specified stack.



=head2 ClientRequestToken => Str

A unique identifier for this C<ExecuteChangeSet> request. Specify this
token if you plan to retry requests so that CloudFormation knows that
you're not attempting to execute a change set to update a stack with
the same name. You might retry C<ExecuteChangeSet> requests to ensure
that CloudFormation successfully received them.



=head2 DisableRollback => Bool

Preserves the state of previously provisioned resources when an
operation fails. This parameter can't be specified when the
C<OnStackFailure> parameter to the CreateChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html)
API operation was specified.

=over

=item *

C<True> - if the stack creation fails, do nothing. This is equivalent
to specifying C<DO_NOTHING> for the C<OnStackFailure> parameter to the
CreateChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html)
API operation.

=item *

C<False> - if the stack creation fails, roll back the stack. This is
equivalent to specifying C<ROLLBACK> for the C<OnStackFailure>
parameter to the CreateChangeSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html)
API operation.

=back

Default: C<True>



=head2 RetainExceptOnCreate => Bool

When set to C<true>, newly created resources are deleted when the
operation rolls back. This includes newly created resources marked with
a deletion policy of C<Retain>.

Default: C<false>



=head2 StackName => Str

If you specified the name of a change set, specify the stack name or
Amazon Resource Name (ARN) that's associated with the change set you
want to execute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


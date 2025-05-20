
package Paws::CloudFormation::ListHookResultsOutput;
  use Moose;
  has HookResults => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::HookResultSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListHookResultsOutput

=head1 ATTRIBUTES


=head2 HookResults => ArrayRef[L<Paws::CloudFormation::HookResultSummary>]

A list of C<HookResultSummary> structures that provides the status and
Hook status reason for each Hook invocation for the specified target.


=head2 NextToken => Str

Pagination token, C<null> or empty if no more results.


=head2 TargetId => Str

The logical ID of the target the operation is acting on by the Hook. If
the target is a change set, it's the ARN of the change set.

If the target is a Cloud Control API operation, this will be the
C<HooksRequestToken> returned by the Cloud Control API operation
request. For more information on the C<HooksRequestToken>, see
ProgressEvent
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_ProgressEvent.html).


=head2 TargetType => Str

The type of operation being targeted by the Hook.

Valid values are: C<"CHANGE_SET">, C<"STACK">, C<"RESOURCE">, C<"CLOUD_CONTROL">
=head2 _request_id => Str


=cut


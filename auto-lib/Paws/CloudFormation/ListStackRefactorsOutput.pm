
package Paws::CloudFormation::ListStackRefactorsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackRefactorSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackRefactorSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackRefactorsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call this
action again and assign that token to the request object's C<NextToken>
parameter. If the request returns all results, C<NextToken> is set to
C<null>.


=head2 B<REQUIRED> StackRefactorSummaries => ArrayRef[L<Paws::CloudFormation::StackRefactorSummary>]

Provides a summary of a stack refactor, including the following:

=over

=item *

C<StackRefactorId>

=item *

C<Status>

=item *

C<StatusReason>

=item *

C<ExecutionStatus>

=item *

C<ExecutionStatusReason>

=item *

C<Description>

=back



=head2 _request_id => Str


=cut


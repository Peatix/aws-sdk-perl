
package Paws::IoT::ListCommandExecutionsResponse;
  use Moose;
  has CommandExecutions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CommandExecutionSummary]', traits => ['NameInRequest'], request_name => 'commandExecutions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCommandExecutionsResponse

=head1 ATTRIBUTES


=head2 CommandExecutions => ArrayRef[L<Paws::IoT::CommandExecutionSummary>]

The list of command executions.


=head2 NextToken => Str

The token to use to get the next set of results, or C<null> if there
are no additional results.


=head2 _request_id => Str


=cut


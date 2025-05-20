
package Paws::Transfer::ListExecutionsResponse;
  use Moose;
  has Executions => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedExecution]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkflowId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListExecutionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Executions => ArrayRef[L<Paws::Transfer::ListedExecution>]

Returns the details for each execution, in a C<ListedExecution> array.


=head2 NextToken => Str

C<ListExecutions> returns the C<NextToken> parameter in the output. You
can then pass the C<NextToken> parameter in a subsequent command to
continue listing additional executions.


=head2 B<REQUIRED> WorkflowId => Str

A unique identifier for the workflow.


=head2 _request_id => Str


=cut

1;
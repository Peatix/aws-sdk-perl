
package Paws::CodeBuild::ListCommandExecutionsForSandboxOutput;
  use Moose;
  has CommandExecutions => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::CommandExecution]', traits => ['NameInRequest'], request_name => 'commandExecutions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListCommandExecutionsForSandboxOutput

=head1 ATTRIBUTES


=head2 CommandExecutions => ArrayRef[L<Paws::CodeBuild::CommandExecution>]

Information about the requested command executions.


=head2 NextToken => Str

Information about the next token to get paginated results.


=head2 _request_id => Str


=cut

1;
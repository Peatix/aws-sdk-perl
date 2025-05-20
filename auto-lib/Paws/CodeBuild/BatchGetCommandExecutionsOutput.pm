
package Paws::CodeBuild::BatchGetCommandExecutionsOutput;
  use Moose;
  has CommandExecutions => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::CommandExecution]', traits => ['NameInRequest'], request_name => 'commandExecutions' );
  has CommandExecutionsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'commandExecutionsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetCommandExecutionsOutput

=head1 ATTRIBUTES


=head2 CommandExecutions => ArrayRef[L<Paws::CodeBuild::CommandExecution>]

Information about the requested command executions.


=head2 CommandExecutionsNotFound => ArrayRef[Str|Undef]

The IDs of command executions for which information could not be found.


=head2 _request_id => Str


=cut

1;
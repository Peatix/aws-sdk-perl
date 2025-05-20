
package Paws::CodeBuild::StartCommandExecutionOutput;
  use Moose;
  has CommandExecution => (is => 'ro', isa => 'Paws::CodeBuild::CommandExecution', traits => ['NameInRequest'], request_name => 'commandExecution' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartCommandExecutionOutput

=head1 ATTRIBUTES


=head2 CommandExecution => L<Paws::CodeBuild::CommandExecution>

Information about the requested command executions.


=head2 _request_id => Str


=cut

1;
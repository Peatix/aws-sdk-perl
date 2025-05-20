
package Paws::CodeBuild::BatchGetSandboxesOutput;
  use Moose;
  has Sandboxes => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Sandbox]', traits => ['NameInRequest'], request_name => 'sandboxes' );
  has SandboxesNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sandboxesNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetSandboxesOutput

=head1 ATTRIBUTES


=head2 Sandboxes => ArrayRef[L<Paws::CodeBuild::Sandbox>]

Information about the requested sandboxes.


=head2 SandboxesNotFound => ArrayRef[Str|Undef]

The IDs of sandboxes for which information could not be found.


=head2 _request_id => Str


=cut

1;
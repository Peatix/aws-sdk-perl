
package Paws::CodeBuild::StartSandboxOutput;
  use Moose;
  has Sandbox => (is => 'ro', isa => 'Paws::CodeBuild::Sandbox', traits => ['NameInRequest'], request_name => 'sandbox' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartSandboxOutput

=head1 ATTRIBUTES


=head2 Sandbox => L<Paws::CodeBuild::Sandbox>

Information about the requested sandbox.


=head2 _request_id => Str


=cut

1;
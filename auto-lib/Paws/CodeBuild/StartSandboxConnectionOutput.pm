
package Paws::CodeBuild::StartSandboxConnectionOutput;
  use Moose;
  has SsmSession => (is => 'ro', isa => 'Paws::CodeBuild::SSMSession', traits => ['NameInRequest'], request_name => 'ssmSession' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartSandboxConnectionOutput

=head1 ATTRIBUTES


=head2 SsmSession => L<Paws::CodeBuild::SSMSession>

Information about the Session Manager session.


=head2 _request_id => Str


=cut

1;
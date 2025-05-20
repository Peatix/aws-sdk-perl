
package Paws::Grafana::UpdateWorkspaceAuthenticationResponse;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Paws::Grafana::AuthenticationDescription', traits => ['NameInRequest'], request_name => 'authentication', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::UpdateWorkspaceAuthenticationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Authentication => L<Paws::Grafana::AuthenticationDescription>

A structure that describes the user authentication for this workspace
after the update is made.


=head2 _request_id => Str


=cut


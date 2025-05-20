
package Paws::Grafana::DescribeWorkspaceAuthenticationResponse;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Paws::Grafana::AuthenticationDescription', traits => ['NameInRequest'], request_name => 'authentication', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DescribeWorkspaceAuthenticationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Authentication => L<Paws::Grafana::AuthenticationDescription>

A structure containing information about the authentication methods
used in the workspace.


=head2 _request_id => Str


=cut


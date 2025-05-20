
package Paws::Prometheus::UpdateWorkspaceConfigurationResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::Prometheus::WorkspaceConfigurationStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::UpdateWorkspaceConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => L<Paws::Prometheus::WorkspaceConfigurationStatus>

The status of the workspace configuration.


=head2 _request_id => Str


=cut


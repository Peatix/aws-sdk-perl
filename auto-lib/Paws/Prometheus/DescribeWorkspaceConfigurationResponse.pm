
package Paws::Prometheus::DescribeWorkspaceConfigurationResponse;
  use Moose;
  has WorkspaceConfiguration => (is => 'ro', isa => 'Paws::Prometheus::WorkspaceConfigurationDescription', traits => ['NameInRequest'], request_name => 'workspaceConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::DescribeWorkspaceConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceConfiguration => L<Paws::Prometheus::WorkspaceConfigurationDescription>

This structure contains the information about the workspace
configuration.


=head2 _request_id => Str


=cut


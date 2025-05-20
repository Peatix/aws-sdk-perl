
package Paws::Grafana::DescribeWorkspaceConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has GrafanaVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'grafanaVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DescribeWorkspaceConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => Str

The configuration string for the workspace that you requested. For more
information about the format and configuration options available, see
Working in your Grafana workspace
(https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).


=head2 GrafanaVersion => Str

The supported Grafana version for the workspace.


=head2 _request_id => Str


=cut


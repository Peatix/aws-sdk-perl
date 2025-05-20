
package Paws::Grafana::ListWorkspacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::WorkspaceSummary]', traits => ['NameInRequest'], request_name => 'workspaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListWorkspacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of workspaces.


=head2 B<REQUIRED> Workspaces => ArrayRef[L<Paws::Grafana::WorkspaceSummary>]

An array of structures that contain some information about the
workspaces in the account.


=head2 _request_id => Str


=cut


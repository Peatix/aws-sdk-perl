
package Paws::Prometheus::ListWorkspacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::Prometheus::WorkspaceSummary]', traits => ['NameInRequest'], request_name => 'workspaces', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::ListWorkspacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating that there are more results to retrieve. You can use
this token as part of your next C<ListWorkspaces> request to retrieve
those results.


=head2 B<REQUIRED> Workspaces => ArrayRef[L<Paws::Prometheus::WorkspaceSummary>]

An array of C<WorkspaceSummary> structures containing information about
the workspaces requested.


=head2 _request_id => Str


=cut



package Paws::Grafana::CreateWorkspaceServiceAccountResponse;
  use Moose;
  has GrafanaRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'grafanaRole', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceServiceAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GrafanaRole => Str

The permission level given to the service account.

Valid values are: C<"ADMIN">, C<"EDITOR">, C<"VIEWER">
=head2 B<REQUIRED> Id => Str

The ID of the service account.


=head2 B<REQUIRED> Name => Str

The name of the service account.


=head2 B<REQUIRED> WorkspaceId => Str

The workspace with which the service account is associated.


=head2 _request_id => Str


=cut


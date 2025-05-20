
package Paws::Grafana::CreateWorkspaceServiceAccountTokenResponse;
  use Moose;
  has ServiceAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccountId', required => 1);
  has ServiceAccountToken => (is => 'ro', isa => 'Paws::Grafana::ServiceAccountTokenSummaryWithKey', traits => ['NameInRequest'], request_name => 'serviceAccountToken', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceServiceAccountTokenResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceAccountId => Str

The ID of the service account where the token was created.


=head2 B<REQUIRED> ServiceAccountToken => L<Paws::Grafana::ServiceAccountTokenSummaryWithKey>

Information about the created token, including the key. Be sure to
store the key securely.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where the token was created.


=head2 _request_id => Str


=cut


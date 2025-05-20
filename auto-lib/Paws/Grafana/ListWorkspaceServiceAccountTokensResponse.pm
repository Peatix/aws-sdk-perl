
package Paws::Grafana::ListWorkspaceServiceAccountTokensResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ServiceAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceAccountId', required => 1);
  has ServiceAccountTokens => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::ServiceAccountTokenSummary]', traits => ['NameInRequest'], request_name => 'serviceAccountTokens', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListWorkspaceServiceAccountTokensResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of service accounts.


=head2 B<REQUIRED> ServiceAccountId => Str

The ID of the service account where the tokens reside.


=head2 B<REQUIRED> ServiceAccountTokens => ArrayRef[L<Paws::Grafana::ServiceAccountTokenSummary>]

An array of structures containing information about the tokens.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace where the tokens reside.


=head2 _request_id => Str


=cut



package Paws::Grafana::ListWorkspaceServiceAccountsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ServiceAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::ServiceAccountSummary]', traits => ['NameInRequest'], request_name => 'serviceAccounts', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListWorkspaceServiceAccountsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of service accounts.


=head2 B<REQUIRED> ServiceAccounts => ArrayRef[L<Paws::Grafana::ServiceAccountSummary>]

An array of structures containing information about the service
accounts.


=head2 B<REQUIRED> WorkspaceId => Str

The workspace to which the service accounts are associated.


=head2 _request_id => Str


=cut


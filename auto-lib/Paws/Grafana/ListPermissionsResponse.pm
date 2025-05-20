
package Paws::Grafana::ListPermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::PermissionEntry]', traits => ['NameInRequest'], request_name => 'permissions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use in a subsequent C<ListPermissions> operation to return
the next set of results.


=head2 B<REQUIRED> Permissions => ArrayRef[L<Paws::Grafana::PermissionEntry>]

The permissions returned by the operation.


=head2 _request_id => Str


=cut


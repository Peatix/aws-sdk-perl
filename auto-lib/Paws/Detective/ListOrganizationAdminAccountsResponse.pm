
package Paws::Detective::ListOrganizationAdminAccountsResponse;
  use Moose;
  has Administrators => (is => 'ro', isa => 'ArrayRef[Paws::Detective::Administrator]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListOrganizationAdminAccountsResponse

=head1 ATTRIBUTES


=head2 Administrators => ArrayRef[L<Paws::Detective::Administrator>]

The list of Detective administrator accounts.


=head2 NextToken => Str

If there are more accounts remaining in the results, then this is the
pagination token to use to request the next page of accounts.


=head2 _request_id => Str


=cut



package Paws::Inspector2::ListDelegatedAdminAccountsResponse;
  use Moose;
  has DelegatedAdminAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::DelegatedAdminAccount]', traits => ['NameInRequest'], request_name => 'delegatedAdminAccounts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListDelegatedAdminAccountsResponse

=head1 ATTRIBUTES


=head2 DelegatedAdminAccounts => ArrayRef[L<Paws::Inspector2::DelegatedAdminAccount>]

Details of the Amazon Inspector delegated administrator of your
organization.


=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 _request_id => Str


=cut


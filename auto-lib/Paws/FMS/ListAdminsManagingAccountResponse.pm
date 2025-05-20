
package Paws::FMS::ListAdminsManagingAccountResponse;
  use Moose;
  has AdminAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListAdminsManagingAccountResponse

=head1 ATTRIBUTES


=head2 AdminAccounts => ArrayRef[Str|Undef]

The list of accounts who manage member accounts within their
AdminScope.


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Firewall Manager returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 _request_id => Str


=cut

1;
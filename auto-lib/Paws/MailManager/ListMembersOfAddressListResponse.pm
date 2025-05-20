
package Paws::MailManager::ListMembersOfAddressListResponse;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::SavedAddress]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListMembersOfAddressListResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Addresses => ArrayRef[L<Paws::MailManager::SavedAddress>]

The list of addresses.


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;
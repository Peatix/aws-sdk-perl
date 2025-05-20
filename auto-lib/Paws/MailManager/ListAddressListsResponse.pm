
package Paws::MailManager::ListAddressListsResponse;
  use Moose;
  has AddressLists => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::AddressList]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListAddressListsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressLists => ArrayRef[L<Paws::MailManager::AddressList>]

The list of address lists.


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;
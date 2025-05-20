
package Paws::MailManager::CreateAddressListResponse;
  use Moose;
  has AddressListId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddressListResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListId => Str

The identifier of the created address list.


=head2 _request_id => Str


=cut

1;
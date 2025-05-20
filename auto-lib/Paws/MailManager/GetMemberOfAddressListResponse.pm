
package Paws::MailManager::GetMemberOfAddressListResponse;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetMemberOfAddressListResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => Str

The address retrieved from the address list.


=head2 B<REQUIRED> CreatedTimestamp => Str

The timestamp of when the address was created.


=head2 _request_id => Str


=cut

1;
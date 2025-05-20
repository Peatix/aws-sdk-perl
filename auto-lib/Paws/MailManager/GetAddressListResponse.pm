
package Paws::MailManager::GetAddressListResponse;
  use Moose;
  has AddressListArn => (is => 'ro', isa => 'Str', required => 1);
  has AddressListId => (is => 'ro', isa => 'Str', required => 1);
  has AddressListName => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddressListResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListArn => Str

The Amazon Resource Name (ARN) of the address list resource.


=head2 B<REQUIRED> AddressListId => Str

The identifier of the address list resource.


=head2 B<REQUIRED> AddressListName => Str

A user-friendly name for the address list resource.


=head2 B<REQUIRED> CreatedTimestamp => Str

The date of when then address list was created.


=head2 B<REQUIRED> LastUpdatedTimestamp => Str

The date of when the address list was last updated.


=head2 _request_id => Str


=cut

1;
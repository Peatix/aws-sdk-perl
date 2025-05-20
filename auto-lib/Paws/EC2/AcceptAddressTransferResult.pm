
package Paws::EC2::AcceptAddressTransferResult;
  use Moose;
  has AddressTransfer => (is => 'ro', isa => 'Paws::EC2::AddressTransfer', request_name => 'addressTransfer', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptAddressTransferResult

=head1 ATTRIBUTES


=head2 AddressTransfer => L<Paws::EC2::AddressTransfer>

An Elastic IP address transfer.


=head2 _request_id => Str


=cut



package Paws::EC2::DescribeAddressTransfersResult;
  use Moose;
  has AddressTransfers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddressTransfer]', request_name => 'addressTransferSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddressTransfersResult

=head1 ATTRIBUTES


=head2 AddressTransfers => ArrayRef[L<Paws::EC2::AddressTransfer>]

The Elastic IP address transfer.


=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut


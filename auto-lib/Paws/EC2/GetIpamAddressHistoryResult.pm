
package Paws::EC2::GetIpamAddressHistoryResult;
  use Moose;
  has HistoryRecords => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamAddressHistoryRecord]', request_name => 'historyRecordSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamAddressHistoryResult

=head1 ATTRIBUTES


=head2 HistoryRecords => ArrayRef[L<Paws::EC2::IpamAddressHistoryRecord>]

A historical record for a CIDR within an IPAM scope. If the CIDR is
associated with an EC2 instance, you will see an object in the response
for the instance and one for the network interface.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


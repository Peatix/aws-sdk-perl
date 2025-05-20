
package Paws::EC2::GetIpamResourceCidrsResult;
  use Moose;
  has IpamResourceCidrs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpamResourceCidr]', request_name => 'ipamResourceCidrSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetIpamResourceCidrsResult

=head1 ATTRIBUTES


=head2 IpamResourceCidrs => ArrayRef[L<Paws::EC2::IpamResourceCidr>]

The resource CIDRs.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


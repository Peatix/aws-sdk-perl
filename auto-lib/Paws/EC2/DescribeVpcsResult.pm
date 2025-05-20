
package Paws::EC2::DescribeVpcsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Vpc]', request_name => 'vpcSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 Vpcs => ArrayRef[L<Paws::EC2::Vpc>]

Information about the VPCs.


=head2 _request_id => Str


=cut


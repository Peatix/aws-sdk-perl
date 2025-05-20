
package Paws::EC2::DescribeSubnetsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Subnet]', request_name => 'subnetSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSubnetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 Subnets => ArrayRef[L<Paws::EC2::Subnet>]

Information about the subnets.


=head2 _request_id => Str


=cut



package Paws::EC2::DescribeNetworkAclsResult;
  use Moose;
  has NetworkAcls => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkAcl]', request_name => 'networkAclSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkAclsResult

=head1 ATTRIBUTES


=head2 NetworkAcls => ArrayRef[L<Paws::EC2::NetworkAcl>]

Information about the network ACLs.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut


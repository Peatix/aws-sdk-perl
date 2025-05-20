
package Paws::EC2::DescribeInstanceTopologyResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceTopology]', request_name => 'instanceSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTopologyResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::EC2::InstanceTopology>]

Information about the topology of each instance.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut


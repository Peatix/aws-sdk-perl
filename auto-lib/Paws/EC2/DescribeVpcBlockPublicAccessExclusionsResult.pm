
package Paws::EC2::DescribeVpcBlockPublicAccessExclusionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VpcBlockPublicAccessExclusions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcBlockPublicAccessExclusion]', request_name => 'vpcBlockPublicAccessExclusionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcBlockPublicAccessExclusionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 VpcBlockPublicAccessExclusions => ArrayRef[L<Paws::EC2::VpcBlockPublicAccessExclusion>]

Details related to the exclusions.


=head2 _request_id => Str


=cut


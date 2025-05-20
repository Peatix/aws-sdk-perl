
package Paws::EC2::DescribeVerifiedAccessGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VerifiedAccessGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessGroup]', request_name => 'verifiedAccessGroupSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVerifiedAccessGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VerifiedAccessGroups => ArrayRef[L<Paws::EC2::VerifiedAccessGroup>]

Details about the Verified Access groups.


=head2 _request_id => Str


=cut



package Paws::EC2::DescribeCapacityBlockExtensionOfferingsResult;
  use Moose;
  has CapacityBlockExtensionOfferings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CapacityBlockExtensionOffering]', request_name => 'capacityBlockExtensionOfferingSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityBlockExtensionOfferingsResult

=head1 ATTRIBUTES


=head2 CapacityBlockExtensionOfferings => ArrayRef[L<Paws::EC2::CapacityBlockExtensionOffering>]

The recommended Capacity Block extension offerings for the dates
specified.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


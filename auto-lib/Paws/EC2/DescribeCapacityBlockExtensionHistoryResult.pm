
package Paws::EC2::DescribeCapacityBlockExtensionHistoryResult;
  use Moose;
  has CapacityBlockExtensions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CapacityBlockExtension]', request_name => 'capacityBlockExtensionSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityBlockExtensionHistoryResult

=head1 ATTRIBUTES


=head2 CapacityBlockExtensions => ArrayRef[L<Paws::EC2::CapacityBlockExtension>]

Describes one or more of your Capacity Block extensions. The results
describe only the Capacity Block extensions in the Amazon Web Services
Region that you're currently using.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


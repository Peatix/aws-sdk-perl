
package Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse;
  use Moose;
  has DeliveryDestinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::DeliveryDestination]', traits => ['NameInRequest'], request_name => 'deliveryDestinations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDeliveryDestinationsResponse

=head1 ATTRIBUTES


=head2 DeliveryDestinations => ArrayRef[L<Paws::CloudWatchLogs::DeliveryDestination>]

An array of structures. Each structure contains information about one
delivery destination in the account.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;
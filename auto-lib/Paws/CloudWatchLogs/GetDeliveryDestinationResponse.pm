
package Paws::CloudWatchLogs::GetDeliveryDestinationResponse;
  use Moose;
  has DeliveryDestination => (is => 'ro', isa => 'Paws::CloudWatchLogs::DeliveryDestination', traits => ['NameInRequest'], request_name => 'deliveryDestination' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetDeliveryDestinationResponse

=head1 ATTRIBUTES


=head2 DeliveryDestination => L<Paws::CloudWatchLogs::DeliveryDestination>

A structure containing information about the delivery destination.


=head2 _request_id => Str


=cut

1;
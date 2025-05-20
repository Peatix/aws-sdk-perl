
package Paws::CloudWatchLogs::GetDeliverySourceResponse;
  use Moose;
  has DeliverySource => (is => 'ro', isa => 'Paws::CloudWatchLogs::DeliverySource', traits => ['NameInRequest'], request_name => 'deliverySource' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetDeliverySourceResponse

=head1 ATTRIBUTES


=head2 DeliverySource => L<Paws::CloudWatchLogs::DeliverySource>

A structure containing information about the delivery source.


=head2 _request_id => Str


=cut

1;
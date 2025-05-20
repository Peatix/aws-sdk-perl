
package Paws::CloudWatchLogs::PutDeliverySourceResponse;
  use Moose;
  has DeliverySource => (is => 'ro', isa => 'Paws::CloudWatchLogs::DeliverySource', traits => ['NameInRequest'], request_name => 'deliverySource' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDeliverySourceResponse

=head1 ATTRIBUTES


=head2 DeliverySource => L<Paws::CloudWatchLogs::DeliverySource>

A structure containing information about the delivery source that was
just created or updated.


=head2 _request_id => Str


=cut

1;
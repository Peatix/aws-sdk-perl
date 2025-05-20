
package Paws::CloudWatchLogs::CreateDeliveryResponse;
  use Moose;
  has Delivery => (is => 'ro', isa => 'Paws::CloudWatchLogs::Delivery', traits => ['NameInRequest'], request_name => 'delivery' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateDeliveryResponse

=head1 ATTRIBUTES


=head2 Delivery => L<Paws::CloudWatchLogs::Delivery>

A structure that contains information about the delivery that you just
created.


=head2 _request_id => Str


=cut

1;
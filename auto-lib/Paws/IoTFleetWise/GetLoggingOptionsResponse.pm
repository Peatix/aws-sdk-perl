
package Paws::IoTFleetWise::GetLoggingOptionsResponse;
  use Moose;
  has CloudWatchLogDelivery => (is => 'ro', isa => 'Paws::IoTFleetWise::CloudWatchLogDeliveryOptions', traits => ['NameInRequest'], request_name => 'cloudWatchLogDelivery' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchLogDelivery => L<Paws::IoTFleetWise::CloudWatchLogDeliveryOptions>

Returns information about log delivery to Amazon CloudWatch Logs.


=head2 _request_id => Str


=cut

1;
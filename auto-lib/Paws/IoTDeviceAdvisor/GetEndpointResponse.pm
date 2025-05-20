
package Paws::IoTDeviceAdvisor::GetEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::GetEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => Str

The response of an Device Advisor endpoint.


=head2 _request_id => Str


=cut


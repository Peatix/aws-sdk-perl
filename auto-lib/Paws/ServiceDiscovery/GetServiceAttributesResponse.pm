
package Paws::ServiceDiscovery::GetServiceAttributesResponse;
  use Moose;
  has ServiceAttributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::ServiceAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetServiceAttributesResponse

=head1 ATTRIBUTES


=head2 ServiceAttributes => L<Paws::ServiceDiscovery::ServiceAttributes>

A complex type that contains the service ARN and a list of attribute
key-value pairs associated with the service.


=head2 _request_id => Str


=cut

1;
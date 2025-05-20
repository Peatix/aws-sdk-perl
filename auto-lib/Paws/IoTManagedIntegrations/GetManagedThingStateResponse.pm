
package Paws::IoTManagedIntegrations::GetManagedThingStateResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::StateEndpoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::IoTManagedIntegrations::StateEndpoint>]

The device endpoint.


=head2 _request_id => Str


=cut


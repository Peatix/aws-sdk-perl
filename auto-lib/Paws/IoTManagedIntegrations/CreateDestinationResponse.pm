
package Paws::IoTManagedIntegrations::CreateDestinationResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateDestinationResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the customer-managed destination.


=head2 _request_id => Str


=cut


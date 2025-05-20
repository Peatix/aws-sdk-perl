
package Paws::IoTWireless::ListEventConfigurationsResponse;
  use Moose;
  has EventConfigurationsList => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::EventConfigurationItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::ListEventConfigurationsResponse

=head1 ATTRIBUTES


=head2 EventConfigurationsList => ArrayRef[L<Paws::IoTWireless::EventConfigurationItem>]

Event configurations of all events for a single resource.


=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.


=head2 _request_id => Str


=cut


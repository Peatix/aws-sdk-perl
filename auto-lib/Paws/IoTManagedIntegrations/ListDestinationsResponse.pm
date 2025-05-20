
package Paws::IoTManagedIntegrations::ListDestinationsResponse;
  use Moose;
  has DestinationList => (is => 'ro', isa => 'ArrayRef[Paws::IoTManagedIntegrations::DestinationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListDestinationsResponse

=head1 ATTRIBUTES


=head2 DestinationList => ArrayRef[L<Paws::IoTManagedIntegrations::DestinationSummary>]

The list of destinations.


=head2 NextToken => Str

A token that can be used to retrieve the next set of results.


=head2 _request_id => Str


=cut


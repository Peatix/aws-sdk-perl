
package Paws::IoTFleetWise::ListFleetsResponse;
  use Moose;
  has FleetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::FleetSummary]', traits => ['NameInRequest'], request_name => 'fleetSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListFleetsResponse

=head1 ATTRIBUTES


=head2 FleetSummaries => ArrayRef[L<Paws::IoTFleetWise::FleetSummary>]

A list of information for each fleet.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

1;

package Paws::IoTFleetWise::GetVehicleStatusResponse;
  use Moose;
  has Campaigns => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::VehicleStatus]', traits => ['NameInRequest'], request_name => 'campaigns' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetVehicleStatusResponse

=head1 ATTRIBUTES


=head2 Campaigns => ArrayRef[L<Paws::IoTFleetWise::VehicleStatus>]

Lists information about the state of the vehicle with deployed
campaigns.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

1;
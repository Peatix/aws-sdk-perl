
package Paws::ControlTower::ListLandingZoneOperationsOutput;
  use Moose;
  has LandingZoneOperations => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::LandingZoneOperationSummary]', traits => ['NameInRequest'], request_name => 'landingZoneOperations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListLandingZoneOperationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> LandingZoneOperations => ArrayRef[L<Paws::ControlTower::LandingZoneOperationSummary>]

Lists landing zone operations.


=head2 NextToken => Str

Retrieves the next page of results. If the string is empty, the
response is the end of the results.


=head2 _request_id => Str


=cut


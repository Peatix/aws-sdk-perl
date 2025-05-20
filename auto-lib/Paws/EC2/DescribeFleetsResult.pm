
package Paws::EC2::DescribeFleetsResult;
  use Moose;
  has Fleets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetData]', request_name => 'fleetSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetsResult

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[L<Paws::EC2::FleetData>]

Information about the EC2 Fleets.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut


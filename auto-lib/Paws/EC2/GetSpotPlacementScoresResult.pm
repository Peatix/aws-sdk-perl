
package Paws::EC2::GetSpotPlacementScoresResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has SpotPlacementScores => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotPlacementScore]', request_name => 'spotPlacementScoreSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSpotPlacementScoresResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 SpotPlacementScores => ArrayRef[L<Paws::EC2::SpotPlacementScore>]

The Spot placement score for the top 10 Regions or Availability Zones,
scored on a scale from 1 to 10. Each score reflects how likely it is
that each Region or Availability Zone will succeed at fulfilling the
specified target capacity I<at the time of the Spot placement score
request>. A score of C<10> means that your Spot capacity request is
highly likely to succeed in that Region or Availability Zone.

If you request a Spot placement score for Regions, a high score assumes
that your fleet request will be configured to use all Availability
Zones and the C<capacity-optimized> allocation strategy. If you request
a Spot placement score for Availability Zones, a high score assumes
that your fleet request will be configured to use a single Availability
Zone and the C<capacity-optimized> allocation strategy.

Different Regions or Availability Zones might return the same score.

The Spot placement score serves as a recommendation only. No score
guarantees that your Spot request will be fully or partially fulfilled.


=head2 _request_id => Str


=cut


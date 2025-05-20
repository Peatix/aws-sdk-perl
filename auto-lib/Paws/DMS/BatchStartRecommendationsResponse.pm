
package Paws::DMS::BatchStartRecommendationsResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::DMS::BatchStartRecommendationsErrorEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::BatchStartRecommendationsResponse

=head1 ATTRIBUTES


=head2 ErrorEntries => ArrayRef[L<Paws::DMS::BatchStartRecommendationsErrorEntry>]

A list with error details about the analysis of each source database.


=head2 _request_id => Str


=cut

1;
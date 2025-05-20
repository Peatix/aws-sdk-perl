
package Paws::LexModelsV2::ListIntentPathsResponse;
  use Moose;
  has NodeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsIntentNodeSummary]', traits => ['NameInRequest'], request_name => 'nodeSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListIntentPathsResponse

=head1 ATTRIBUTES


=head2 NodeSummaries => ArrayRef[L<Paws::LexModelsV2::AnalyticsIntentNodeSummary>]

A list of objects, each of which contains information about a node in
the intent path for which you requested metrics.


=head2 _request_id => Str


=cut


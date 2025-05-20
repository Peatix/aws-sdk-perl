
package Paws::Personalize::ListRecommendersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Recommenders => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::RecommenderSummary]', traits => ['NameInRequest'], request_name => 'recommenders' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListRecommendersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of recommenders (if they exist).


=head2 Recommenders => ArrayRef[L<Paws::Personalize::RecommenderSummary>]

A list of the recommenders.


=head2 _request_id => Str


=cut

1;

package Paws::Resiliencehub::ListTestRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::TestRecommendation]', traits => ['NameInRequest'], request_name => 'testRecommendations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListTestRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> TestRecommendations => ArrayRef[L<Paws::Resiliencehub::TestRecommendation>]

The test recommendations for the Resilience Hub application.


=head2 _request_id => Str


=cut


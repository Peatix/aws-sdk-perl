
package Paws::Resiliencehub::ListSopRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SopRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::SopRecommendation]', traits => ['NameInRequest'], request_name => 'sopRecommendations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListSopRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> SopRecommendations => ArrayRef[L<Paws::Resiliencehub::SopRecommendation>]

The standard operating procedure (SOP) recommendations for the
Resilience Hub applications.


=head2 _request_id => Str


=cut


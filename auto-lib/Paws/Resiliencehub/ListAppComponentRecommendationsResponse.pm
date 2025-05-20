
package Paws::Resiliencehub::ListAppComponentRecommendationsResponse;
  use Moose;
  has ComponentRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ComponentRecommendation]', traits => ['NameInRequest'], request_name => 'componentRecommendations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppComponentRecommendationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentRecommendations => ArrayRef[L<Paws::Resiliencehub::ComponentRecommendation>]

The recommendations for an Resilience Hub Application Component,
returned as an object. This object contains the names of the
Application Components, configuration recommendations, and
recommendation statuses.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut


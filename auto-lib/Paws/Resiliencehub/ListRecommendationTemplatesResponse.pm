
package Paws::Resiliencehub::ListRecommendationTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RecommendationTemplates => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::RecommendationTemplate]', traits => ['NameInRequest'], request_name => 'recommendationTemplates');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListRecommendationTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 RecommendationTemplates => ArrayRef[L<Paws::Resiliencehub::RecommendationTemplate>]

The recommendation templates for the Resilience Hub applications.


=head2 _request_id => Str


=cut


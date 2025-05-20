
package Paws::Resiliencehub::DeleteRecommendationTemplateResponse;
  use Moose;
  has RecommendationTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommendationTemplateArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteRecommendationTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommendationTemplateArn => Str

The Amazon Resource Name (ARN) for a recommendation template.


=head2 B<REQUIRED> Status => Str

Status of the action.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut


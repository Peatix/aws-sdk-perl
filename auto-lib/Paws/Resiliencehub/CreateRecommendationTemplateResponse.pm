
package Paws::Resiliencehub::CreateRecommendationTemplateResponse;
  use Moose;
  has RecommendationTemplate => (is => 'ro', isa => 'Paws::Resiliencehub::RecommendationTemplate', traits => ['NameInRequest'], request_name => 'recommendationTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateRecommendationTemplateResponse

=head1 ATTRIBUTES


=head2 RecommendationTemplate => L<Paws::Resiliencehub::RecommendationTemplate>

The newly created recommendation template, returned as an object. This
object includes the template's name, format, status, tags, Amazon S3
bucket location, and more.


=head2 _request_id => Str


=cut


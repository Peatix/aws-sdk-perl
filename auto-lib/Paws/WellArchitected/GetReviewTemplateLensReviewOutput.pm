
package Paws::WellArchitected::GetReviewTemplateLensReviewOutput;
  use Moose;
  has LensReview => (is => 'ro', isa => 'Paws::WellArchitected::ReviewTemplateLensReview');
  has TemplateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetReviewTemplateLensReviewOutput

=head1 ATTRIBUTES


=head2 LensReview => L<Paws::WellArchitected::ReviewTemplateLensReview>

A lens review of a question.


=head2 TemplateArn => Str

The review template ARN.


=head2 _request_id => Str


=cut


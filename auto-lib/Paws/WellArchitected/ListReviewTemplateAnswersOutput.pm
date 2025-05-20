
package Paws::WellArchitected::ListReviewTemplateAnswersOutput;
  use Moose;
  has AnswerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ReviewTemplateAnswerSummary]');
  has LensAlias => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListReviewTemplateAnswersOutput

=head1 ATTRIBUTES


=head2 AnswerSummaries => ArrayRef[L<Paws::WellArchitected::ReviewTemplateAnswerSummary>]

List of answer summaries of a lens review in a review template.


=head2 LensAlias => Str




=head2 NextToken => Str




=head2 TemplateArn => Str

The ARN of the review template.


=head2 _request_id => Str


=cut


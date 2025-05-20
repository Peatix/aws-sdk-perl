
package Paws::WellArchitected::GetReviewTemplateAnswerOutput;
  use Moose;
  has Answer => (is => 'ro', isa => 'Paws::WellArchitected::ReviewTemplateAnswer');
  has LensAlias => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetReviewTemplateAnswerOutput

=head1 ATTRIBUTES


=head2 Answer => L<Paws::WellArchitected::ReviewTemplateAnswer>

An answer of the question.


=head2 LensAlias => Str




=head2 TemplateArn => Str

The review template ARN.


=head2 _request_id => Str


=cut


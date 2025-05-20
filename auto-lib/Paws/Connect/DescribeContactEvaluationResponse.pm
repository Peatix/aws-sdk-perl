
package Paws::Connect::DescribeContactEvaluationResponse;
  use Moose;
  has Evaluation => (is => 'ro', isa => 'Paws::Connect::Evaluation', required => 1);
  has EvaluationForm => (is => 'ro', isa => 'Paws::Connect::EvaluationFormContent', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeContactEvaluationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Evaluation => L<Paws::Connect::Evaluation>

Information about the evaluation form completed for a specific contact.


=head2 B<REQUIRED> EvaluationForm => L<Paws::Connect::EvaluationFormContent>

Information about the evaluation form.


=head2 _request_id => Str


=cut


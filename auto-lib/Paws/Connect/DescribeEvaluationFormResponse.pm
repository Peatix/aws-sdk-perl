
package Paws::Connect::DescribeEvaluationFormResponse;
  use Moose;
  has EvaluationForm => (is => 'ro', isa => 'Paws::Connect::EvaluationForm', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeEvaluationFormResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationForm => L<Paws::Connect::EvaluationForm>

Information about the evaluation form.


=head2 _request_id => Str


=cut


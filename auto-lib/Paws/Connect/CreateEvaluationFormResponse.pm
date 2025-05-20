
package Paws::Connect::CreateEvaluationFormResponse;
  use Moose;
  has EvaluationFormArn => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationFormId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateEvaluationFormResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationFormArn => Str

The Amazon Resource Name (ARN) for the evaluation form resource.


=head2 B<REQUIRED> EvaluationFormId => Str

The unique identifier for the evaluation form.


=head2 _request_id => Str


=cut


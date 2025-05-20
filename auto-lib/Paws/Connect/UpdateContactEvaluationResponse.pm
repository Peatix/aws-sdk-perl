
package Paws::Connect::UpdateContactEvaluationResponse;
  use Moose;
  has EvaluationArn => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactEvaluationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationArn => Str

The Amazon Resource Name (ARN) for the contact evaluation resource.


=head2 B<REQUIRED> EvaluationId => Str

A unique identifier for the contact evaluation.


=head2 _request_id => Str


=cut


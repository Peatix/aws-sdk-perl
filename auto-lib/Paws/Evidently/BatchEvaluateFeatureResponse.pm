
package Paws::Evidently::BatchEvaluateFeatureResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::EvaluationResult]', traits => ['NameInRequest'], request_name => 'results');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::BatchEvaluateFeatureResponse

=head1 ATTRIBUTES


=head2 Results => ArrayRef[L<Paws::Evidently::EvaluationResult>]

An array of structures, where each structure displays the results of
one feature evaluation assignment to one user session.


=head2 _request_id => Str


=cut


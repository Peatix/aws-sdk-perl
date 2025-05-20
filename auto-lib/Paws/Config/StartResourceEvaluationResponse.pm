
package Paws::Config::StartResourceEvaluationResponse;
  use Moose;
  has ResourceEvaluationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::StartResourceEvaluationResponse

=head1 ATTRIBUTES


=head2 ResourceEvaluationId => Str

A unique ResourceEvaluationId that is associated with a single
execution.


=head2 _request_id => Str


=cut

1;
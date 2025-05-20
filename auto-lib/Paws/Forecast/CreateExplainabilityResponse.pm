
package Paws::Forecast::CreateExplainabilityResponse;
  use Moose;
  has ExplainabilityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateExplainabilityResponse

=head1 ATTRIBUTES


=head2 ExplainabilityArn => Str

The Amazon Resource Name (ARN) of the Explainability.


=head2 _request_id => Str


=cut

1;

package Paws::Personalize::UpdateSolutionResponse;
  use Moose;
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateSolutionResponse

=head1 ATTRIBUTES


=head2 SolutionArn => Str

The same solution Amazon Resource Name (ARN) as given in the request.


=head2 _request_id => Str


=cut

1;

package Paws::Comprehend::UpdateEndpointResponse;
  use Moose;
  has DesiredModelArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::UpdateEndpointResponse

=head1 ATTRIBUTES


=head2 DesiredModelArn => Str

The Amazon Resource Number (ARN) of the new model.


=head2 _request_id => Str


=cut

1;
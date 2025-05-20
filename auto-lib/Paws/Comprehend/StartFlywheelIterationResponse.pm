
package Paws::Comprehend::StartFlywheelIterationResponse;
  use Moose;
  has FlywheelArn => (is => 'ro', isa => 'Str');
  has FlywheelIterationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartFlywheelIterationResponse

=head1 ATTRIBUTES


=head2 FlywheelArn => Str




=head2 FlywheelIterationId => Str




=head2 _request_id => Str


=cut

1;
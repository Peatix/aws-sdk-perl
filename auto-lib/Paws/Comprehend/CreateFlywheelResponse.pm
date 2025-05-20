
package Paws::Comprehend::CreateFlywheelResponse;
  use Moose;
  has ActiveModelArn => (is => 'ro', isa => 'Str');
  has FlywheelArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::CreateFlywheelResponse

=head1 ATTRIBUTES


=head2 ActiveModelArn => Str

The Amazon Resource Number (ARN) of the active model version.


=head2 FlywheelArn => Str

The Amazon Resource Number (ARN) of the flywheel.


=head2 _request_id => Str


=cut

1;
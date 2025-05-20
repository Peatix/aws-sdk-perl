
package Paws::Comprehend::UpdateFlywheelResponse;
  use Moose;
  has FlywheelProperties => (is => 'ro', isa => 'Paws::Comprehend::FlywheelProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::UpdateFlywheelResponse

=head1 ATTRIBUTES


=head2 FlywheelProperties => L<Paws::Comprehend::FlywheelProperties>

The flywheel properties.


=head2 _request_id => Str


=cut

1;

package Paws::Comprehend::DescribeFlywheelIterationResponse;
  use Moose;
  has FlywheelIterationProperties => (is => 'ro', isa => 'Paws::Comprehend::FlywheelIterationProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeFlywheelIterationResponse

=head1 ATTRIBUTES


=head2 FlywheelIterationProperties => L<Paws::Comprehend::FlywheelIterationProperties>

The configuration properties of a flywheel iteration.


=head2 _request_id => Str


=cut

1;
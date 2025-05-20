
package Paws::Comprehend::ListFlywheelIterationHistoryResponse;
  use Moose;
  has FlywheelIterationPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::FlywheelIterationProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListFlywheelIterationHistoryResponse

=head1 ATTRIBUTES


=head2 FlywheelIterationPropertiesList => ArrayRef[L<Paws::Comprehend::FlywheelIterationProperties>]

List of flywheel iteration properties


=head2 NextToken => Str

Next token


=head2 _request_id => Str


=cut

1;
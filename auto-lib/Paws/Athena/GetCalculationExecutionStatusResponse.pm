
package Paws::Athena::GetCalculationExecutionStatusResponse;
  use Moose;
  has Statistics => (is => 'ro', isa => 'Paws::Athena::CalculationStatistics');
  has Status => (is => 'ro', isa => 'Paws::Athena::CalculationStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCalculationExecutionStatusResponse

=head1 ATTRIBUTES


=head2 Statistics => L<Paws::Athena::CalculationStatistics>

Contains information about the DPU execution time and progress.


=head2 Status => L<Paws::Athena::CalculationStatus>

Contains information about the calculation execution status.


=head2 _request_id => Str


=cut

1;
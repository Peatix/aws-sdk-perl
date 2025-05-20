
package Paws::Athena::GetCalculationExecutionResponse;
  use Moose;
  has CalculationExecutionId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'Paws::Athena::CalculationResult');
  has SessionId => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::Athena::CalculationStatistics');
  has Status => (is => 'ro', isa => 'Paws::Athena::CalculationStatus');
  has WorkingDirectory => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCalculationExecutionResponse

=head1 ATTRIBUTES


=head2 CalculationExecutionId => Str

The calculation execution UUID.


=head2 Description => Str

The description of the calculation execution.


=head2 Result => L<Paws::Athena::CalculationResult>

Contains result information. This field is populated only if the
calculation is completed.


=head2 SessionId => Str

The session ID that the calculation ran in.


=head2 Statistics => L<Paws::Athena::CalculationStatistics>

Contains information about the data processing unit (DPU) execution
time and progress. This field is populated only when statistics are
available.


=head2 Status => L<Paws::Athena::CalculationStatus>

Contains information about the status of the calculation.


=head2 WorkingDirectory => Str

The Amazon S3 location in which calculation results are stored.


=head2 _request_id => Str


=cut

1;
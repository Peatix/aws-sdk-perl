
package Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReportOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReportError]', required => 1);
  has Reports => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport]', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::BatchGetServiceLevelObjectiveBudgetReportOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReportError>]

An array of structures, where each structure includes an error
indicating that one of the requests in the array was not valid.


=head2 B<REQUIRED> Reports => ArrayRef[L<Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport>]

An array of structures, where each structure is one budget report.


=head2 B<REQUIRED> Timestamp => Str

The date and time that the report is for. It is expressed as the number
of milliseconds since Jan 1, 1970 00:00:00 UTC.


=head2 _request_id => Str


=cut


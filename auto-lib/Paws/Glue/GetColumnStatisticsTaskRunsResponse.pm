
package Paws::Glue::GetColumnStatisticsTaskRunsResponse;
  use Moose;
  has ColumnStatisticsTaskRuns => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnStatisticsTaskRun]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsTaskRunsResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsTaskRuns => ArrayRef[L<Paws::Glue::ColumnStatisticsTaskRun>]

A list of column statistics task runs.


=head2 NextToken => Str

A continuation token, if not all task runs have yet been returned.


=head2 _request_id => Str


=cut

1;
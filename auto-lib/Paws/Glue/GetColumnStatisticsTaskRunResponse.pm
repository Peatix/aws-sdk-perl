
package Paws::Glue::GetColumnStatisticsTaskRunResponse;
  use Moose;
  has ColumnStatisticsTaskRun => (is => 'ro', isa => 'Paws::Glue::ColumnStatisticsTaskRun');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsTaskRunResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsTaskRun => L<Paws::Glue::ColumnStatisticsTaskRun>

A C<ColumnStatisticsTaskRun> object representing the details of the
column stats run.


=head2 _request_id => Str


=cut

1;
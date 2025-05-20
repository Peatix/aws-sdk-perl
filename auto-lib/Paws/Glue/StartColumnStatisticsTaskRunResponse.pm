
package Paws::Glue::StartColumnStatisticsTaskRunResponse;
  use Moose;
  has ColumnStatisticsTaskRunId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartColumnStatisticsTaskRunResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsTaskRunId => Str

The identifier for the column statistics task run.


=head2 _request_id => Str


=cut

1;
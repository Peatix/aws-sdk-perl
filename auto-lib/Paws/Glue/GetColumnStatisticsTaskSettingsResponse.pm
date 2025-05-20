
package Paws::Glue::GetColumnStatisticsTaskSettingsResponse;
  use Moose;
  has ColumnStatisticsTaskSettings => (is => 'ro', isa => 'Paws::Glue::ColumnStatisticsTaskSettings');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsTaskSettingsResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsTaskSettings => L<Paws::Glue::ColumnStatisticsTaskSettings>

A C<ColumnStatisticsTaskSettings> object representing the settings for
the column statistics task.


=head2 _request_id => Str


=cut

1;
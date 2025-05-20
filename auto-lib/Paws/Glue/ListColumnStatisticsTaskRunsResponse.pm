
package Paws::Glue::ListColumnStatisticsTaskRunsResponse;
  use Moose;
  has ColumnStatisticsTaskRunIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListColumnStatisticsTaskRunsResponse

=head1 ATTRIBUTES


=head2 ColumnStatisticsTaskRunIds => ArrayRef[Str|Undef]

A list of column statistics task run IDs.


=head2 NextToken => Str

A continuation token, if not all task run IDs have yet been returned.


=head2 _request_id => Str


=cut

1;
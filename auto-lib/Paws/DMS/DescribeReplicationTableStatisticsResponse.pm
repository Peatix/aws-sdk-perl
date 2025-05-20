
package Paws::DMS::DescribeReplicationTableStatisticsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationConfigArn => (is => 'ro', isa => 'Str');
  has ReplicationTableStatistics => (is => 'ro', isa => 'ArrayRef[Paws::DMS::TableStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationTableStatisticsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationConfigArn => Str

The Amazon Resource Name of the replication config.


=head2 ReplicationTableStatistics => ArrayRef[L<Paws::DMS::TableStatistics>]

Returns table statistics on the replication, including table name, rows
inserted, rows updated, and rows deleted.


=head2 _request_id => Str


=cut

1;
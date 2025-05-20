
package Paws::DMS::DescribeReplicationConfigsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationConfigs => (is => 'ro', isa => 'ArrayRef[Paws::DMS::ReplicationConfig]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationConfigsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 ReplicationConfigs => ArrayRef[L<Paws::DMS::ReplicationConfig>]

Returned configuration parameters that describe each provisioned DMS
Serverless replication.


=head2 _request_id => Str


=cut

1;

package Paws::RDS::DescribeDBShardGroupsResponse;
  use Moose;
  has DBShardGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBShardGroup]', request_name => 'DBShardGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBShardGroupsResponse

=head1 ATTRIBUTES


=head2 DBShardGroups => ArrayRef[L<Paws::RDS::DBShardGroup>]

Contains a list of DB shard groups for the user.


=head2 Marker => Str

A pagination token that can be used in a later C<DescribeDBClusters>
request.


=head2 _request_id => Str


=cut


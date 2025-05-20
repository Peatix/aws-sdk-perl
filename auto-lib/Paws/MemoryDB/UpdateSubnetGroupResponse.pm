
package Paws::MemoryDB::UpdateSubnetGroupResponse;
  use Moose;
  has SubnetGroup => (is => 'ro', isa => 'Paws::MemoryDB::SubnetGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateSubnetGroupResponse

=head1 ATTRIBUTES


=head2 SubnetGroup => L<Paws::MemoryDB::SubnetGroup>

The updated subnet group


=head2 _request_id => Str


=cut

1;
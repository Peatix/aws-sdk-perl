
package Paws::MemoryDB::UpdateParameterGroupResponse;
  use Moose;
  has ParameterGroup => (is => 'ro', isa => 'Paws::MemoryDB::ParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MemoryDB::UpdateParameterGroupResponse

=head1 ATTRIBUTES


=head2 ParameterGroup => L<Paws::MemoryDB::ParameterGroup>

The updated parameter group


=head2 _request_id => Str


=cut

1;
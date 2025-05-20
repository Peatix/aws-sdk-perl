
package Paws::CleanRooms::UpdateIdMappingTableOutput;
  use Moose;
  has IdMappingTable => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingTable', traits => ['NameInRequest'], request_name => 'idMappingTable', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateIdMappingTableOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingTable => L<Paws::CleanRooms::IdMappingTable>

The updated ID mapping table.


=head2 _request_id => Str


=cut


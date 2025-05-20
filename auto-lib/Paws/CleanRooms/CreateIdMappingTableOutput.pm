
package Paws::CleanRooms::CreateIdMappingTableOutput;
  use Moose;
  has IdMappingTable => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingTable', traits => ['NameInRequest'], request_name => 'idMappingTable', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateIdMappingTableOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingTable => L<Paws::CleanRooms::IdMappingTable>

The ID mapping table that was created.


=head2 _request_id => Str


=cut


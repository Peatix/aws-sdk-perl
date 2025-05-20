
package Paws::CleanRooms::GetIdMappingTableOutput;
  use Moose;
  has IdMappingTable => (is => 'ro', isa => 'Paws::CleanRooms::IdMappingTable', traits => ['NameInRequest'], request_name => 'idMappingTable', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetIdMappingTableOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingTable => L<Paws::CleanRooms::IdMappingTable>

The ID mapping table that you requested.


=head2 _request_id => Str


=cut


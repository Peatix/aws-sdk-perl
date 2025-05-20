
package Paws::CleanRooms::PopulateIdMappingTableOutput;
  use Moose;
  has IdMappingJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'idMappingJobId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::PopulateIdMappingTableOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingJobId => Str

The unique identifier of the mapping job that will populate the ID
mapping table.


=head2 _request_id => Str


=cut


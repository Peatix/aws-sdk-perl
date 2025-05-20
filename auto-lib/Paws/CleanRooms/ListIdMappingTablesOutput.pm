
package Paws::CleanRooms::ListIdMappingTablesOutput;
  use Moose;
  has IdMappingTableSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::IdMappingTableSummary]', traits => ['NameInRequest'], request_name => 'idMappingTableSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListIdMappingTablesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdMappingTableSummaries => ArrayRef[L<Paws::CleanRooms::IdMappingTableSummary>]

The summary information of the ID mapping tables that you requested.


=head2 NextToken => Str

The token value provided to access the next page of results.


=head2 _request_id => Str


=cut


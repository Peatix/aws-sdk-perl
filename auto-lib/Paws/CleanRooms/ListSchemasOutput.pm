
package Paws::CleanRooms::ListSchemasOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SchemaSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::SchemaSummary]', traits => ['NameInRequest'], request_name => 'schemaSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListSchemasOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> SchemaSummaries => ArrayRef[L<Paws::CleanRooms::SchemaSummary>]

The retrieved list of schemas.


=head2 _request_id => Str


=cut


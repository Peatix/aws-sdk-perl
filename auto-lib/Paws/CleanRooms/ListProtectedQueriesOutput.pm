
package Paws::CleanRooms::ListProtectedQueriesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProtectedQueries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::ProtectedQuerySummary]', traits => ['NameInRequest'], request_name => 'protectedQueries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListProtectedQueriesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> ProtectedQueries => ArrayRef[L<Paws::CleanRooms::ProtectedQuerySummary>]

A list of protected queries.


=head2 _request_id => Str


=cut


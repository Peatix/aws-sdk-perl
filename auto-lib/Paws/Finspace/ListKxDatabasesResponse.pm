
package Paws::Finspace::ListKxDatabasesResponse;
  use Moose;
  has KxDatabases => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDatabaseListEntry]', traits => ['NameInRequest'], request_name => 'kxDatabases');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxDatabasesResponse

=head1 ATTRIBUTES


=head2 KxDatabases => ArrayRef[L<Paws::Finspace::KxDatabaseListEntry>]

A list of databases in the kdb environment.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut


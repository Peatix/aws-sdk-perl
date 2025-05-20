
package Paws::Finspace::ListKxChangesetsResponse;
  use Moose;
  has KxChangesets => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxChangesetListEntry]', traits => ['NameInRequest'], request_name => 'kxChangesets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxChangesetsResponse

=head1 ATTRIBUTES


=head2 KxChangesets => ArrayRef[L<Paws::Finspace::KxChangesetListEntry>]

A list of changesets for a database.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut


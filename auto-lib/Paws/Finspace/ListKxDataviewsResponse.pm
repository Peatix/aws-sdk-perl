
package Paws::Finspace::ListKxDataviewsResponse;
  use Moose;
  has KxDataviews => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDataviewListEntry]', traits => ['NameInRequest'], request_name => 'kxDataviews');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxDataviewsResponse

=head1 ATTRIBUTES


=head2 KxDataviews => ArrayRef[L<Paws::Finspace::KxDataviewListEntry>]

The list of kdb dataviews that are currently active for the given
database.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut


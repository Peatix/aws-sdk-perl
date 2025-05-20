
package Paws::Ivschat::ListRoomsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rooms => (is => 'ro', isa => 'ArrayRef[Paws::Ivschat::RoomSummary]', traits => ['NameInRequest'], request_name => 'rooms', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::ListRoomsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more rooms than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> Rooms => ArrayRef[L<Paws::Ivschat::RoomSummary>]

List of the matching rooms (summary information only).


=head2 _request_id => Str


=cut



package Paws::Glue::ListSessionsResponse;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Session]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListSessionsResponse

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

Returns the ID of the session.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
result.


=head2 Sessions => ArrayRef[L<Paws::Glue::Session>]

Returns the session object.


=head2 _request_id => Str


=cut

1;
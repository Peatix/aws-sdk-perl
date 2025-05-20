
package Paws::RedshiftServerless::ListTracksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Tracks => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::ServerlessTrack]', traits => ['NameInRequest'], request_name => 'tracks' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListTracksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 Tracks => ArrayRef[L<Paws::RedshiftServerless::ServerlessTrack>]

The returned tracks.


=head2 _request_id => Str


=cut

1;
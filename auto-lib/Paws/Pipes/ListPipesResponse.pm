
package Paws::Pipes::ListPipesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Pipes => (is => 'ro', isa => 'ArrayRef[Paws::Pipes::Pipe]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::ListPipesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an HTTP 400
InvalidToken error.


=head2 Pipes => ArrayRef[L<Paws::Pipes::Pipe>]

The pipes returned by the call.


=head2 _request_id => Str


=cut


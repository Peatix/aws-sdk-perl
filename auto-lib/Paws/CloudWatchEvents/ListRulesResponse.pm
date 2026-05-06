
package Paws::CloudWatchEvents::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Rule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating there are more results available. If there are no
more results, no token is included in the response.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.


=head2 Rules => ArrayRef[L<Paws::CloudWatchEvents::Rule>]

The rules that match the specified criteria.


=head2 _request_id => Str


=cut

1;
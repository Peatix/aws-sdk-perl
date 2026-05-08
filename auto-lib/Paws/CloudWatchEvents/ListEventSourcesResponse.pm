
package Paws::CloudWatchEvents::ListEventSourcesResponse;
  use Moose;
  has EventSources => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EventSource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventSourcesResponse

=head1 ATTRIBUTES


=head2 EventSources => ArrayRef[L<Paws::CloudWatchEvents::EventSource>]

The list of event sources.


=head2 NextToken => Str

A token indicating there are more results available. If there are no
more results, no token is included in the response.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.


=head2 _request_id => Str


=cut

1;
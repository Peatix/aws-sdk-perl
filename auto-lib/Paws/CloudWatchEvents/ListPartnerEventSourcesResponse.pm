
package Paws::CloudWatchEvents::ListPartnerEventSourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PartnerEventSources => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PartnerEventSource]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListPartnerEventSourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating there are more results available. If there are no
more results, no token is included in the response.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.


=head2 PartnerEventSources => ArrayRef[L<Paws::CloudWatchEvents::PartnerEventSource>]

The list of partner event sources returned by the operation.


=head2 _request_id => Str


=cut

1;
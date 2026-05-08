
package Paws::CloudWatchEvents::ListTargetsByRuleResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Target]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRuleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token indicating there are more results available. If there are no
more results, no token is included in the response.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.


=head2 Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>]

The targets assigned to the rule.


=head2 _request_id => Str


=cut

1;
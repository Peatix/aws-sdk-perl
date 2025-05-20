
package Paws::Shield::ListAttacksResponse;
  use Moose;
  has AttackSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Shield::AttackSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListAttacksResponse

=head1 ATTRIBUTES


=head2 AttackSummaries => ArrayRef[L<Paws::Shield::AttackSummary>]

The attack information for the specified time range.


=head2 NextToken => Str

When you request a list of objects from Shield Advanced, if the
response does not include all of the remaining available objects,
Shield Advanced includes a C<NextToken> value in the response. You can
retrieve the next batch of objects by requesting the list again and
providing the token that was returned by the prior call in your
request.

You can indicate the maximum number of objects that you want Shield
Advanced to return for a single call with the C<MaxResults> setting.
Shield Advanced will not return more than C<MaxResults> objects, but
may return fewer, even if more objects are still available.

Whenever more objects remain that Shield Advanced has not yet returned
to you, the response will include a C<NextToken> value.


=head2 _request_id => Str


=cut

1;
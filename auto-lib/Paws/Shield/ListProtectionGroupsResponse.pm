
package Paws::Shield::ListProtectionGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProtectionGroups => (is => 'ro', isa => 'ArrayRef[Paws::Shield::ProtectionGroup]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListProtectionGroupsResponse

=head1 ATTRIBUTES


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


=head2 B<REQUIRED> ProtectionGroups => ArrayRef[L<Paws::Shield::ProtectionGroup>]




=head2 _request_id => Str


=cut

1;
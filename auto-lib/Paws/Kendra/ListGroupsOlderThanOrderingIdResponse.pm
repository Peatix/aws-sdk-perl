
package Paws::Kendra::ListGroupsOlderThanOrderingIdResponse;
  use Moose;
  has GroupsSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::GroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListGroupsOlderThanOrderingIdResponse

=head1 ATTRIBUTES


=head2 GroupsSummaries => ArrayRef[L<Paws::Kendra::GroupSummary>]

Summary information for list of groups that are mapped to users before
a given ordering or timestamp identifier.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of groups
that are mapped to users before a given ordering or timestamp
identifier.


=head2 _request_id => Str


=cut

1;
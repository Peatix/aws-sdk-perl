
package Paws::Synthetics::ListGroupsResponse;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::GroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::Synthetics::GroupSummary>]

An array of structures that each contain information about one group.


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<ListGroups> operation to retrieve the next
set of results.


=head2 _request_id => Str


=cut


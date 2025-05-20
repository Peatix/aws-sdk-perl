
package Paws::Connect::SearchUserHierarchyGroupsResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserHierarchyGroups => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HierarchyGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchUserHierarchyGroupsResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of userHierarchyGroups which matched your search
query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UserHierarchyGroups => ArrayRef[L<Paws::Connect::HierarchyGroup>]

Information about the userHierarchyGroups.


=head2 _request_id => Str


=cut



package Paws::CleanRooms::ListMembersOutput;
  use Moose;
  has MemberSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::MemberSummary]', traits => ['NameInRequest'], request_name => 'memberSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListMembersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberSummaries => ArrayRef[L<Paws::CleanRooms::MemberSummary>]

The list of members returned by the ListMembers operation.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut



package Paws::ResourceExplorer2::ListIndexesForMembersOutput;
  use Moose;
  has Indexes => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::MemberIndex]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::ListIndexesForMembersOutput

=head1 ATTRIBUTES


=head2 Indexes => ArrayRef[L<Paws::ResourceExplorer2::MemberIndex>]

A structure that contains the details and status of each index.


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>. The pagination tokens expire after 24
hours.


=head2 _request_id => Str


=cut


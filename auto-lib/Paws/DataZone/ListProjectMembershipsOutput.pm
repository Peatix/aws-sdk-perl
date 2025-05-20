
package Paws::DataZone::ListProjectMembershipsOutput;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProjectMember]', traits => ['NameInRequest'], request_name => 'members', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListProjectMembershipsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Members => ArrayRef[L<Paws::DataZone::ProjectMember>]

The members of the project.


=head2 NextToken => Str

When the number of memberships is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of memberships, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListProjectMemberships> to
list the next set of memberships.


=head2 _request_id => Str


=cut



package Paws::ResourceGroups::SearchResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryErrors => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::QueryError]');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::ResourceIdentifier]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::SearchResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 QueryErrors => ArrayRef[L<Paws::ResourceGroups::QueryError>]

A list of C<QueryError> objects. Each error contains an C<ErrorCode>
and C<Message>.

Possible values for C<ErrorCode>:

=over

=item *

C<CLOUDFORMATION_STACK_INACTIVE>

=item *

C<CLOUDFORMATION_STACK_NOT_EXISTING>

=item *

C<CLOUDFORMATION_STACK_UNASSUMABLE_ROLE>

=back



=head2 ResourceIdentifiers => ArrayRef[L<Paws::ResourceGroups::ResourceIdentifier>]

The ARNs and resource types of resources that are members of the group
that you specified.


=head2 _request_id => Str


=cut


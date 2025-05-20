
package Paws::RAM::GetResourceShareInvitationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShareInvitations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareInvitation]', traits => ['NameInRequest'], request_name => 'resourceShareInvitations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareInvitationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 ResourceShareInvitations => ArrayRef[L<Paws::RAM::ResourceShareInvitation>]

An array of objects that contain the details about the invitations.


=head2 _request_id => Str


=cut


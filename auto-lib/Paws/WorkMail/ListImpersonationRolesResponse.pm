
package Paws::WorkMail::ListImpersonationRolesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Roles => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::ImpersonationRole]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListImpersonationRolesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next page of results. The value is C<null>
when there are no results to return.


=head2 Roles => ArrayRef[L<Paws::WorkMail::ImpersonationRole>]

The list of impersonation roles under the given WorkMail organization.


=head2 _request_id => Str


=cut

1;
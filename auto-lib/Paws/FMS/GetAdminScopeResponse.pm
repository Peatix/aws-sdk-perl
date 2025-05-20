
package Paws::FMS::GetAdminScopeResponse;
  use Moose;
  has AdminScope => (is => 'ro', isa => 'Paws::FMS::AdminScope');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetAdminScopeResponse

=head1 ATTRIBUTES


=head2 AdminScope => L<Paws::FMS::AdminScope>

Contains details about the administrative scope of the requested
account.


=head2 Status => Str

The current status of the request to onboard a member account as an
Firewall Manager administrator.

=over

=item *

C<ONBOARDING> - The account is onboarding to Firewall Manager as an
administrator.

=item *

C<ONBOARDING_COMPLETE> - Firewall Manager The account is onboarded to
Firewall Manager as an administrator, and can perform actions on the
resources defined in their AdminScope.

=item *

C<OFFBOARDING> - The account is being removed as an Firewall Manager
administrator.

=item *

C<OFFBOARDING_COMPLETE> - The account has been removed as an Firewall
Manager administrator.

=back


Valid values are: C<"ONBOARDING">, C<"ONBOARDING_COMPLETE">, C<"OFFBOARDING">, C<"OFFBOARDING_COMPLETE">
=head2 _request_id => Str


=cut

1;
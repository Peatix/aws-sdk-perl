
package Paws::FMS::AssociateThirdPartyFirewallResponse;
  use Moose;
  has ThirdPartyFirewallStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::AssociateThirdPartyFirewallResponse

=head1 ATTRIBUTES


=head2 ThirdPartyFirewallStatus => Str

The current status for setting a Firewall Manager policy
administrator's account as an administrator of the third-party firewall
tenant.

=over

=item *

C<ONBOARDING> - The Firewall Manager policy administrator is being
designated as a tenant administrator.

=item *

C<ONBOARD_COMPLETE> - The Firewall Manager policy administrator is
designated as a tenant administrator.

=item *

C<OFFBOARDING> - The Firewall Manager policy administrator is being
removed as a tenant administrator.

=item *

C<OFFBOARD_COMPLETE> - The Firewall Manager policy administrator has
been removed as a tenant administrator.

=item *

C<NOT_EXIST> - The Firewall Manager policy administrator doesn't exist
as a tenant administrator.

=back


Valid values are: C<"ONBOARDING">, C<"ONBOARD_COMPLETE">, C<"OFFBOARDING">, C<"OFFBOARD_COMPLETE">, C<"NOT_EXIST">
=head2 _request_id => Str


=cut

1;
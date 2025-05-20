
package Paws::FMS::GetThirdPartyFirewallAssociationStatusResponse;
  use Moose;
  has MarketplaceOnboardingStatus => (is => 'ro', isa => 'Str');
  has ThirdPartyFirewallStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetThirdPartyFirewallAssociationStatusResponse

=head1 ATTRIBUTES


=head2 MarketplaceOnboardingStatus => Str

The status for subscribing to the third-party firewall vendor in the
Amazon Web Services Marketplace.

=over

=item *

C<NO_SUBSCRIPTION> - The Firewall Manager policy administrator isn't
subscribed to the third-party firewall service in the Amazon Web
Services Marketplace.

=item *

C<NOT_COMPLETE> - The Firewall Manager policy administrator is in the
process of subscribing to the third-party firewall service in the
Amazon Web Services Marketplace, but doesn't yet have an active
subscription.

=item *

C<COMPLETE> - The Firewall Manager policy administrator has an active
subscription to the third-party firewall service in the Amazon Web
Services Marketplace.

=back


Valid values are: C<"NO_SUBSCRIPTION">, C<"NOT_COMPLETE">, C<"COMPLETE">
=head2 ThirdPartyFirewallStatus => Str

The current status for setting a Firewall Manager policy administrators
account as an administrator of the third-party firewall tenant.

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
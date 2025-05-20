
package Paws::FMS::DisassociateThirdPartyFirewallResponse;
  use Moose;
  has ThirdPartyFirewallStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::DisassociateThirdPartyFirewallResponse

=head1 ATTRIBUTES


=head2 ThirdPartyFirewallStatus => Str

The current status for the disassociation of a Firewall Manager
administrators account with a third-party firewall.

Valid values are: C<"ONBOARDING">, C<"ONBOARD_COMPLETE">, C<"OFFBOARDING">, C<"OFFBOARD_COMPLETE">, C<"NOT_EXIST">
=head2 _request_id => Str


=cut

1;
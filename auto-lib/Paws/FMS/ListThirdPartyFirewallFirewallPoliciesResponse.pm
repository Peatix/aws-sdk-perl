
package Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ThirdPartyFirewallFirewallPolicies => (is => 'ro', isa => 'ArrayRef[Paws::FMS::ThirdPartyFirewallFirewallPolicy]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The value that you will use for C<NextToken> in the next
C<ListThirdPartyFirewallFirewallPolicies> request.


=head2 ThirdPartyFirewallFirewallPolicies => ArrayRef[L<Paws::FMS::ThirdPartyFirewallFirewallPolicy>]

A list that contains one C<ThirdPartyFirewallFirewallPolicies> element
for each third-party firewall policies that the specified third-party
firewall vendor is associated with. Each
C<ThirdPartyFirewallFirewallPolicies> element contains the firewall
policy name and ID.


=head2 _request_id => Str


=cut

1;
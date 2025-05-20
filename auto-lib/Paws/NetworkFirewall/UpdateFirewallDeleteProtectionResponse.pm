
package Paws::NetworkFirewall::UpdateFirewallDeleteProtectionResponse;
  use Moose;
  has DeleteProtection => (is => 'ro', isa => 'Bool');
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has UpdateToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateFirewallDeleteProtectionResponse

=head1 ATTRIBUTES


=head2 DeleteProtection => Bool

A flag indicating whether it is possible to delete the firewall. A
setting of C<TRUE> indicates that the firewall is protected against
deletion. Use this setting to protect against accidentally deleting a
firewall that is in use. When you create a firewall, the operation
initializes this flag to C<TRUE>.


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.


=head2 UpdateToken => Str

An optional token that you can use for optimistic locking. Network
Firewall returns a token to your requests that access the firewall. The
token marks the state of the firewall resource at the time of the
request.

To make an unconditional change to the firewall, omit the token in your
update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.

To make a conditional change to the firewall, provide the token in your
update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an C<InvalidTokenException>. If this happens,
retrieve the firewall again to get a current copy of it with a new
token. Reapply your changes as needed, then try the operation again
using the new token.


=head2 _request_id => Str


=cut

1;
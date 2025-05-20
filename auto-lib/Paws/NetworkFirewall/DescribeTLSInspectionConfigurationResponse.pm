
package Paws::NetworkFirewall::DescribeTLSInspectionConfigurationResponse;
  use Moose;
  has TLSInspectionConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::TLSInspectionConfiguration');
  has TLSInspectionConfigurationResponse => (is => 'ro', isa => 'Paws::NetworkFirewall::TLSInspectionConfigurationResponse', required => 1);
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DescribeTLSInspectionConfigurationResponse

=head1 ATTRIBUTES


=head2 TLSInspectionConfiguration => L<Paws::NetworkFirewall::TLSInspectionConfiguration>

The object that defines a TLS inspection configuration. This, along
with TLSInspectionConfigurationResponse, define the TLS inspection
configuration. You can retrieve all objects for a TLS inspection
configuration by calling DescribeTLSInspectionConfiguration.

Network Firewall uses a TLS inspection configuration to decrypt
traffic. Network Firewall re-encrypts the traffic before sending it to
its destination.

To use a TLS inspection configuration, you add it to a new Network
Firewall firewall policy, then you apply the firewall policy to a
firewall. Network Firewall acts as a proxy service to decrypt and
inspect the traffic traveling through your firewalls. You can reference
a TLS inspection configuration from more than one firewall policy, and
you can use a firewall policy in more than one firewall. For more
information about using TLS inspection configurations, see Inspecting
SSL/TLS traffic with TLS inspection configurations
(https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html)
in the I<Network Firewall Developer Guide>.


=head2 B<REQUIRED> TLSInspectionConfigurationResponse => L<Paws::NetworkFirewall::TLSInspectionConfigurationResponse>

The high-level properties of a TLS inspection configuration. This,
along with the TLSInspectionConfiguration, define the TLS inspection
configuration. You can retrieve all objects for a TLS inspection
configuration by calling DescribeTLSInspectionConfiguration.


=head2 B<REQUIRED> UpdateToken => Str

A token used for optimistic locking. Network Firewall returns a token
to your requests that access the TLS inspection configuration. The
token marks the state of the TLS inspection configuration resource at
the time of the request.

To make changes to the TLS inspection configuration, you provide the
token in your request. Network Firewall uses the token to ensure that
the TLS inspection configuration hasn't changed since you last
retrieved it. If it has changed, the operation fails with an
C<InvalidTokenException>. If this happens, retrieve the TLS inspection
configuration again to get a current copy of it with a current token.
Reapply your changes as needed, then try the operation again using the
new token.


=head2 _request_id => Str


=cut

1;
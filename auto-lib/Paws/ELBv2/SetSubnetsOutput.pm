
package Paws::ELBv2::SetSubnetsOutput;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::AvailabilityZone]');
  has EnablePrefixForIpv6SourceNat => (is => 'ro', isa => 'Str');
  has IpAddressType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSubnetsOutput

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::ELBv2::AvailabilityZone>]

Information about the subnets.


=head2 EnablePrefixForIpv6SourceNat => Str

[Network Load Balancers] Indicates whether to use an IPv6 prefix from
each subnet for source NAT.

Valid values are: C<"on">, C<"off">
=head2 IpAddressType => Str

The IP address type.

Valid values are: C<"ipv4">, C<"dualstack">, C<"dualstack-without-public-ipv4">
=head2 _request_id => Str


=cut


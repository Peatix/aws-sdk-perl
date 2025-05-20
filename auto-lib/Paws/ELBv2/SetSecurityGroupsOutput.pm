
package Paws::ELBv2::SetSecurityGroupsOutput;
  use Moose;
  has EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSecurityGroupsOutput

=head1 ATTRIBUTES


=head2 EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic => Str

Indicates whether to evaluate inbound security group rules for traffic
sent to a Network Load Balancer through Amazon Web Services
PrivateLink.

Valid values are: C<"on">, C<"off">
=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups associated with the load balancer.


=head2 _request_id => Str


=cut


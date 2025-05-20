package Paws::EC2::SecurityGroupRuleRequest;
  use Moose;
  has CidrIpv4 => (is => 'ro', isa => 'Str');
  has CidrIpv6 => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FromPort => (is => 'ro', isa => 'Int');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has PrefixListId => (is => 'ro', isa => 'Str');
  has ReferencedGroupId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SecurityGroupRuleRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SecurityGroupRuleRequest object:

  $service_obj->Method(Att1 => { CidrIpv4 => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SecurityGroupRuleRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIpv4

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrIpv4 => Str

The IPv4 CIDR range. To specify a single IPv4 address, use the /32
prefix length.


=head2 CidrIpv6 => Str

The IPv6 CIDR range. To specify a single IPv6 address, use the /128
prefix length.


=head2 Description => Str

The description of the security group rule.


=head2 FromPort => Int

If the protocol is TCP or UDP, this is the start of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP
types).


=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>, C<icmpv6>) or number
(see Protocol Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

Use C<-1> to specify all protocols.


=head2 PrefixListId => Str

The ID of the prefix list.


=head2 ReferencedGroupId => Str

The ID of the security group that is referenced in the security group
rule.


=head2 ToPort => Int

If the protocol is TCP or UDP, this is the end of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP
codes). If the start port is -1 (all ICMP types), then the end port
must be -1 (all ICMP codes).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

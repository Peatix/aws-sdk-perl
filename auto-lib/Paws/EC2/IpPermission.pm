package Paws::EC2::IpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpRange]', request_name => 'ipRanges', traits => ['NameInRequest']);
  has Ipv6Ranges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6Range]', request_name => 'ipv6Ranges', traits => ['NameInRequest']);
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrefixListId]', request_name => 'prefixListIds', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', request_name => 'groups', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., UserIdGroupPairs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FromPort => Int

If the protocol is TCP or UDP, this is the start of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP
types).


=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>, C<icmpv6>) or number
(see Protocol Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

Use C<-1> to specify all protocols. When authorizing security group
rules, specifying C<-1> or a protocol number other than C<tcp>, C<udp>,
C<icmp>, or C<icmpv6> allows traffic on all ports, regardless of any
port range you specify. For C<tcp>, C<udp>, and C<icmp>, you must
specify a port range. For C<icmpv6>, the port range is optional; if you
omit the port range, traffic for all types and codes is allowed.


=head2 IpRanges => ArrayRef[L<Paws::EC2::IpRange>]

The IPv4 address ranges.


=head2 Ipv6Ranges => ArrayRef[L<Paws::EC2::Ipv6Range>]

The IPv6 address ranges.


=head2 PrefixListIds => ArrayRef[L<Paws::EC2::PrefixListId>]

The prefix list IDs.


=head2 ToPort => Int

If the protocol is TCP or UDP, this is the end of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP
codes). If the start port is -1 (all ICMP types), then the end port
must be -1 (all ICMP codes).


=head2 UserIdGroupPairs => ArrayRef[L<Paws::EC2::UserIdGroupPair>]

The security group and Amazon Web Services account ID pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

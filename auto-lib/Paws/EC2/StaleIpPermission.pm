package Paws::EC2::StaleIpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipRanges', traits => ['NameInRequest']);
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'prefixListIds', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', request_name => 'groups', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StaleIpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::StaleIpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., UserIdGroupPairs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::StaleIpPermission object:

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
(see Protocol Numbers)
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).


=head2 IpRanges => ArrayRef[Str|Undef]

The IP ranges. Not applicable for stale security group rules.


=head2 PrefixListIds => ArrayRef[Str|Undef]

The prefix list IDs. Not applicable for stale security group rules.


=head2 ToPort => Int

If the protocol is TCP or UDP, this is the end of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP
codes).


=head2 UserIdGroupPairs => ArrayRef[L<Paws::EC2::UserIdGroupPair>]

The security group pairs. Returns the ID of the referenced security
group and VPC, and the ID and status of the VPC peering connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

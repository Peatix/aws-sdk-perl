package Paws::EC2::SecurityGroupRule;
  use Moose;
  has CidrIpv4 => (is => 'ro', isa => 'Str', request_name => 'cidrIpv4', traits => ['NameInRequest']);
  has CidrIpv6 => (is => 'ro', isa => 'Str', request_name => 'cidrIpv6', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupOwnerId => (is => 'ro', isa => 'Str', request_name => 'groupOwnerId', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IsEgress => (is => 'ro', isa => 'Bool', request_name => 'isEgress', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has ReferencedGroupInfo => (is => 'ro', isa => 'Paws::EC2::ReferencedSecurityGroup', request_name => 'referencedGroupInfo', traits => ['NameInRequest']);
  has SecurityGroupRuleArn => (is => 'ro', isa => 'Str', request_name => 'securityGroupRuleArn', traits => ['NameInRequest']);
  has SecurityGroupRuleId => (is => 'ro', isa => 'Str', request_name => 'securityGroupRuleId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SecurityGroupRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SecurityGroupRule object:

  $service_obj->Method(Att1 => { CidrIpv4 => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SecurityGroupRule object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIpv4

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrIpv4 => Str

The IPv4 CIDR range.


=head2 CidrIpv6 => Str

The IPv6 CIDR range.


=head2 Description => Str

The security group rule description.


=head2 FromPort => Int

If the protocol is TCP or UDP, this is the start of the port range. If
the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP
types).


=head2 GroupId => Str

The ID of the security group.


=head2 GroupOwnerId => Str

The ID of the Amazon Web Services account that owns the security group.


=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>, C<icmpv6>) or number
(see Protocol Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

Use C<-1> to specify all protocols.


=head2 IsEgress => Bool

Indicates whether the security group rule is an outbound rule.


=head2 PrefixListId => Str

The ID of the prefix list.


=head2 ReferencedGroupInfo => L<Paws::EC2::ReferencedSecurityGroup>

Describes the security group that is referenced in the rule.


=head2 SecurityGroupRuleArn => Str

The ARN of the security group rule.


=head2 SecurityGroupRuleId => Str

The ID of the security group rule.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags applied to the security group rule.


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

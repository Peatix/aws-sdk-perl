package Paws::EC2::RevokedSecurityGroupRule;
  use Moose;
  has CidrIpv4 => (is => 'ro', isa => 'Str', request_name => 'cidrIpv4', traits => ['NameInRequest']);
  has CidrIpv6 => (is => 'ro', isa => 'Str', request_name => 'cidrIpv6', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IsEgress => (is => 'ro', isa => 'Bool', request_name => 'isEgress', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has ReferencedGroupId => (is => 'ro', isa => 'Str', request_name => 'referencedGroupId', traits => ['NameInRequest']);
  has SecurityGroupRuleId => (is => 'ro', isa => 'Str', request_name => 'securityGroupRuleId', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RevokedSecurityGroupRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RevokedSecurityGroupRule object:

  $service_obj->Method(Att1 => { CidrIpv4 => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RevokedSecurityGroupRule object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrIpv4

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrIpv4 => Str

The IPv4 CIDR of the traffic source.


=head2 CidrIpv6 => Str

The IPv6 CIDR of the traffic source.


=head2 Description => Str

A description of the revoked security group rule.


=head2 FromPort => Int

The 'from' port number of the security group rule.


=head2 GroupId => Str

A security group ID.


=head2 IpProtocol => Str

The security group rule's protocol.


=head2 IsEgress => Bool

Defines if a security group rule is an outbound rule.


=head2 PrefixListId => Str

The ID of a prefix list that's the traffic source.


=head2 ReferencedGroupId => Str

The ID of a referenced security group.


=head2 SecurityGroupRuleId => Str

A security group rule ID.


=head2 ToPort => Int

The 'to' port number of the security group rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

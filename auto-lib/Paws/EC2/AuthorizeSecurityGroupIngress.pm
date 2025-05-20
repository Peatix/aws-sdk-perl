
package Paws::EC2::AuthorizeSecurityGroupIngress;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AuthorizeSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupIngress - Arguments for method AuthorizeSecurityGroupIngress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSecurityGroupIngress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AuthorizeSecurityGroupIngress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSecurityGroupIngress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To add a rule that allows inbound SSH traffic from an IPv4 address range
# This example enables inbound traffic on TCP port 22 (SSH). The rule includes a
# description to help you identify it later.
    my $AuthorizeSecurityGroupIngressResult =
      $ec2->AuthorizeSecurityGroupIngress(
      'GroupId'       => 'sg-903004f8',
      'IpPermissions' => [

        {
          'FromPort'   => 22,
          'IpProtocol' => 'tcp',
          'IpRanges'   => [

            {
              'CidrIp'      => '203.0.113.0/24',
              'Description' => 'SSH access from the LA office'
            }
          ],
          'ToPort' => 22
        }
      ]
      );

    # To add a rule that allows inbound HTTP traffic from another security group
    # This example enables inbound traffic on TCP port 80 from the specified
    # security group. The group must be in the same VPC or a peer VPC. Incoming
    # traffic is allowed based on the private IP addresses of instances that are
    # associated with the specified security group.
    my $AuthorizeSecurityGroupIngressResult =
      $ec2->AuthorizeSecurityGroupIngress(
      'GroupId'       => 'sg-111aaa22',
      'IpPermissions' => [

        {
          'FromPort'         => 80,
          'IpProtocol'       => 'tcp',
          'ToPort'           => 80,
          'UserIdGroupPairs' => [

            {
              'Description' => 'HTTP access from other instances',
              'GroupId'     => 'sg-1a2b3c4d'
            }
          ]
        }
      ]
      );

  # To add a rule that allows inbound RDP traffic from an IPv6 address range
  # This example adds an inbound rule that allows RDP traffic from the specified
  # IPv6 address range. The rule includes a description to help you identify it
  # later.
    my $AuthorizeSecurityGroupIngressResult =
      $ec2->AuthorizeSecurityGroupIngress(
      'GroupId'       => 'sg-123abc12 ',
      'IpPermissions' => [

        {
          'FromPort'   => 3389,
          'IpProtocol' => 'tcp',
          'Ipv6Ranges' => [

            {
              'CidrIpv6'    => '2001:db8:1234:1a00::/64',
              'Description' => 'RDP access from the NY office'
            }
          ],
          'ToPort' => 3389
        }
      ]
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AuthorizeSecurityGroupIngress>

=head1 ATTRIBUTES


=head2 CidrIp => Str

The IPv4 address range, in CIDR format.

Amazon Web Services canonicalizes
(https://en.wikipedia.org/wiki/Canonicalization) IPv4 and IPv6 CIDRs.
For example, if you specify 100.68.0.18/18 for the CIDR block, Amazon
Web Services canonicalizes the CIDR block to 100.68.0.0/18. Any
subsequent DescribeSecurityGroups and DescribeSecurityGroupRules calls
will return the canonicalized form of the CIDR block. Additionally, if
you attempt to add another rule with the non-canonical form of the CIDR
(such as 100.68.0.18/18) and there is already a rule for the
canonicalized form of the CIDR block (such as 100.68.0.0/18), the API
throws an duplicate rule error.

To specify an IPv6 address range, use IP permissions instead.

To specify multiple rules and descriptions for the rules, use IP
permissions instead.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

If the protocol is TCP or UDP, this is the start of the port range. If
the protocol is ICMP, this is the ICMP type or -1 (all ICMP types).

To specify multiple rules and descriptions for the rules, use IP
permissions instead.



=head2 GroupId => Str

The ID of the security group.



=head2 GroupName => Str

[Default VPC] The name of the security group. For security groups for a
default VPC you can specify either the ID or the name of the security
group. For security groups for a nondefault VPC, you must specify the
ID of the security group.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

The permissions for the security group rules.



=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>) or number (see Protocol
Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
To specify all protocols, use C<-1>.

To specify C<icmpv6>, use IP permissions instead.

If you specify a protocol other than one of the supported values,
traffic is allowed on all ports, regardless of any ports that you
specify.

To specify multiple rules and descriptions for the rules, use IP
permissions instead.



=head2 SourceSecurityGroupName => Str

[Default VPC] The name of the source security group.

The rule grants full ICMP, UDP, and TCP access. To create a rule with a
specific protocol and port range, specify a set of IP permissions
instead.



=head2 SourceSecurityGroupOwnerId => Str

The Amazon Web Services account ID for the source security group, if
the source security group is in a different account.

The rule grants full ICMP, UDP, and TCP access. To create a rule with a
specific protocol and port range, use IP permissions instead.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags applied to the security group rule.



=head2 ToPort => Int

If the protocol is TCP or UDP, this is the end of the port range. If
the protocol is ICMP, this is the ICMP code or -1 (all ICMP codes). If
the start port is -1 (all ICMP types), then the end port must be -1
(all ICMP codes).

To specify multiple rules and descriptions for the rules, use IP
permissions instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSecurityGroupIngress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


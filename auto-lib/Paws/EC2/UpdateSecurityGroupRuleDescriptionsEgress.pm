
package Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]');
  has SecurityGroupRuleDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroupRuleDescription]', traits => ['NameInRequest'], request_name => 'SecurityGroupRuleDescription' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityGroupRuleDescriptionsEgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress - Arguments for method UpdateSecurityGroupRuleDescriptionsEgress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityGroupRuleDescriptionsEgress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method UpdateSecurityGroupRuleDescriptionsEgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityGroupRuleDescriptionsEgress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To update an outbound security group rule description
   # This example updates the description for the specified security group rule.
    my $UpdateSecurityGroupRuleDescriptionsEgressResult =
      $ec2->UpdateSecurityGroupRuleDescriptionsEgress(
      'GroupId'       => 'sg-123abc12',
      'IpPermissions' => [

        {
          'FromPort'   => 80,
          'IpProtocol' => 'tcp',
          'IpRanges'   => [

            {
              'CidrIp'      => '203.0.113.0/24',
              'Description' => 'Outbound HTTP access to server 2'
            }
          ],
          'ToPort' => 80
        }
      ]
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/UpdateSecurityGroupRuleDescriptionsEgress>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 GroupId => Str

The ID of the security group. You must specify either the security
group ID or the security group name in the request. For security groups
in a nondefault VPC, you must specify the security group ID.



=head2 GroupName => Str

[Default VPC] The name of the security group. You must specify either
the security group ID or the security group name.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

The IP permissions for the security group rule. You must specify either
the IP permissions or the description.



=head2 SecurityGroupRuleDescriptions => ArrayRef[L<Paws::EC2::SecurityGroupRuleDescription>]

The description for the egress security group rules. You must specify
either the description or the IP permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityGroupRuleDescriptionsEgress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


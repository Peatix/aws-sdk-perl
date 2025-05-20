
package Paws::EC2::AuthorizeSecurityGroupEgress;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrIp' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fromPort' );
  has GroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupId' , required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', traits => ['NameInRequest'], request_name => 'ipPermissions' );
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipProtocol' );
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupName' );
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupOwnerId' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has ToPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'toPort' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AuthorizeSecurityGroupEgressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupEgress - Arguments for method AuthorizeSecurityGroupEgress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSecurityGroupEgress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AuthorizeSecurityGroupEgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSecurityGroupEgress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
# To add a rule that allows outbound traffic to a specific address range
# This example adds a rule that grants access to the specified address ranges on
# TCP port 80.
    my $AuthorizeSecurityGroupEgressResult = $ec2->AuthorizeSecurityGroupEgress(
      'GroupId'       => 'sg-1a2b3c4d',
      'IpPermissions' => [

        {
          'FromPort'   => 80,
          'IpProtocol' => 'tcp',
          'IpRanges'   => [

            {
              'CidrIp' => '10.0.0.0/16'
            }
          ],
          'ToPort' => 80
        }
      ]
    );

# To add a rule that allows outbound traffic to a specific security group
# This example adds a rule that grants access to the specified security group on
# TCP port 80.
    my $AuthorizeSecurityGroupEgressResult = $ec2->AuthorizeSecurityGroupEgress(
      'GroupId'       => 'sg-1a2b3c4d',
      'IpPermissions' => [

        {
          'FromPort'         => 80,
          'IpProtocol'       => 'tcp',
          'ToPort'           => 80,
          'UserIdGroupPairs' => [

            {
              'GroupId' => 'sg-4b51a32f'
            }
          ]
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AuthorizeSecurityGroupEgress>

=head1 ATTRIBUTES


=head2 CidrIp => Str

Not supported. Use IP permissions instead.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

Not supported. Use IP permissions instead.



=head2 B<REQUIRED> GroupId => Str

The ID of the security group.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

The permissions for the security group rules.



=head2 IpProtocol => Str

Not supported. Use IP permissions instead.



=head2 SourceSecurityGroupName => Str

Not supported. Use IP permissions instead.



=head2 SourceSecurityGroupOwnerId => Str

Not supported. Use IP permissions instead.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags applied to the security group rule.



=head2 ToPort => Int

Not supported. Use IP permissions instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSecurityGroupEgress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


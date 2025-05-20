
package Paws::EC2::CreateSecurityGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupDescription' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSecurityGroup - Arguments for method CreateSecurityGroup on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityGroup on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityGroup.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a security group for a VPC
    # This example creates a security group for the specified VPC.
    my $CreateSecurityGroupResult = $ec2->CreateSecurityGroup(
      'Description' => 'My security group',
      'GroupName'   => 'my-security-group',
      'VpcId'       => 'vpc-1a2b3c4d'
    );

    # Results:
    my $GroupId = $CreateSecurityGroupResult->GroupId;

    # Returns a L<Paws::EC2::CreateSecurityGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A description for the security group.

Constraints: Up to 255 characters in length

Valid characters: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> GroupName => Str

The name of the security group. Names are case-insensitive and must be
unique within the VPC.

Constraints: Up to 255 characters in length. Can't start with C<sg->.

Valid characters: a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=&;{}!$*



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to assign to the security group.



=head2 VpcId => Str

The ID of the VPC. Required for a nondefault VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityGroup in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


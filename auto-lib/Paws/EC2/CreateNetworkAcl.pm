
package Paws::EC2::CreateNetworkAcl;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAcl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNetworkAclResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkAcl - Arguments for method CreateNetworkAcl on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkAcl on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkAcl.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a network ACL
    # This example creates a network ACL for the specified VPC.
    my $CreateNetworkAclResult =
      $ec2->CreateNetworkAcl( 'VpcId' => 'vpc-a01106c2' );

    # Results:
    my $NetworkAcl = $CreateNetworkAclResult->NetworkAcl;

    # Returns a L<Paws::EC2::CreateNetworkAclResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkAcl>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to assign to the network ACL.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkAcl in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::EC2::ModifyVpcBlockPublicAccessOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InternetGatewayBlockMode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpcBlockPublicAccessOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpcBlockPublicAccessOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcBlockPublicAccessOptions - Arguments for method ModifyVpcBlockPublicAccessOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpcBlockPublicAccessOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpcBlockPublicAccessOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpcBlockPublicAccessOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpcBlockPublicAccessOptionsResult =
      $ec2->ModifyVpcBlockPublicAccessOptions(
      InternetGatewayBlockMode => 'off',
      DryRun                   => 1,       # OPTIONAL
      );

    # Results:
    my $VpcBlockPublicAccessOptions =
      $ModifyVpcBlockPublicAccessOptionsResult->VpcBlockPublicAccessOptions;

    # Returns a L<Paws::EC2::ModifyVpcBlockPublicAccessOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpcBlockPublicAccessOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InternetGatewayBlockMode => Str

The mode of VPC BPA.

=over

=item *

C<off>: VPC BPA is not enabled and traffic is allowed to and from
internet gateways and egress-only internet gateways in this Region.

=item *

C<block-bidirectional>: Block all traffic to and from internet gateways
and egress-only internet gateways in this Region (except for excluded
VPCs and subnets).

=item *

C<block-ingress>: Block all internet traffic to the VPCs in this Region
(except for VPCs or subnets which are excluded). Only traffic to and
from NAT gateways and egress-only internet gateways is allowed because
these gateways only allow outbound connections to be established.

=back


Valid values are: C<"off">, C<"block-bidirectional">, C<"block-ingress">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpcBlockPublicAccessOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::EC2::BlockPublicAccessStates;
  use Moose;
  has InternetGatewayBlockMode => (is => 'ro', isa => 'Str', request_name => 'internetGatewayBlockMode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BlockPublicAccessStates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::BlockPublicAccessStates object:

  $service_obj->Method(Att1 => { InternetGatewayBlockMode => $value, ..., InternetGatewayBlockMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::BlockPublicAccessStates object:

  $result = $service_obj->Method(...);
  $result->Att1->InternetGatewayBlockMode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InternetGatewayBlockMode => Str

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




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

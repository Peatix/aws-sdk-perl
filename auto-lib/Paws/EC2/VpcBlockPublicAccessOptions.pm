package Paws::EC2::VpcBlockPublicAccessOptions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has AwsRegion => (is => 'ro', isa => 'Str', request_name => 'awsRegion', traits => ['NameInRequest']);
  has ExclusionsAllowed => (is => 'ro', isa => 'Str', request_name => 'exclusionsAllowed', traits => ['NameInRequest']);
  has InternetGatewayBlockMode => (is => 'ro', isa => 'Str', request_name => 'internetGatewayBlockMode', traits => ['NameInRequest']);
  has LastUpdateTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTimestamp', traits => ['NameInRequest']);
  has ManagedBy => (is => 'ro', isa => 'Str', request_name => 'managedBy', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcBlockPublicAccessOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcBlockPublicAccessOptions object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcBlockPublicAccessOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

An Amazon Web Services account ID.


=head2 AwsRegion => Str

An Amazon Web Services Region.


=head2 ExclusionsAllowed => Str

Determines if exclusions are allowed. If you have enabled VPC BPA at
the Organization level
(https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html#security-vpc-bpa-exclusions-orgs),
exclusions may be C<not-allowed>. Otherwise, they are C<allowed>.


=head2 InternetGatewayBlockMode => Str

The current mode of VPC BPA.

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



=head2 LastUpdateTimestamp => Str

The last time the VPC BPA mode was updated.


=head2 ManagedBy => Str

The entity that manages the state of VPC BPA. Possible values include:

=over

=item *

C<account> - The state is managed by the account.

=item *

C<declarative-policy> - The state is managed by a declarative policy
and can't be modified by the account.

=back



=head2 Reason => Str

The reason for the current state.


=head2 State => Str

The current state of VPC BPA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

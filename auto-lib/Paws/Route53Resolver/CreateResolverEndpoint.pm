
package Paws::Route53Resolver::CreateResolverEndpoint;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has Direction => (is => 'ro', isa => 'Str', required => 1);
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::IpAddressRequest]', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has OutpostArn => (is => 'ro', isa => 'Str');
  has PreferredInstanceType => (is => 'ro', isa => 'Str');
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResolverEndpointType => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResolverEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateResolverEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverEndpoint - Arguments for method CreateResolverEndpoint on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolverEndpoint on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateResolverEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolverEndpoint.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateResolverEndpointResponse =
      $route53resolver->CreateResolverEndpoint(
      CreatorRequestId => 'MyCreatorRequestId',
      Direction        => 'INBOUND',
      IpAddresses      => [
        {
          SubnetId => 'MySubnetId',    # min: 1, max: 32
          Ip       => 'MyIp',          # min: 7, max: 36; OPTIONAL
          Ipv6     => 'MyIpv6',        # min: 7, max: 39; OPTIONAL
        },
        ...
      ],
      SecurityGroupIds => [
        'MyResourceId',
        ...                            # min: 1, max: 64
      ],
      Name                  => 'MyName',                   # OPTIONAL
      OutpostArn            => 'MyOutpostArn',             # OPTIONAL
      PreferredInstanceType => 'MyOutpostInstanceType',    # OPTIONAL
      Protocols             => [
        'DoH', ...    # values: DoH, Do53, DoH-FIPS
      ],    # OPTIONAL
      ResolverEndpointType => 'IPV6',    # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ResolverEndpoint = $CreateResolverEndpointResponse->ResolverEndpoint;

    # Returns a L<Paws::Route53Resolver::CreateResolverEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateResolverEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of running the operation twice.
C<CreatorRequestId> can be any unique string, for example, a date/time
stamp.



=head2 B<REQUIRED> Direction => Str

Specify the applicable value:

=over

=item *

C<INBOUND>: Resolver forwards DNS queries to the DNS service for a VPC
from your network

=item *

C<OUTBOUND>: Resolver forwards DNS queries from the DNS service for a
VPC to your network

=back


Valid values are: C<"INBOUND">, C<"OUTBOUND">

=head2 B<REQUIRED> IpAddresses => ArrayRef[L<Paws::Route53Resolver::IpAddressRequest>]

The subnets and IP addresses in your VPC that DNS queries originate
from (for outbound endpoints) or that you forward DNS queries to (for
inbound endpoints). The subnet ID uniquely identifies a VPC.

Even though the minimum is 1, Route 53 requires that you create at
least two.



=head2 Name => Str

A friendly name that lets you easily find a configuration in the
Resolver dashboard in the Route 53 console.



=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost. If you specify this, you
must also specify a value for the C<PreferredInstanceType>.



=head2 PreferredInstanceType => Str

The instance type. If you specify this, you must also specify a value
for the C<OutpostArn>.



=head2 Protocols => ArrayRef[Str|Undef]

The protocols you want to use for the endpoint. DoH-FIPS is applicable
for inbound endpoints only.

For an inbound endpoint you can apply the protocols as follows:

=over

=item *

Do53 and DoH in combination.

=item *

Do53 and DoH-FIPS in combination.

=item *

Do53 alone.

=item *

DoH alone.

=item *

DoH-FIPS alone.

=item *

None, which is treated as Do53.

=back

For an outbound endpoint you can apply the protocols as follows:

=over

=item *

Do53 and DoH in combination.

=item *

Do53 alone.

=item *

DoH alone.

=item *

None, which is treated as Do53.

=back




=head2 ResolverEndpointType => Str

For the endpoint type you can choose either IPv4, IPv6, or dual-stack.
A dual-stack endpoint means that it will resolve via both IPv4 and
IPv6. This endpoint type is applied to all IP addresses.

Valid values are: C<"IPV6">, C<"IPV4">, C<"DUALSTACK">

=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The ID of one or more security groups that you want to use to control
access to this VPC. The security group that you specify must include
one or more inbound rules (for inbound Resolver endpoints) or outbound
rules (for outbound Resolver endpoints). Inbound and outbound rules
must allow TCP and UDP access. For inbound access, open port 53. For
outbound access, open the port that you're using for DNS queries on
your network.

Some security group rules will cause your connection to be tracked. For
outbound resolver endpoint, it can potentially impact the maximum
queries per second from outbound endpoint to your target name server.
For inbound resolver endpoint, it can bring down the overall maximum
queries per second per IP address to as low as 1500. To avoid
connection tracking caused by security group, see Untracked connections
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#untracked-connectionsl).



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolverEndpoint in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


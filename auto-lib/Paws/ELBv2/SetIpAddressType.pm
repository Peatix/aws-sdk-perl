
package Paws::ELBv2::SetIpAddressType;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIpAddressType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::SetIpAddressTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIpAddressTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetIpAddressType - Arguments for method SetIpAddressType on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetIpAddressType on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method SetIpAddressType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetIpAddressType.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $SetIpAddressTypeOutput = $elasticloadbalancing->SetIpAddressType(
      IpAddressType   => 'ipv4',
      LoadBalancerArn => 'MyLoadBalancerArn',

    );

    # Results:
    my $IpAddressType = $SetIpAddressTypeOutput->IpAddressType;

    # Returns a L<Paws::ELBv2::SetIpAddressTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetIpAddressType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAddressType => Str

The IP address type. Internal load balancers must use C<ipv4>.

[Application Load Balancers] The possible values are C<ipv4> (IPv4
addresses), C<dualstack> (IPv4 and IPv6 addresses), and
C<dualstack-without-public-ipv4> (public IPv6 addresses and private
IPv4 and IPv6 addresses).

Application Load Balancer authentication supports IPv4 addresses only
when connecting to an Identity Provider (IdP) or Amazon Cognito
endpoint. Without a public IPv4 address the load balancer can't
complete the authentication process, resulting in HTTP 500 errors.

[Network Load Balancers and Gateway Load Balancers] The possible values
are C<ipv4> (IPv4 addresses) and C<dualstack> (IPv4 and IPv6
addresses).

Valid values are: C<"ipv4">, C<"dualstack">, C<"dualstack-without-public-ipv4">

=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetIpAddressType in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


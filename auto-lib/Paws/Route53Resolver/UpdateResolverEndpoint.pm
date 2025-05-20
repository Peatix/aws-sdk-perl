
package Paws::Route53Resolver::UpdateResolverEndpoint;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResolverEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has ResolverEndpointType => (is => 'ro', isa => 'Str');
  has UpdateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::UpdateIpAddress]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolverEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateResolverEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverEndpoint - Arguments for method UpdateResolverEndpoint on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolverEndpoint on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateResolverEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolverEndpoint.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateResolverEndpointResponse =
      $route53resolver->UpdateResolverEndpoint(
      ResolverEndpointId => 'MyResourceId',
      Name               => 'MyName',         # OPTIONAL
      Protocols          => [
        'DoH', ...                            # values: DoH, Do53, DoH-FIPS
      ],    # OPTIONAL
      ResolverEndpointType => 'IPV6',    # OPTIONAL
      UpdateIpAddresses    => [
        {
          IpId => 'MyResourceId',    # min: 1, max: 64
          Ipv6 => 'MyIpv6',          # min: 7, max: 39

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ResolverEndpoint = $UpdateResolverEndpointResponse->ResolverEndpoint;

    # Returns a L<Paws::Route53Resolver::UpdateResolverEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateResolverEndpoint>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the Resolver endpoint that you want to update.



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

You can't change the protocol of an inbound endpoint directly from only
Do53 to only DoH, or DoH-FIPS. This is to prevent a sudden disruption
to incoming traffic that relies on Do53. To change the protocol from
Do53 to DoH, or DoH-FIPS, you must first enable both Do53 and DoH, or
Do53 and DoH-FIPS, to make sure that all incoming traffic has
transferred to using the DoH protocol, or DoH-FIPS, and then remove the
Do53.



=head2 B<REQUIRED> ResolverEndpointId => Str

The ID of the Resolver endpoint that you want to update.



=head2 ResolverEndpointType => Str

Specifies the endpoint type for what type of IP address the endpoint
uses to forward DNS queries.

Updating to C<IPV6> type isn't currently supported.

Valid values are: C<"IPV6">, C<"IPV4">, C<"DUALSTACK">

=head2 UpdateIpAddresses => ArrayRef[L<Paws::Route53Resolver::UpdateIpAddress>]

Specifies the IPv6 address when you update the Resolver endpoint from
IPv4 to dual-stack. If you don't specify an IPv6 address, one will be
automatically chosen from your subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolverEndpoint in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


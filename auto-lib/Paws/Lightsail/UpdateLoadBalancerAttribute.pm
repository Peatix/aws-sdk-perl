
package Paws::Lightsail::UpdateLoadBalancerAttribute;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeName' , required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeValue' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLoadBalancerAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateLoadBalancerAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateLoadBalancerAttribute - Arguments for method UpdateLoadBalancerAttribute on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLoadBalancerAttribute on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateLoadBalancerAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLoadBalancerAttribute.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateLoadBalancerAttributeResult =
      $lightsail->UpdateLoadBalancerAttribute(
      AttributeName    => 'HealthCheckPath',
      AttributeValue   => 'MyStringMax256',
      LoadBalancerName => 'MyResourceName',

      );

    # Results:
    my $Operations = $UpdateLoadBalancerAttributeResult->Operations;

    # Returns a L<Paws::Lightsail::UpdateLoadBalancerAttributeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateLoadBalancerAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the attribute you want to update.

Valid values are: C<"HealthCheckPath">, C<"SessionStickinessEnabled">, C<"SessionStickiness_LB_CookieDurationSeconds">, C<"HttpsRedirectionEnabled">, C<"TlsPolicyName">

=head2 B<REQUIRED> AttributeValue => Str

The value that you want to specify for the attribute name.

The following values are supported depending on what you specify for
the C<attributeName> request parameter:

=over

=item *

If you specify C<HealthCheckPath> for the C<attributeName> request
parameter, then the C<attributeValue> request parameter must be the
path to ping on the target (for example, C</weather/us/wa/seattle>).

=item *

If you specify C<SessionStickinessEnabled> for the C<attributeName>
request parameter, then the C<attributeValue> request parameter must be
C<true> to activate session stickiness or C<false> to deactivate
session stickiness.

=item *

If you specify C<SessionStickiness_LB_CookieDurationSeconds> for the
C<attributeName> request parameter, then the C<attributeValue> request
parameter must be an interger that represents the cookie duration in
seconds.

=item *

If you specify C<HttpsRedirectionEnabled> for the C<attributeName>
request parameter, then the C<attributeValue> request parameter must be
C<true> to activate HTTP to HTTPS redirection or C<false> to deactivate
HTTP to HTTPS redirection.

=item *

If you specify C<TlsPolicyName> for the C<attributeName> request
parameter, then the C<attributeValue> request parameter must be the
name of the TLS policy.

Use the GetLoadBalancerTlsPolicies
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetLoadBalancerTlsPolicies.html)
action to get a list of TLS policy names that you can specify.

=back




=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer that you want to modify
(C<my-load-balancer>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLoadBalancerAttribute in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


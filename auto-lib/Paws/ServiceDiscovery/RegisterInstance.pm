
package Paws::ServiceDiscovery::RegisterInstance;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes', required => 1);
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::RegisterInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::RegisterInstance - Arguments for method RegisterInstance on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterInstance on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method RegisterInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterInstance.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    # Example: Register Instance
    # Example: Register Instance
    my $RegisterInstanceResponse = $servicediscovery->RegisterInstance(
      'Attributes' => {
        'AWS_INSTANCE_IPV4' => '172.2.1.3',
        'AWS_INSTANCE_PORT' => 808
      },
      'CreatorRequestId' => '7a48a98a-72e6-4849-bfa7-1a458e030d7b',
      'InstanceId'       => 'myservice-53',
      'ServiceId'        => 'srv-p5zdwlg5uvvzjita'
    );

    # Results:
    my $OperationId = $RegisterInstanceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::RegisterInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/RegisterInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::ServiceDiscovery::Attributes>

A string map that contains the following information for the service
that you specify in C<ServiceId>:

=over

=item *

The attributes that apply to the records that are defined in the
service.

=item *

For each attribute, the applicable value.

=back

Do not include sensitive information in the attributes if the namespace
is discoverable by public DNS queries.

The following are the supported attribute keys.

=over

=item AWS_ALIAS_DNS_NAME

If you want Cloud Map to create an Amazon Route 53 alias record that
routes traffic to an Elastic Load Balancing load balancer, specify the
DNS name that's associated with the load balancer. For information
about how to get the DNS name, see "DNSName" in the topic AliasTarget
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html)
in the I<Route 53 API Reference>.

Note the following:

=over

=item *

The configuration for the service that's specified by C<ServiceId> must
include settings for an C<A> record, an C<AAAA> record, or both.

=item *

In the service that's specified by C<ServiceId>, the value of
C<RoutingPolicy> must be C<WEIGHTED>.

=item *

If the service that's specified by C<ServiceId> includes
C<HealthCheckConfig> settings, Cloud Map will create the Route 53
health check, but it doesn't associate the health check with the alias
record.

=item *

Cloud Map currently doesn't support creating alias records that route
traffic to Amazon Web Services resources other than Elastic Load
Balancing load balancers.

=item *

If you specify a value for C<AWS_ALIAS_DNS_NAME>, don't specify values
for any of the C<AWS_INSTANCE> attributes.

=item *

The C<AWS_ALIAS_DNS_NAME> is not supported in the GovCloud (US)
Regions.

=back

=item AWS_EC2_INSTANCE_ID

I<HTTP namespaces only.> The Amazon EC2 instance ID for the instance.
If the C<AWS_EC2_INSTANCE_ID> attribute is specified, then the only
other attribute that can be specified is C<AWS_INIT_HEALTH_STATUS>.
When the C<AWS_EC2_INSTANCE_ID> attribute is specified, then the
C<AWS_INSTANCE_IPV4> attribute will be filled out with the primary
private IPv4 address.

=item AWS_INIT_HEALTH_STATUS

If the service configuration includes C<HealthCheckCustomConfig>, you
can optionally use C<AWS_INIT_HEALTH_STATUS> to specify the initial
status of the custom health check, C<HEALTHY> or C<UNHEALTHY>. If you
don't specify a value for C<AWS_INIT_HEALTH_STATUS>, the initial status
is C<HEALTHY>.

=item AWS_INSTANCE_CNAME

If the service configuration includes a C<CNAME> record, the domain
name that you want Route 53 to return in response to DNS queries (for
example, C<example.com>).

This value is required if the service specified by C<ServiceId>
includes settings for an C<CNAME> record.

=item AWS_INSTANCE_IPV4

If the service configuration includes an C<A> record, the IPv4 address
that you want Route 53 to return in response to DNS queries (for
example, C<192.0.2.44>).

This value is required if the service specified by C<ServiceId>
includes settings for an C<A> record. If the service includes settings
for an C<SRV> record, you must specify a value for
C<AWS_INSTANCE_IPV4>, C<AWS_INSTANCE_IPV6>, or both.

=item AWS_INSTANCE_IPV6

If the service configuration includes an C<AAAA> record, the IPv6
address that you want Route 53 to return in response to DNS queries
(for example, C<2001:0db8:85a3:0000:0000:abcd:0001:2345>).

This value is required if the service specified by C<ServiceId>
includes settings for an C<AAAA> record. If the service includes
settings for an C<SRV> record, you must specify a value for
C<AWS_INSTANCE_IPV4>, C<AWS_INSTANCE_IPV6>, or both.

=item AWS_INSTANCE_PORT

If the service includes an C<SRV> record, the value that you want Route
53 to return for the port.

If the service includes C<HealthCheckConfig>, the port on the endpoint
that you want Route 53 to send requests to.

This value is required if you specified settings for an C<SRV> record
or a Route 53 health check when you created the service.

=item Custom attributes

You can add up to 30 custom attributes. For each key-value pair, the
maximum length of the attribute name is 255 characters, and the maximum
length of the attribute value is 1,024 characters. The total size of
all provided attributes (sum of all keys and values) must not exceed
5,000 characters.

=back




=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<RegisterInstance> requests to be retried without the risk of
executing the operation twice. You must use a unique
C<CreatorRequestId> string every time you submit a C<RegisterInstance>
request if you're registering additional instances for the same
namespace and service. C<CreatorRequestId> can be any unique string
(for example, a date/time stamp).



=head2 B<REQUIRED> InstanceId => Str

An identifier that you want to associate with the instance. Note the
following:

=over

=item *

If the service that's specified by C<ServiceId> includes settings for
an C<SRV> record, the value of C<InstanceId> is automatically included
as part of the value for the C<SRV> record. For more information, see
DnsRecord E<gt> Type
(https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type).

=item *

You can use this value to update an existing instance.

=item *

To register a new instance, you must specify a value that's unique
among instances that you register by using the same service.

=item *

If you specify an existing C<InstanceId> and C<ServiceId>, Cloud Map
updates the existing DNS records, if any. If there's also an existing
health check, Cloud Map deletes the old health check and creates a new
one.

The health check isn't deleted immediately, so it will still appear for
a while if you submit a C<ListHealthChecks> request, for example.

=back

Do not include sensitive information in C<InstanceId> if the namespace
is discoverable by public DNS queries and any C<Type> member of
C<DnsRecord> for the service contains C<SRV> because the C<InstanceId>
is discoverable by public DNS queries.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service that you want to use for settings for the
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterInstance in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


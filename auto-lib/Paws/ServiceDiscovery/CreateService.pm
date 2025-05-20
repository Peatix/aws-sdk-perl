
package Paws::ServiceDiscovery::CreateService;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::DnsConfig');
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckConfig');
  has HealthCheckCustomConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckCustomConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::Tag]');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreateService - Arguments for method CreateService on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    # Example: Create service
    # Example: Create service
    my $CreateServiceResponse = $servicediscovery->CreateService(
      'CreatorRequestId' => '567c1193-6b00-4308-bd57-ad38a8822d25',
      'DnsConfig'        => {
        'DnsRecords' => [

          {
            'TTL'  => 60,
            'Type' => 'A'
          }
        ],
        'NamespaceId'   => 'ns-ylexjili4cdxy3xm',
        'RoutingPolicy' => 'MULTIVALUE'
      },
      'Name'        => 'myservice',
      'NamespaceId' => 'ns-ylexjili4cdxy3xm'
    );

    # Results:
    my $Service = $CreateServiceResponse->Service;

    # Returns a L<Paws::ServiceDiscovery::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/CreateService>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<CreateService> requests to be retried without the risk of running the
operation twice. C<CreatorRequestId> can be any unique string (for
example, a date/timestamp).



=head2 Description => Str

A description for the service.



=head2 DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>

A complex type that contains information about the Amazon Route 53
records that you want Cloud Map to create when you register an
instance.



=head2 HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>

I<Public DNS and HTTP namespaces only.> A complex type that contains
settings for an optional Route 53 health check. If you specify settings
for a health check, Cloud Map associates the health check with all the
Route 53 DNS records that you specify in C<DnsConfig>.

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.

For information about the charges for health checks, see Cloud Map
Pricing (http://aws.amazon.com/cloud-map/pricing/).



=head2 HealthCheckCustomConfig => L<Paws::ServiceDiscovery::HealthCheckCustomConfig>

A complex type that contains information about an optional custom
health check.

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.

You can't add, update, or delete a C<HealthCheckCustomConfig>
configuration from an existing service.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to the service.

Do not include sensitive information in the name if the namespace is
discoverable by public DNS queries.

If you want Cloud Map to create an C<SRV> record when you register an
instance and you're using a system that requires a specific C<SRV>
format, such as HAProxy (http://www.haproxy.org/), specify the
following for C<Name>:

=over

=item *

Start the name with an underscore (_), such as C<_exampleservice>.

=item *

End the name with I<._protocol>, such as C<._tcp>.

=back

When you register an instance, Cloud Map creates an C<SRV> record and
assigns a name to the record by concatenating the service name and the
namespace name (for example,

C<_exampleservice._tcp.example.com>).

For services that are accessible by DNS queries, you can't create
multiple services with names that differ only by case (such as EXAMPLE
and example). Otherwise, these services have the same DNS name and
can't be distinguished. However, if you use a namespace that's only
accessible by API calls, then you can create services that with names
that differ only by case.



=head2 NamespaceId => Str

The ID of the namespace that you want to use to create the service. The
namespace ID must be specified, but it can be specified either here or
in the C<DnsConfig> object.



=head2 Tags => ArrayRef[L<Paws::ServiceDiscovery::Tag>]

The tags to add to the service. Each tag consists of a key and an
optional value that you define. Tags keys can be up to 128 characters
in length, and tag values can be up to 256 characters in length.



=head2 Type => Str

If present, specifies that the service instances are only discoverable
using the C<DiscoverInstances> API operation. No DNS records is
registered for the service instances. The only valid value is C<HTTP>.

Valid values are: C<"HTTP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


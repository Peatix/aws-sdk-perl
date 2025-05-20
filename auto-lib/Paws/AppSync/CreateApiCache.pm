
package Paws::AppSync::CreateApiCache;
  use Moose;
  has ApiCachingBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiCachingBehavior', required => 1);
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'atRestEncryptionEnabled');
  has HealthMetricsConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'healthMetricsConfig');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'transitEncryptionEnabled');
  has Ttl => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ttl', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/ApiCaches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateApiCacheResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiCache - Arguments for method CreateApiCache on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiCache on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateApiCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiCache.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateApiCacheResponse = $appsync->CreateApiCache(
      ApiCachingBehavior       => 'FULL_REQUEST_CACHING',
      ApiId                    => 'MyString',
      Ttl                      => 1,
      Type                     => 'T2_SMALL',
      AtRestEncryptionEnabled  => 1,                        # OPTIONAL
      HealthMetricsConfig      => 'ENABLED',                # OPTIONAL
      TransitEncryptionEnabled => 1,                        # OPTIONAL
    );

    # Results:
    my $ApiCache = $CreateApiCacheResponse->ApiCache;

    # Returns a L<Paws::AppSync::CreateApiCacheResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateApiCache>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiCachingBehavior => Str

Caching behavior.

=over

=item *

B<FULL_REQUEST_CACHING>: All requests from the same user are cached.
Individual resolvers are automatically cached. All API calls will try
to return responses from the cache.

=item *

B<PER_RESOLVER_CACHING>: Individual resolvers that you specify are
cached.

=item *

B<OPERATION_LEVEL_CACHING>: Full requests are cached together and
returned without executing resolvers.

=back


Valid values are: C<"FULL_REQUEST_CACHING">, C<"PER_RESOLVER_CACHING">, C<"OPERATION_LEVEL_CACHING">

=head2 B<REQUIRED> ApiId => Str

The GraphQL API ID.



=head2 AtRestEncryptionEnabled => Bool

At-rest encryption flag for cache. You cannot update this setting after
creation.



=head2 HealthMetricsConfig => Str

Controls how cache health metrics will be emitted to CloudWatch. Cache
health metrics include:

=over

=item *

NetworkBandwidthOutAllowanceExceeded: The network packets dropped
because the throughput exceeded the aggregated bandwidth limit. This is
useful for diagnosing bottlenecks in a cache configuration.

=item *

EngineCPUUtilization: The CPU utilization (percentage) allocated to the
Redis process. This is useful for diagnosing bottlenecks in a cache
configuration.

=back

Metrics will be recorded by API ID. You can set the value to C<ENABLED>
or C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 TransitEncryptionEnabled => Bool

Transit encryption flag when connecting to cache. You cannot update
this setting after creation.



=head2 B<REQUIRED> Ttl => Int

TTL in seconds for cache entries.

Valid values are 1E<ndash>3,600 seconds.



=head2 B<REQUIRED> Type => Str

The cache instance type. Valid values are

=over

=item *

C<SMALL>

=item *

C<MEDIUM>

=item *

C<LARGE>

=item *

C<XLARGE>

=item *

C<LARGE_2X>

=item *

C<LARGE_4X>

=item *

C<LARGE_8X> (not available in all regions)

=item *

C<LARGE_12X>

=back

Historically, instance types were identified by an EC2-style value. As
of July 2020, this is deprecated, and the generic identifiers above
should be used.

The following legacy instance types are available, but their use is
discouraged:

=over

=item *

B<T2_SMALL>: A t2.small instance type.

=item *

B<T2_MEDIUM>: A t2.medium instance type.

=item *

B<R4_LARGE>: A r4.large instance type.

=item *

B<R4_XLARGE>: A r4.xlarge instance type.

=item *

B<R4_2XLARGE>: A r4.2xlarge instance type.

=item *

B<R4_4XLARGE>: A r4.4xlarge instance type.

=item *

B<R4_8XLARGE>: A r4.8xlarge instance type.

=back


Valid values are: C<"T2_SMALL">, C<"T2_MEDIUM">, C<"R4_LARGE">, C<"R4_XLARGE">, C<"R4_2XLARGE">, C<"R4_4XLARGE">, C<"R4_8XLARGE">, C<"SMALL">, C<"MEDIUM">, C<"LARGE">, C<"XLARGE">, C<"LARGE_2X">, C<"LARGE_4X">, C<"LARGE_8X">, C<"LARGE_12X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiCache in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


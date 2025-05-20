
package Paws::AppSync::CreateResolver;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has CachingConfig => (is => 'ro', isa => 'Paws::AppSync::CachingConfig', traits => ['NameInRequest'], request_name => 'cachingConfig');
  has Code => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'code');
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceName');
  has FieldName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fieldName', required => 1);
  has Kind => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kind');
  has MaxBatchSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxBatchSize');
  has MetricsConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsConfig');
  has PipelineConfig => (is => 'ro', isa => 'Paws::AppSync::PipelineConfig', traits => ['NameInRequest'], request_name => 'pipelineConfig');
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMappingTemplate');
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseMappingTemplate');
  has Runtime => (is => 'ro', isa => 'Paws::AppSync::AppSyncRuntime', traits => ['NameInRequest'], request_name => 'runtime');
  has SyncConfig => (is => 'ro', isa => 'Paws::AppSync::SyncConfig', traits => ['NameInRequest'], request_name => 'syncConfig');
  has TypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'typeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResolver');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}/resolvers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateResolverResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateResolver - Arguments for method CreateResolver on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolver on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateResolver.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolver.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateResolverResponse = $appsync->CreateResolver(
      ApiId         => 'MyString',
      FieldName     => 'MyResourceName',
      TypeName      => 'MyResourceName',
      CachingConfig => {
        Ttl         => 1,
        CachingKeys => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      Code           => 'MyCode',            # OPTIONAL
      DataSourceName => 'MyResourceName',    # OPTIONAL
      Kind           => 'UNIT',              # OPTIONAL
      MaxBatchSize   => 1,                   # OPTIONAL
      MetricsConfig  => 'ENABLED',           # OPTIONAL
      PipelineConfig => {
        Functions => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      RequestMappingTemplate  => 'MyMappingTemplate',    # OPTIONAL
      ResponseMappingTemplate => 'MyMappingTemplate',    # OPTIONAL
      Runtime                 => {
        Name           => 'APPSYNC_JS',                  # values: APPSYNC_JS
        RuntimeVersion => 'MyString',

      },    # OPTIONAL
      SyncConfig => {
        ConflictDetection => 'VERSION',    # values: VERSION, NONE; OPTIONAL
        ConflictHandler   => 'OPTIMISTIC_CONCURRENCY'
        ,    # values: OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE; OPTIONAL
        LambdaConflictHandlerConfig =>
          { LambdaConflictHandlerArn => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Resolver = $CreateResolverResponse->Resolver;

    # Returns a L<Paws::AppSync::CreateResolverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateResolver>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID for the GraphQL API for which the resolver is being created.



=head2 CachingConfig => L<Paws::AppSync::CachingConfig>

The caching configuration for the resolver.



=head2 Code => Str

The C<resolver> code that contains the request and response functions.
When code is used, the C<runtime> is required. The C<runtime> value
must be C<APPSYNC_JS>.



=head2 DataSourceName => Str

The name of the data source for which the resolver is being created.



=head2 B<REQUIRED> FieldName => Str

The name of the field to attach the resolver to.



=head2 Kind => Str

The resolver type.

=over

=item *

B<UNIT>: A UNIT resolver type. A UNIT resolver is the default resolver
type. You can use a UNIT resolver to run a GraphQL query against a
single data source.

=item *

B<PIPELINE>: A PIPELINE resolver type. You can use a PIPELINE resolver
to invoke a series of C<Function> objects in a serial manner. You can
use a pipeline resolver to run a GraphQL query against multiple data
sources.

=back


Valid values are: C<"UNIT">, C<"PIPELINE">

=head2 MaxBatchSize => Int

The maximum batching size for a resolver.



=head2 MetricsConfig => Str

Enables or disables enhanced resolver metrics for specified resolvers.
Note that C<metricsConfig> won't be used unless the
C<resolverLevelMetricsBehavior> value is set to
C<PER_RESOLVER_METRICS>. If the C<resolverLevelMetricsBehavior> is set
to C<FULL_REQUEST_RESOLVER_METRICS> instead, C<metricsConfig> will be
ignored. However, you can still set its value.

C<metricsConfig> can be C<ENABLED> or C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 PipelineConfig => L<Paws::AppSync::PipelineConfig>

The C<PipelineConfig>.



=head2 RequestMappingTemplate => Str

The mapping template to use for requests.

A resolver uses a request mapping template to convert a GraphQL
expression into a format that a data source can understand. Mapping
templates are written in Apache Velocity Template Language (VTL).

VTL request mapping templates are optional when using an Lambda data
source. For all other data sources, VTL request and response mapping
templates are required.



=head2 ResponseMappingTemplate => Str

The mapping template to use for responses from the data source.



=head2 Runtime => L<Paws::AppSync::AppSyncRuntime>





=head2 SyncConfig => L<Paws::AppSync::SyncConfig>

The C<SyncConfig> for a resolver attached to a versioned data source.



=head2 B<REQUIRED> TypeName => Str

The name of the C<Type>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolver in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


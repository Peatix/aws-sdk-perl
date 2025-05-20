
package Paws::Appflow::ResetConnectorMetadataCache;
  use Moose;
  has ApiVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiVersion');
  has ConnectorEntityName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorEntityName');
  has ConnectorProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileName');
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType');
  has EntitiesPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entitiesPath');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetConnectorMetadataCache');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reset-connector-metadata-cache');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::ResetConnectorMetadataCacheResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ResetConnectorMetadataCache - Arguments for method ResetConnectorMetadataCache on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetConnectorMetadataCache on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method ResetConnectorMetadataCache.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetConnectorMetadataCache.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $ResetConnectorMetadataCacheResponse =
      $appflow->ResetConnectorMetadataCache(
      ApiVersion           => 'MyApiVersion',              # OPTIONAL
      ConnectorEntityName  => 'MyEntityName',              # OPTIONAL
      ConnectorProfileName => 'MyConnectorProfileName',    # OPTIONAL
      ConnectorType        => 'Salesforce',                # OPTIONAL
      EntitiesPath         => 'MyEntitiesPath',            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/ResetConnectorMetadataCache>

=head1 ATTRIBUTES


=head2 ApiVersion => Str

The API version that you specified in the connector profile that
youE<rsquo>re resetting cached metadata for. You must use this
parameter only if the connector supports multiple API versions or if
the connector type is CustomConnector.

To look up how many versions a connector supports, use the
DescribeConnectors action. In the response, find the value that Amazon
AppFlow returns for the connectorVersion parameter.

To look up the connector type, use the DescribeConnectorProfiles
action. In the response, find the value that Amazon AppFlow returns for
the connectorType parameter.

To look up the API version that you specified in a connector profile,
use the DescribeConnectorProfiles action.



=head2 ConnectorEntityName => Str

Use this parameter if you want to reset cached metadata about the
details for an individual entity.

If you don't include this parameter in your request, Amazon AppFlow
only resets cached metadata about entity names, not entity details.



=head2 ConnectorProfileName => Str

The name of the connector profile that you want to reset cached
metadata for.

You can omit this parameter if you're resetting the cache for any of
the following connectors: Amazon Connect, Amazon EventBridge, Amazon
Lookout for Metrics, Amazon S3, or Upsolver. If you're resetting the
cache for any other connector, you must include this parameter in your
request.



=head2 ConnectorType => Str

The type of connector to reset cached metadata for.

You must include this parameter in your request if you're resetting the
cache for any of the following connectors: Amazon Connect, Amazon
EventBridge, Amazon Lookout for Metrics, Amazon S3, or Upsolver. If
you're resetting the cache for any other connector, you can omit this
parameter from your request.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">, C<"SAPOData">, C<"CustomConnector">, C<"Pardot">

=head2 EntitiesPath => Str

Use this parameter only if youE<rsquo>re resetting the cached metadata
about a nested entity. Only some connectors support nested entities. A
nested entity is one that has another entity as a parent. To use this
parameter, specify the name of the parent entity.

To look up the parent-child relationship of entities, you can send a
ListConnectorEntities request that omits the entitiesPath parameter.
Amazon AppFlow will return a list of top-level entities. For each one,
it indicates whether the entity has nested entities. Then, in a
subsequent ListConnectorEntities request, you can specify a parent
entity name for the entitiesPath parameter. Amazon AppFlow will return
a list of the child entities for that parent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetConnectorMetadataCache in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


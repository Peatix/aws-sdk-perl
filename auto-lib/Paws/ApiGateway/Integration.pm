
package Paws::ApiGateway::Integration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cacheKeyParameters');
  has CacheNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheNamespace');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType');
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has Credentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentials');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has IntegrationResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfIntegrationResponse', traits => ['NameInRequest'], request_name => 'integrationResponses');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has TimeoutInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMillis');
  has TlsConfig => (is => 'ro', isa => 'Paws::ApiGateway::TlsConfig', traits => ['NameInRequest'], request_name => 'tlsConfig');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Integration

=head1 ATTRIBUTES


=head2 CacheKeyParameters => ArrayRef[Str|Undef]

A list of request parameters whose values API Gateway caches. To be
valid values for C<cacheKeyParameters>, these parameters must also be
specified for Method C<requestParameters>.


=head2 CacheNamespace => Str

Specifies a group of related cached parameters. By default, API Gateway
uses the resource ID as the C<cacheNamespace>. You can specify the same
C<cacheNamespace> across resources to return the same cached data for
requests to different resources.


=head2 ConnectionId => Str

The ID of the VpcLink used for the integration when
C<connectionType=VPC_LINK> and undefined, otherwise.


=head2 ConnectionType => Str

The type of the network connection to the integration endpoint. The
valid value is C<INTERNET> for connections through the public routable
internet or C<VPC_LINK> for private connections between API Gateway and
a network load balancer in a VPC. The default value is C<INTERNET>.

Valid values are: C<"INTERNET">, C<"VPC_LINK">
=head2 ContentHandling => Str

Specifies how to handle request payload content type conversions.
Supported values are C<CONVERT_TO_BINARY> and C<CONVERT_TO_TEXT>, with
the following behaviors:

If this property is not defined, the request payload will be passed
through from the method request to integration request without
modification, provided that the C<passthroughBehavior> is configured to
support payload pass-through.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">
=head2 Credentials => Str

Specifies the credentials required for the integration, if any. For AWS
integrations, three options are available. To specify an IAM Role for
API Gateway to assume, use the role's Amazon Resource Name (ARN). To
require that the caller's identity be passed through from the request,
specify the string C<arn:aws:iam::\*:user/\*>. To use resource-based
permissions on supported Amazon Web Services services, specify null.


=head2 HttpMethod => Str

Specifies the integration's HTTP method type. For the Type property, if
you specify C<MOCK>, this property is optional. For Lambda
integrations, you must set the integration method to C<POST>. For all
other types, you must specify this property.


=head2 IntegrationResponses => L<Paws::ApiGateway::MapOfIntegrationResponse>

Specifies the integration's responses.


=head2 PassthroughBehavior => Str

Specifies how the method request body of an unmapped content type will
be passed through the integration request to the back end without
transformation. A content type is unmapped if no mapping template is
defined in the integration or the content type does not match any of
the mapped content types, as specified in C<requestTemplates>. The
valid value is one of the following: C<WHEN_NO_MATCH>: passes the
method request body through the integration request to the back end
without transformation when the method request content type does not
match any content type associated with the mapping templates defined in
the integration request. C<WHEN_NO_TEMPLATES>: passes the method
request body through the integration request to the back end without
transformation when no mapping template is defined in the integration
request. If a template is defined when this option is selected, the
method request of an unmapped content-type will be rejected with an
HTTP 415 Unsupported Media Type response. C<NEVER>: rejects the method
request with an HTTP 415 Unsupported Media Type response when either
the method request content type does not match any content type
associated with the mapping templates defined in the integration
request or no mapping template is defined in the integration request.


=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying request parameters that are passed from the
method request to the back end. The key is an integration request
parameter name and the associated value is a method request parameter
value or static value that must be enclosed within single quotes and
pre-encoded as required by the back end. The method request parameter
value must match the pattern of C<method.request.{location}.{name}>,
where C<location> is C<querystring>, C<path>, or C<header> and C<name>
must be a valid and unique method request parameter name.


=head2 RequestTemplates => L<Paws::ApiGateway::MapOfStringToString>

Represents a map of Velocity templates that are applied on the request
payload based on the value of the Content-Type header sent by the
client. The content type value is the key in this map, and the template
(as a String) is the value.


=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds.


=head2 TlsConfig => L<Paws::ApiGateway::TlsConfig>

Specifies the TLS configuration for an integration.


=head2 Type => Str

Specifies an API method integration type. The valid value is one of the
following:

For the HTTP and HTTP proxy integrations, each integration can specify
a protocol (C<http/https>), port and path. Standard 80 and 443 ports
are supported as well as custom ports above 1024. An HTTP or HTTP proxy
integration with a C<connectionType> of C<VPC_LINK> is referred to as a
private integration and uses a VpcLink to connect API Gateway to a
network load balancer of a VPC.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">, C<"HTTP_PROXY">, C<"AWS_PROXY">
=head2 Uri => Str

Specifies Uniform Resource Identifier (URI) of the integration
endpoint.

For C<HTTP> or C<HTTP_PROXY> integrations, the URI must be a fully
formed, encoded HTTP(S) URL according to the RFC-3986 specification for
standard integrations. If C<connectionType> is C<VPC_LINK> specify the
Network Load Balancer DNS name. For C<AWS> or C<AWS_PROXY>
integrations, the URI is of the form
C<arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api}>.
Here, {Region} is the API Gateway region (e.g., us-east-1); {service}
is the name of the integrated Amazon Web Services service (e.g., s3);
and {subdomain} is a designated subdomain supported by certain Amazon
Web Services service for fast host-name lookup. action can be used for
an Amazon Web Services service action-based API, using an
Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing
{service_api} refers to a supported action {name} plus any required
input parameters. Alternatively, path can be used for an Amazon Web
Services service path-based API. The ensuing service_api refers to the
path to an Amazon Web Services service resource, including the region
of the integrated Amazon Web Services service, if applicable. For
example, for integration with the S3 API of GetObject, the uri can be
either
C<arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}>
or C<arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}>


=head2 _request_id => Str


=cut


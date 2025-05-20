
package Paws::ApiGateway::PutIntegration;
  use Moose;
  has CacheKeyParameters => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cacheKeyParameters');
  has CacheNamespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheNamespace');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType');
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has Credentials => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'credentials');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has IntegrationHttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has PassthroughBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passthroughBehavior');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestTemplates');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has TimeoutInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMillis');
  has TlsConfig => (is => 'ro', isa => 'Paws::ApiGateway::TlsConfig', traits => ['NameInRequest'], request_name => 'tlsConfig');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has Uri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uri');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Integration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegration - Arguments for method PutIntegration on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegration on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegration.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Integration = $apigateway->PutIntegration(
      HttpMethod            => 'MyString',
      ResourceId            => 'MyString',
      RestApiId             => 'MyString',
      Type                  => 'HTTP',
      CacheKeyParameters    => [ 'MyString', ... ],              # OPTIONAL
      CacheNamespace        => 'MyString',                       # OPTIONAL
      ConnectionId          => 'MyString',                       # OPTIONAL
      ConnectionType        => 'INTERNET',                       # OPTIONAL
      ContentHandling       => 'CONVERT_TO_BINARY',              # OPTIONAL
      Credentials           => 'MyString',                       # OPTIONAL
      IntegrationHttpMethod => 'MyString',                       # OPTIONAL
      PassthroughBehavior   => 'MyString',                       # OPTIONAL
      RequestParameters     => { 'MyString' => 'MyString', },    # OPTIONAL
      RequestTemplates      => { 'MyString' => 'MyString', },    # OPTIONAL
      TimeoutInMillis       => 1,                                # OPTIONAL
      TlsConfig             => {
        InsecureSkipVerification => 1,                           # OPTIONAL
      },    # OPTIONAL
      Uri => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CacheKeyParameters   = $Integration->CacheKeyParameters;
    my $CacheNamespace       = $Integration->CacheNamespace;
    my $ConnectionId         = $Integration->ConnectionId;
    my $ConnectionType       = $Integration->ConnectionType;
    my $ContentHandling      = $Integration->ContentHandling;
    my $Credentials          = $Integration->Credentials;
    my $HttpMethod           = $Integration->HttpMethod;
    my $IntegrationResponses = $Integration->IntegrationResponses;
    my $PassthroughBehavior  = $Integration->PassthroughBehavior;
    my $RequestParameters    = $Integration->RequestParameters;
    my $RequestTemplates     = $Integration->RequestTemplates;
    my $TimeoutInMillis      = $Integration->TimeoutInMillis;
    my $TlsConfig            = $Integration->TlsConfig;
    my $Type                 = $Integration->Type;
    my $Uri                  = $Integration->Uri;

    # Returns a L<Paws::ApiGateway::Integration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutIntegration>

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

The ID of the VpcLink used for the integration. Specify this value only
if you specify C<VPC_LINK> as the connection type.



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

Specifies whether credentials are required for a put integration.



=head2 B<REQUIRED> HttpMethod => Str

Specifies the HTTP method for the integration.



=head2 IntegrationHttpMethod => Str

The HTTP method for the integration.



=head2 PassthroughBehavior => Str

Specifies the pass-through behavior for incoming requests based on the
Content-Type header in the request, and the available mapping templates
specified as the C<requestTemplates> property on the Integration
resource. There are three valid values: C<WHEN_NO_MATCH>,
C<WHEN_NO_TEMPLATES>, and C<NEVER>.



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



=head2 B<REQUIRED> ResourceId => Str

Specifies a put integration request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 TimeoutInMillis => Int

Custom timeout between 50 and 29,000 milliseconds. The default value is
29,000 milliseconds or 29 seconds.



=head2 TlsConfig => L<Paws::ApiGateway::TlsConfig>





=head2 B<REQUIRED> Type => Str

Specifies a put integration input's type.

Valid values are: C<"HTTP">, C<"AWS">, C<"MOCK">, C<"HTTP_PROXY">, C<"AWS_PROXY">

=head2 Uri => Str

Specifies Uniform Resource Identifier (URI) of the integration
endpoint. For HTTP or C<HTTP_PROXY> integrations, the URI must be a
fully formed, encoded HTTP(S) URL according to the RFC-3986
specification, for either standard integration, where C<connectionType>
is not C<VPC_LINK>, or private integration, where C<connectionType> is
C<VPC_LINK>. For a private HTTP integration, the URI is not used for
routing. For C<AWS> or C<AWS_PROXY> integrations, the URI is of the
form
C<arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api>}.
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
example, for integration with the S3 API of C<GetObject>, the C<uri>
can be either
C<arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}>
or C<arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


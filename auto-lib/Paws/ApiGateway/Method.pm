
package Paws::ApiGateway::Method;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiKeyRequired');
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizationScopes');
  has AuthorizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationType');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerId');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'httpMethod');
  has MethodIntegration => (is => 'ro', isa => 'Paws::ApiGateway::Integration', traits => ['NameInRequest'], request_name => 'methodIntegration');
  has MethodResponses => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodResponse', traits => ['NameInRequest'], request_name => 'methodResponses');
  has OperationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationName');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'requestModels');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RequestValidatorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestValidatorId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Method

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

A boolean flag specifying whether a valid ApiKey is required to invoke
this method.


=head2 AuthorizationScopes => ArrayRef[Str|Undef]

A list of authorization scopes configured on the method. The scopes are
used with a C<COGNITO_USER_POOLS> authorizer to authorize the method
invocation. The authorization works by matching the method scopes
against the scopes parsed from the access token in the incoming
request. The method invocation is authorized if any method scopes
matches a claimed scope in the access token. Otherwise, the invocation
is not authorized. When the method scope is configured, the client must
provide an access token instead of an identity token for authorization
purposes.


=head2 AuthorizationType => Str

The method's authorization type. Valid values are C<NONE> for open
access, C<AWS_IAM> for using AWS IAM permissions, C<CUSTOM> for using a
custom authorizer, or C<COGNITO_USER_POOLS> for using a Cognito user
pool.


=head2 AuthorizerId => Str

The identifier of an Authorizer to use on this method. The
C<authorizationType> must be C<CUSTOM>.


=head2 HttpMethod => Str

The method's HTTP verb.


=head2 MethodIntegration => L<Paws::ApiGateway::Integration>

Gets the method's integration responsible for passing the
client-submitted request to the back end and performing necessary
transformations to make the request compliant with the back end.


=head2 MethodResponses => L<Paws::ApiGateway::MapOfMethodResponse>

Gets a method response associated with a given HTTP status code.


=head2 OperationName => Str

A human-friendly operation identifier for the method. For example, you
can assign the C<operationName> of C<ListPets> for the C<GET /pets>
method in the C<PetStore> example.


=head2 RequestModels => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying data schemas, represented by Model
resources, (as the mapped value) of the request payloads of given
content types (as the mapping key).


=head2 RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map defining required or optional method request parameters
that can be accepted by API Gateway. A key is a method request
parameter name matching the pattern of
C<method.request.{location}.{name}>, where C<location> is
C<querystring>, C<path>, or C<header> and C<name> is a valid and unique
parameter name. The value associated with the key is a Boolean flag
indicating whether the parameter is required (C<true>) or optional
(C<false>). The method request parameter names defined here are
available in Integration to be mapped to integration request parameters
or templates.


=head2 RequestValidatorId => Str

The identifier of a RequestValidator for request validation.


=head2 _request_id => Str


=cut


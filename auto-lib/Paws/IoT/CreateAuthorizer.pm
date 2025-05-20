
package Paws::IoT::CreateAuthorizer;
  use Moose;
  has AuthorizerFunctionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerFunctionArn', required => 1);
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerName', required => 1);
  has EnableCachingForHttp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableCachingForHttp');
  has SigningDisabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'signingDisabled');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TokenKeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenKeyName');
  has TokenSigningPublicKeys => (is => 'ro', isa => 'Paws::IoT::PublicKeyMap', traits => ['NameInRequest'], request_name => 'tokenSigningPublicKeys');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authorizer/{authorizerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateAuthorizer - Arguments for method CreateAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateAuthorizerResponse = $iot->CreateAuthorizer(
      AuthorizerFunctionArn => 'MyAuthorizerFunctionArn',
      AuthorizerName        => 'MyAuthorizerName',
      EnableCachingForHttp  => 1,                           # OPTIONAL
      SigningDisabled       => 1,                           # OPTIONAL
      Status                => 'ACTIVE',                    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TokenKeyName           => 'MyTokenKeyName',    # OPTIONAL
      TokenSigningPublicKeys => {
        'MyKeyName' => 'MyKeyValue',   # key: min: 1, max: 128, value: max: 5120
      },    # OPTIONAL
    );

    # Results:
    my $AuthorizerArn  = $CreateAuthorizerResponse->AuthorizerArn;
    my $AuthorizerName = $CreateAuthorizerResponse->AuthorizerName;

    # Returns a L<Paws::IoT::CreateAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerFunctionArn => Str

The ARN of the authorizer's Lambda function.



=head2 B<REQUIRED> AuthorizerName => Str

The authorizer name.



=head2 EnableCachingForHttp => Bool

When C<true>, the result from the authorizerE<rsquo>s Lambda function
is cached for clients that use persistent HTTP connections. The results
are cached for the time specified by the Lambda function in
C<refreshAfterInSeconds>. This value does not affect authorization of
clients that use MQTT connections.

The default value is C<false>.



=head2 SigningDisabled => Bool

Specifies whether IoT validates the token signature in an authorization
request.



=head2 Status => Str

The status of the create authorizer request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the custom authorizer.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 TokenKeyName => Str

The name of the token key used to extract the token from the HTTP
headers.



=head2 TokenSigningPublicKeys => L<Paws::IoT::PublicKeyMap>

The public keys used to verify the digital signature returned by your
custom authentication service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


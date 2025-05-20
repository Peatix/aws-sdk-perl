
package Paws::AmplifyUIBuilder::ExchangeCodeForToken;
  use Moose;
  has Provider => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'provider', required => 1);
  has Request => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ExchangeCodeForTokenRequestBody', traits => ['NameInRequest'], request_name => 'request', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Request');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExchangeCodeForToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tokens/{provider}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyUIBuilder::ExchangeCodeForTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ExchangeCodeForToken - Arguments for method ExchangeCodeForToken on L<Paws::AmplifyUIBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExchangeCodeForToken on the
L<AWS Amplify UI Builder|Paws::AmplifyUIBuilder> service. Use the attributes of this class
as arguments to method ExchangeCodeForToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExchangeCodeForToken.

=head1 SYNOPSIS

    my $amplifyuibuilder = Paws->service('AmplifyUIBuilder');
    my $ExchangeCodeForTokenResponse = $amplifyuibuilder->ExchangeCodeForToken(
      Provider => 'figma',
      Request  => {
        Code        => 'MySensitiveString',
        RedirectUri => 'MyString',
        ClientId    => 'MySensitiveString',
      },

    );

    # Results:
    my $AccessToken  = $ExchangeCodeForTokenResponse->AccessToken;
    my $ExpiresIn    = $ExchangeCodeForTokenResponse->ExpiresIn;
    my $RefreshToken = $ExchangeCodeForTokenResponse->RefreshToken;

    # Returns a L<Paws::AmplifyUIBuilder::ExchangeCodeForTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder/ExchangeCodeForToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Provider => Str

The third-party provider for the token. The only valid value is
C<figma>.

Valid values are: C<"figma">

=head2 B<REQUIRED> Request => L<Paws::AmplifyUIBuilder::ExchangeCodeForTokenRequestBody>

Describes the configuration of the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExchangeCodeForToken in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


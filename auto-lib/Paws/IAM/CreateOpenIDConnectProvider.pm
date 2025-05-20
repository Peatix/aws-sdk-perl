
package Paws::IAM::CreateOpenIDConnectProvider;
  use Moose;
  has ClientIDList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has ThumbprintList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Url => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOpenIDConnectProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateOpenIDConnectProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOpenIDConnectProviderResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateOpenIDConnectProvider - Arguments for method CreateOpenIDConnectProvider on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOpenIDConnectProvider on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateOpenIDConnectProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOpenIDConnectProvider.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
  # To create an instance profile
  # The following example defines a new OIDC provider in IAM with a client ID of
  # my-application-id and pointing at the server with a URL of
  # https://server.example.com.
    my $CreateOpenIDConnectProviderResponse = $iam->CreateOpenIDConnectProvider(
      'ClientIDList'   => ['my-application-id'],
      'ThumbprintList' => ['3768084dfb3d2b68b7897bf5f565da8efEXAMPLE'],
      'Url'            => 'https://server.example.com'
    );

    # Results:
    my $OpenIDConnectProviderArn =
      $CreateOpenIDConnectProviderResponse->OpenIDConnectProviderArn;

    # Returns a L<Paws::IAM::CreateOpenIDConnectProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateOpenIDConnectProvider>

=head1 ATTRIBUTES


=head2 ClientIDList => ArrayRef[Str|Undef]

Provides a list of client IDs, also known as audiences. When a mobile
or web app registers with an OpenID Connect provider, they establish a
value that identifies the application. This is the value that's sent as
the C<client_id> parameter on OAuth requests.

You can register multiple client IDs with the same provider. For
example, you might have multiple applications that use the same OIDC
provider. You cannot register more than 100 client IDs with a single
IAM OIDC provider.

There is no defined format for a client ID. The
C<CreateOpenIDConnectProviderRequest> operation accepts client IDs up
to 255 characters long.



=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that you want to attach to the new IAM OpenID Connect
(OIDC) provider. Each tag consists of a key name and an associated
value. For more information about tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

If any one of the tags is invalid or if you exceed the allowed maximum
number of tags, then the entire request fails and the resource is not
created.



=head2 ThumbprintList => ArrayRef[Str|Undef]

A list of server certificate thumbprints for the OpenID Connect (OIDC)
identity provider's server certificates. Typically this list includes
only one entry. However, IAM lets you have up to five thumbprints for
an OIDC provider. This lets you maintain multiple thumbprints if the
identity provider is rotating certificates.

This parameter is optional. If it is not included, IAM will retrieve
and use the top intermediate certificate authority (CA) thumbprint of
the OpenID Connect identity provider server certificate.

The server certificate thumbprint is the hex-encoded SHA-1 hash value
of the X.509 certificate used by the domain where the OpenID Connect
provider makes its keys available. It is always a 40-character string.

For example, assume that the OIDC provider is C<server.example.com> and
the provider stores its keys at
https://keys.server.example.com/openid-connect. In that case, the
thumbprint string would be the hex-encoded SHA-1 hash value of the
certificate used by C<https://keys.server.example.com.>

For more information about obtaining the OIDC provider thumbprint, see
Obtaining the thumbprint for an OpenID Connect provider
(https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html)
in the I<IAM user Guide>.



=head2 B<REQUIRED> Url => Str

The URL of the identity provider. The URL must begin with C<https://>
and should correspond to the C<iss> claim in the provider's OpenID
Connect ID tokens. Per the OIDC standard, path components are allowed
but query parameters are not. Typically the URL consists of only a
hostname, like C<https://server.example.org> or C<https://example.com>.
The URL should not contain a port number.

You cannot register the same provider multiple times in a single Amazon
Web Services account. If you try to submit a URL that has already been
used for an OpenID Connect provider in the Amazon Web Services account,
you will get an error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOpenIDConnectProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


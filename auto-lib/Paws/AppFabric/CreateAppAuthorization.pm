
package Paws::AppFabric::CreateAppAuthorization;
  use Moose;
  has App => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'app', required => 1);
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Credential => (is => 'ro', isa => 'Paws::AppFabric::Credential', traits => ['NameInRequest'], request_name => 'credential', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppFabric::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Tenant => (is => 'ro', isa => 'Paws::AppFabric::Tenant', traits => ['NameInRequest'], request_name => 'tenant', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/appauthorizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::CreateAppAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::CreateAppAuthorization - Arguments for method CreateAppAuthorization on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppAuthorization on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method CreateAppAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppAuthorization.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $CreateAppAuthorizationResponse = $appfabric->CreateAppAuthorization(
      App                 => 'MyString255',
      AppBundleIdentifier => 'MyIdentifier',
      AuthType            => 'oauth2',
      Credential          => {
        ApiKeyCredential => {
          ApiKey => 'MySensitiveString2048',    # min: 1, max: 2048

        },    # OPTIONAL
        Oauth2Credential => {
          ClientId     => 'MyString2048',             # min: 1, max: 2048
          ClientSecret => 'MySensitiveString2048',    # min: 1, max: 2048

        },    # OPTIONAL
      },
      Tenant => {
        TenantDisplayName => 'MyString2048',          # min: 1, max: 2048
        TenantIdentifier  => 'MyTenantIdentifier',    # min: 1, max: 1024

      },
      ClientToken => 'MyUUID',                        # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppAuthorization = $CreateAppAuthorizationResponse->AppAuthorization;

    # Returns a L<Paws::AppFabric::CreateAppAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/CreateAppAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => Str

The name of the application.

Valid values are:

=over

=item *

C<SLACK>

=item *

C<ASANA>

=item *

C<JIRA>

=item *

C<M365>

=item *

C<M365AUDITLOGS>

=item *

C<ZOOM>

=item *

C<ZENDESK>

=item *

C<OKTA>

=item *

C<GOOGLE>

=item *

C<DROPBOX>

=item *

C<SMARTSHEET>

=item *

C<CISCO>

=back




=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 B<REQUIRED> AuthType => Str

The authorization type for the app authorization.

Valid values are: C<"oauth2">, C<"apiKey">

=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> Credential => L<Paws::AppFabric::Credential>

Contains credentials for the application, such as an API key or OAuth2
client ID and secret.

Specify credentials that match the authorization type for your request.
For example, if the authorization type for your request is OAuth2
(C<oauth2>), then you should provide only the OAuth2 credentials.



=head2 Tags => ArrayRef[L<Paws::AppFabric::Tag>]

A map of the key-value pairs of the tag or tags to assign to the
resource.



=head2 B<REQUIRED> Tenant => L<Paws::AppFabric::Tenant>

Contains information about an application tenant, such as the
application display name and identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppAuthorization in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


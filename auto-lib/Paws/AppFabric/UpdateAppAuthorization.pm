
package Paws::AppFabric::UpdateAppAuthorization;
  use Moose;
  has AppAuthorizationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appAuthorizationIdentifier', required => 1);
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has Credential => (is => 'ro', isa => 'Paws::AppFabric::Credential', traits => ['NameInRequest'], request_name => 'credential');
  has Tenant => (is => 'ro', isa => 'Paws::AppFabric::Tenant', traits => ['NameInRequest'], request_name => 'tenant');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::UpdateAppAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::UpdateAppAuthorization - Arguments for method UpdateAppAuthorization on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppAuthorization on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method UpdateAppAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppAuthorization.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $UpdateAppAuthorizationResponse = $appfabric->UpdateAppAuthorization(
      AppAuthorizationIdentifier => 'MyIdentifier',
      AppBundleIdentifier        => 'MyIdentifier',
      Credential                 => {
        ApiKeyCredential => {
          ApiKey => 'MySensitiveString2048',    # min: 1, max: 2048

        },    # OPTIONAL
        Oauth2Credential => {
          ClientId     => 'MyString2048',             # min: 1, max: 2048
          ClientSecret => 'MySensitiveString2048',    # min: 1, max: 2048

        },    # OPTIONAL
      },    # OPTIONAL
      Tenant => {
        TenantDisplayName => 'MyString2048',          # min: 1, max: 2048
        TenantIdentifier  => 'MyTenantIdentifier',    # min: 1, max: 1024

      },    # OPTIONAL
    );

    # Results:
    my $AppAuthorization = $UpdateAppAuthorizationResponse->AppAuthorization;

    # Returns a L<Paws::AppFabric::UpdateAppAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/UpdateAppAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppAuthorizationIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app authorization to use for the request.



=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 Credential => L<Paws::AppFabric::Credential>

Contains credentials for the application, such as an API key or OAuth2
client ID and secret.

Specify credentials that match the authorization type of the app
authorization to update. For example, if the authorization type of the
app authorization is OAuth2 (C<oauth2>), then you should provide only
the OAuth2 credentials.



=head2 Tenant => L<Paws::AppFabric::Tenant>

Contains information about an application tenant, such as the
application display name and identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppAuthorization in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Grafana::UpdateWorkspaceAuthentication;
  use Moose;
  has AuthenticationProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authenticationProviders', required => 1);
  has SamlConfiguration => (is => 'ro', isa => 'Paws::Grafana::SamlConfiguration', traits => ['NameInRequest'], request_name => 'samlConfiguration');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspaceAuthentication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/authentication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::UpdateWorkspaceAuthenticationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::UpdateWorkspaceAuthentication - Arguments for method UpdateWorkspaceAuthentication on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspaceAuthentication on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method UpdateWorkspaceAuthentication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspaceAuthentication.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $UpdateWorkspaceAuthenticationResponse =
      $grafana->UpdateWorkspaceAuthentication(
      AuthenticationProviders => [
        'AWS_SSO', ...    # values: AWS_SSO, SAML
      ],
      WorkspaceId       => 'MyWorkspaceId',
      SamlConfiguration => {
        IdpMetadata => {
          Url => 'MyIdpMetadataUrl',    # min: 1, max: 2048; OPTIONAL
          Xml => 'MyString',            # OPTIONAL
        },
        AllowedOrganizations => [
          'MyAllowedOrganization', ...    # min: 1, max: 256
        ],    # OPTIONAL
        AssertionAttributes => {
          Email  => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
          Groups => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
          Login  => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
          Name   => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
          Org    => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
          Role   => 'MyAssertionAttribute',    # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
        LoginValidityDuration => 1,    # OPTIONAL
        RoleValues            => {
          Admin => [
            'MyRoleValue', ...         # min: 1, max: 256
          ],    # OPTIONAL
          Editor => [
            'MyRoleValue', ...    # min: 1, max: 256
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Authentication = $UpdateWorkspaceAuthenticationResponse->Authentication;

    # Returns a L<Paws::Grafana::UpdateWorkspaceAuthenticationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/UpdateWorkspaceAuthentication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationProviders => ArrayRef[Str|Undef]

Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or
both to authenticate users for using the Grafana console within a
workspace. For more information, see User authentication in Amazon
Managed Grafana
(https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html).



=head2 SamlConfiguration => L<Paws::Grafana::SamlConfiguration>

If the workspace uses SAML, use this structure to map SAML assertion
attributes to workspace user information and define which groups in the
assertion attribute are to have the C<Admin> and C<Editor> roles in the
workspace.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to update the authentication for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspaceAuthentication in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


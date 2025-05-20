
package Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpoint;
  use Moose;
  has IdentityProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has LicenseServerSettings => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::LicenseServerSettings', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicenseServerEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/license-server/CreateLicenseServerEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpoint - Arguments for method CreateLicenseServerEndpoint on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicenseServerEndpoint on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method CreateLicenseServerEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicenseServerEndpoint.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $CreateLicenseServerEndpointResponse =
      $license -manager-user-subscriptions->CreateLicenseServerEndpoint(
      IdentityProviderArn   => 'MyArn',
      LicenseServerSettings => {
        ServerSettings => {
          RdsSalSettings => {
            RdsSalCredentialsProvider => {
              SecretsManagerCredentialsProvider => {
                SecretId => 'MySecretsManagerCredentialsProviderSecretIdString'
                ,    # min: 1; OPTIONAL
              },    # OPTIONAL
            },

          },    # OPTIONAL
        },
        ServerType => 'RDS_SAL',    # values: RDS_SAL

      },
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $IdentityProviderArn =
      $CreateLicenseServerEndpointResponse->IdentityProviderArn;
    my $LicenseServerEndpointArn =
      $CreateLicenseServerEndpointResponse->LicenseServerEndpointArn;

# Returns a L<Paws::LicenseManagerUserSubscriptions::CreateLicenseServerEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/CreateLicenseServerEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProviderArn => Str

The Amazon Resource Name (ARN) that identifies the C<IdentityProvider>
resource that contains details about a registered identity provider. In
the case of Active Directory, that can be a self-managed Active
Directory or an Amazon Web Services Managed Active Directory that
contains user identity details.



=head2 B<REQUIRED> LicenseServerSettings => L<Paws::LicenseManagerUserSubscriptions::LicenseServerSettings>

The C<LicenseServerSettings> resource to create for the endpoint. The
settings include the type of license server and the Secrets Manager
secret that enables administrators to add or remove users associated
with the license server.



=head2 Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>

The tags that apply for the license server endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseServerEndpoint in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


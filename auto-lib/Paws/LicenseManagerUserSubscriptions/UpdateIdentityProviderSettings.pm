
package Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettings;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider');
  has IdentityProviderArn => (is => 'ro', isa => 'Str');
  has Product => (is => 'ro', isa => 'Str');
  has UpdateSettings => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::UpdateSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdentityProviderSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identity-provider/UpdateIdentityProviderSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettings - Arguments for method UpdateIdentityProviderSettings on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIdentityProviderSettings on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method UpdateIdentityProviderSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIdentityProviderSettings.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $UpdateIdentityProviderSettingsResponse =
      $license -manager-user-subscriptions->UpdateIdentityProviderSettings(
      UpdateSettings => {
        AddSubnets      => [ 'MySubnet', ... ],
        RemoveSubnets   => [ 'MySubnet', ... ],
        SecurityGroupId => 'MySecurityGroup',    # min: 5, max: 200; OPTIONAL
      },
      IdentityProvider => {
        ActiveDirectoryIdentityProvider => {
          ActiveDirectorySettings => {
            DomainCredentialsProvider => {
              SecretsManagerCredentialsProvider => {
                SecretId => 'MySecretsManagerCredentialsProviderSecretIdString'
                ,    # min: 1; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            DomainIpv4List => [ 'MyIpV4', ... ],    # min: 1, max: 2; OPTIONAL
            DomainName     => 'MyString',           # OPTIONAL
            DomainNetworkSettings => {
              Subnets => [ 'MySubnet', ... ],       # min: 1

            },    # OPTIONAL
          },    # OPTIONAL
          ActiveDirectoryType =>
            'SELF_MANAGED',    # values: SELF_MANAGED, AWS_MANAGED; OPTIONAL
          DirectoryId => 'MyDirectory',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      IdentityProviderArn => 'MyArn',       # OPTIONAL
      Product             => 'MyString',    # OPTIONAL
      );

    # Results:
    my $IdentityProviderSummary =
      $UpdateIdentityProviderSettingsResponse->IdentityProviderSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/UpdateIdentityProviderSettings>

=head1 ATTRIBUTES


=head2 IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>





=head2 IdentityProviderArn => Str

The Amazon Resource Name (ARN) of the identity provider to update.



=head2 Product => Str

The name of the user-based subscription product.

Valid values: C<VISUAL_STUDIO_ENTERPRISE> |
C<VISUAL_STUDIO_PROFESSIONAL> | C<OFFICE_PROFESSIONAL_PLUS> |
C<REMOTE_DESKTOP_SERVICES>



=head2 B<REQUIRED> UpdateSettings => L<Paws::LicenseManagerUserSubscriptions::UpdateSettings>

Updates the registered identity providerE<rsquo>s product related
configuration settings. You can update any combination of settings in a
single operation such as the:

=over

=item *

Subnets which you want to add to provision VPC endpoints.

=item *

Subnets which you want to remove the VPC endpoints from.

=item *

Security group ID which permits traffic to the VPC endpoints.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIdentityProviderSettings in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


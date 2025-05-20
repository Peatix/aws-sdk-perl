
package Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProvider;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider');
  has IdentityProviderArn => (is => 'ro', isa => 'Str');
  has Product => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterIdentityProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identity-provider/DeregisterIdentityProvider');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProvider - Arguments for method DeregisterIdentityProvider on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterIdentityProvider on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method DeregisterIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterIdentityProvider.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $DeregisterIdentityProviderResponse =
      $license -manager-user-subscriptions->DeregisterIdentityProvider(
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
      $DeregisterIdentityProviderResponse->IdentityProviderSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::DeregisterIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/DeregisterIdentityProvider>

=head1 ATTRIBUTES


=head2 IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

An object that specifies details for the Active Directory identity
provider.



=head2 IdentityProviderArn => Str

The Amazon Resource Name (ARN) that identifies the identity provider to
deregister.



=head2 Product => Str

The name of the user-based subscription product.

Valid values: C<VISUAL_STUDIO_ENTERPRISE> |
C<VISUAL_STUDIO_PROFESSIONAL> | C<OFFICE_PROFESSIONAL_PLUS> |
C<REMOTE_DESKTOP_SERVICES>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterIdentityProvider in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


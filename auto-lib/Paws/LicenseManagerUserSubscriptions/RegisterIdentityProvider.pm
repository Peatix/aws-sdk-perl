
package Paws::LicenseManagerUserSubscriptions::RegisterIdentityProvider;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider', required => 1);
  has Product => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Settings');
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterIdentityProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identity-provider/RegisterIdentityProvider');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::RegisterIdentityProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::RegisterIdentityProvider - Arguments for method RegisterIdentityProvider on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterIdentityProvider on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method RegisterIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterIdentityProvider.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $RegisterIdentityProviderResponse =
      $license -manager-user-subscriptions->RegisterIdentityProvider(
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
      },
      Product  => 'MyString',
      Settings => {
        SecurityGroupId => 'MySecurityGroup',      # min: 5, max: 200
        Subnets         => [ 'MySubnet', ... ],    # min: 1

      },    # OPTIONAL
      Tags => {
        'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $IdentityProviderSummary =
      $RegisterIdentityProviderResponse->IdentityProviderSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::RegisterIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/RegisterIdentityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

An object that specifies details for the identity provider to register.



=head2 B<REQUIRED> Product => Str

The name of the user-based subscription product.

Valid values: C<VISUAL_STUDIO_ENTERPRISE> |
C<VISUAL_STUDIO_PROFESSIONAL> | C<OFFICE_PROFESSIONAL_PLUS> |
C<REMOTE_DESKTOP_SERVICES>



=head2 Settings => L<Paws::LicenseManagerUserSubscriptions::Settings>

The registered identity providerE<rsquo>s product related configuration
settings such as the subnets to provision VPC endpoints.



=head2 Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>

The tags that apply to the identity provider's registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterIdentityProvider in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


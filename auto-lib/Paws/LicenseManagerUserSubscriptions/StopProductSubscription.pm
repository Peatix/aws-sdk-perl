
package Paws::LicenseManagerUserSubscriptions::StopProductSubscription;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider');
  has Product => (is => 'ro', isa => 'Str');
  has ProductUserArn => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopProductSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/StopProductSubscription');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::StopProductSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::StopProductSubscription - Arguments for method StopProductSubscription on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopProductSubscription on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method StopProductSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopProductSubscription.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $StopProductSubscriptionResponse =
      $license -manager-user-subscriptions->StopProductSubscription(
      Domain           => 'MyString',    # OPTIONAL
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
            DomainName     => 'MyString',
            DomainNetworkSettings => {
              Subnets => [ 'MySubnet', ... ],       # min: 1

            },    # OPTIONAL
          },    # OPTIONAL
          ActiveDirectoryType =>
            'SELF_MANAGED',    # values: SELF_MANAGED, AWS_MANAGED; OPTIONAL
          DirectoryId => 'MyDirectory',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Product        => 'MyString',    # OPTIONAL
      ProductUserArn => 'MyArn',       # OPTIONAL
      Username       => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ProductUserSummary =
      $StopProductSubscriptionResponse->ProductUserSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::StopProductSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/StopProductSubscription>

=head1 ATTRIBUTES


=head2 Domain => Str

The domain name of the Active Directory that contains the user for whom
to stop the product subscription.



=head2 IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

An object that specifies details for the identity provider.



=head2 Product => Str

The name of the user-based subscription product.

Valid values: C<VISUAL_STUDIO_ENTERPRISE> |
C<VISUAL_STUDIO_PROFESSIONAL> | C<OFFICE_PROFESSIONAL_PLUS> |
C<REMOTE_DESKTOP_SERVICES>



=head2 ProductUserArn => Str

The Amazon Resource Name (ARN) of the product user.



=head2 Username => Str

The user name from the identity provider for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopProductSubscription in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


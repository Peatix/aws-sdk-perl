
package Paws::LicenseManagerUserSubscriptions::AssociateUser;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Tags');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/AssociateUser');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::AssociateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::AssociateUser - Arguments for method AssociateUser on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateUser on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method AssociateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateUser.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $AssociateUserResponse =
      $license -manager-user-subscriptions->AssociateUser(
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
      InstanceId => 'MyString',
      Username   => 'MyString',
      Domain     => 'MyString',    # OPTIONAL
      Tags       => {
        'MyString' => 'MyString',    # key: OPTIONAL, value: OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $InstanceUserSummary = $AssociateUserResponse->InstanceUserSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::AssociateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/AssociateUser>

=head1 ATTRIBUTES


=head2 Domain => Str

The domain name of the Active Directory that contains information for
the user to associate.



=head2 B<REQUIRED> IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

The identity provider for the user.



=head2 B<REQUIRED> InstanceId => Str

The ID of the EC2 instance that provides the user-based subscription.



=head2 Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>

The tags that apply for the user association.



=head2 B<REQUIRED> Username => Str

The user name from the identity provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateUser in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


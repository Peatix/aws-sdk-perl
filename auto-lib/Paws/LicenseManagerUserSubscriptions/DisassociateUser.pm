
package Paws::LicenseManagerUserSubscriptions::DisassociateUser;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceUserArn => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/DisassociateUser');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::DisassociateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::DisassociateUser - Arguments for method DisassociateUser on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateUser on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method DisassociateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateUser.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $DisassociateUserResponse =
      $license -manager-user-subscriptions->DisassociateUser(
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
      InstanceId      => 'MyString',    # OPTIONAL
      InstanceUserArn => 'MyArn',       # OPTIONAL
      Username        => 'MyString',    # OPTIONAL
      );

    # Results:
    my $InstanceUserSummary = $DisassociateUserResponse->InstanceUserSummary;

# Returns a L<Paws::LicenseManagerUserSubscriptions::DisassociateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/DisassociateUser>

=head1 ATTRIBUTES


=head2 Domain => Str

The domain name of the Active Directory that contains information for
the user to disassociate.



=head2 IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

An object that specifies details for the Active Directory identity
provider.



=head2 InstanceId => Str

The ID of the EC2 instance which provides user-based subscriptions.



=head2 InstanceUserArn => Str

The Amazon Resource Name (ARN) of the user to disassociate from the EC2
instance.



=head2 Username => Str

The user name from the Active Directory identity provider for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateUser in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


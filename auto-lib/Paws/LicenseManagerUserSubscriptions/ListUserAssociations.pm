
package Paws::LicenseManagerUserSubscriptions::ListUserAssociations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::Filter]');
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/ListUserAssociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListUserAssociations - Arguments for method ListUserAssociations on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserAssociations on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method ListUserAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserAssociations.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $ListUserAssociationsResponse =
      $license -manager-user-subscriptions->ListUserAssociations(
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
      Filters    => [
        {
          Attribute => 'MyString',    # OPTIONAL
          Operation => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $InstanceUserSummaries =
      $ListUserAssociationsResponse->InstanceUserSummaries;
    my $NextToken = $ListUserAssociationsResponse->NextToken;

# Returns a L<Paws::LicenseManagerUserSubscriptions::ListUserAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/ListUserAssociations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]

You can use the following filters to streamline results:

=over

=item *

Status

=item *

Username

=item *

Domain

=back




=head2 B<REQUIRED> IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

An object that specifies details for the identity provider.



=head2 B<REQUIRED> InstanceId => Str

The ID of the EC2 instance, which provides user-based subscriptions.



=head2 MaxResults => Int

The maximum number of results to return from a single request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserAssociations in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


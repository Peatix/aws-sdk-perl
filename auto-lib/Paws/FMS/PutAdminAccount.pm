
package Paws::FMS::PutAdminAccount;
  use Moose;
  has AdminAccount => (is => 'ro', isa => 'Str', required => 1);
  has AdminScope => (is => 'ro', isa => 'Paws::FMS::AdminScope');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAdminAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutAdminAccount - Arguments for method PutAdminAccount on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAdminAccount on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method PutAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAdminAccount.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    $fms->PutAdminAccount(
      AdminAccount => 'MyAWSAccountId',
      AdminScope   => {
        AccountScope => {
          Accounts => [
            'MyAWSAccountId', ...    # min: 1, max: 1024
          ],    # OPTIONAL
          AllAccountsEnabled       => 1,    # OPTIONAL
          ExcludeSpecifiedAccounts => 1,    # OPTIONAL
        },    # OPTIONAL
        OrganizationalUnitScope => {
          AllOrganizationalUnitsEnabled       => 1,    # OPTIONAL
          ExcludeSpecifiedOrganizationalUnits => 1,    # OPTIONAL
          OrganizationalUnits                 => [
            'MyOrganizationalUnitId', ...              # min: 16, max: 68
          ],    # OPTIONAL
        },    # OPTIONAL
        PolicyTypeScope => {
          AllPolicyTypesEnabled => 1,    # OPTIONAL
          PolicyTypes           => [
            'WAF',
            ... # values: WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT, NETWORK_FIREWALL, DNS_FIREWALL, THIRD_PARTY_FIREWALL, IMPORT_NETWORK_FIREWALL, NETWORK_ACL_COMMON
          ],    # max: 32; OPTIONAL
        },    # OPTIONAL
        RegionScope => {
          AllRegionsEnabled => 1,    # OPTIONAL
          Regions           => [
            'MyAWSRegion', ...       # min: 6, max: 32
          ],    # max: 64; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/PutAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminAccount => Str

The Amazon Web Services account ID to add as an Firewall Manager
administrator account. The account must be a member of the organization
that was onboarded to Firewall Manager by AssociateAdminAccount. For
more information about Organizations, see Managing the Amazon Web
Services Accounts in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).



=head2 AdminScope => L<Paws::FMS::AdminScope>

Configures the resources that the specified Firewall Manager
administrator can manage. As a best practice, set the administrative
scope according to the principles of least privilege. Only grant the
administrator the specific resources or permissions that they need to
perform the duties of their role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAdminAccount in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


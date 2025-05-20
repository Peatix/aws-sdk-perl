
package Paws::SecurityHub::UpdateOrganizationConfiguration;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', required => 1);
  has AutoEnableStandards => (is => 'ro', isa => 'Str');
  has OrganizationConfiguration => (is => 'ro', isa => 'Paws::SecurityHub::OrganizationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateOrganizationConfiguration - Arguments for method UpdateOrganizationConfiguration on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationConfiguration on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationConfiguration.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateOrganizationConfigurationResponse =
      $securityhub->UpdateOrganizationConfiguration(
      AutoEnable                => 1,
      AutoEnableStandards       => 'NONE',    # OPTIONAL
      OrganizationConfiguration => {
        ConfigurationType => 'CENTRAL',       # values: CENTRAL, LOCAL; OPTIONAL
        Status        => 'PENDING', # values: PENDING, ENABLED, FAILED; OPTIONAL
        StatusMessage => 'MyNonEmptyString',    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoEnable => Bool

Whether to automatically enable Security Hub in new member accounts
when they join the organization.

If set to C<true>, then Security Hub is automatically enabled in new
accounts. If set to C<false>, then Security Hub isn't enabled in new
accounts automatically. The default value is C<false>.

If the C<ConfigurationType> of your organization is set to C<CENTRAL>,
then this field is set to C<false> and can't be changed in the home
Region and linked Regions. However, in that case, the delegated
administrator can create a configuration policy in which Security Hub
is enabled and associate the policy with new organization accounts.



=head2 AutoEnableStandards => Str

Whether to automatically enable Security Hub default standards
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html)
in new member accounts when they join the organization.

The default value of this parameter is equal to C<DEFAULT>.

If equal to C<DEFAULT>, then Security Hub default standards are
automatically enabled for new member accounts. If equal to C<NONE>,
then default standards are not automatically enabled for new member
accounts.

If the C<ConfigurationType> of your organization is set to C<CENTRAL>,
then this field is set to C<NONE> and can't be changed in the home
Region and linked Regions. However, in that case, the delegated
administrator can create a configuration policy in which specific
security standards are enabled and associate the policy with new
organization accounts.

Valid values are: C<"NONE">, C<"DEFAULT">

=head2 OrganizationConfiguration => L<Paws::SecurityHub::OrganizationConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationConfiguration in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


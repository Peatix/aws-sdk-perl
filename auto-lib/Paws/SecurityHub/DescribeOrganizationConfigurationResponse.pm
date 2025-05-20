
package Paws::SecurityHub::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool');
  has AutoEnableStandards => (is => 'ro', isa => 'Str');
  has MemberAccountLimitReached => (is => 'ro', isa => 'Bool');
  has OrganizationConfiguration => (is => 'ro', isa => 'Paws::SecurityHub::OrganizationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

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

If equal to C<DEFAULT>, then Security Hub default standards are
automatically enabled for new member accounts. If equal to C<NONE>,
then default standards are not automatically enabled for new member
accounts. The default value of this parameter is equal to C<DEFAULT>.

If the C<ConfigurationType> of your organization is set to C<CENTRAL>,
then this field is set to C<NONE> and can't be changed in the home
Region and linked Regions. However, in that case, the delegated
administrator can create a configuration policy in which specific
security standards are enabled and associate the policy with new
organization accounts.

Valid values are: C<"NONE">, C<"DEFAULT">
=head2 MemberAccountLimitReached => Bool

Whether the maximum number of allowed member accounts are already
associated with the Security Hub administrator account.


=head2 OrganizationConfiguration => L<Paws::SecurityHub::OrganizationConfiguration>




=head2 _request_id => Str


=cut


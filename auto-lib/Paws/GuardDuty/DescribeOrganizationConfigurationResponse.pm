
package Paws::GuardDuty::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoEnable');
  has AutoEnableOrganizationMembers => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoEnableOrganizationMembers');
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::OrganizationDataSourceConfigurationsResult', traits => ['NameInRequest'], request_name => 'dataSources');
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::OrganizationFeatureConfigurationResult]', traits => ['NameInRequest'], request_name => 'features');
  has MemberAccountLimitReached => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'memberAccountLimitReached', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Indicates whether GuardDuty is automatically enabled for accounts added
to the organization.

Even though this is still supported, we recommend using
C<AutoEnableOrganizationMembers> to achieve the similar results.


=head2 AutoEnableOrganizationMembers => Str

Indicates the auto-enablement configuration of GuardDuty or any of the
corresponding protection plans for the member accounts in the
organization.

=over

=item *

C<NEW>: Indicates that when a new account joins the organization, they
will have GuardDuty or any of the corresponding protection plans
enabled automatically.

=item *

C<ALL>: Indicates that all accounts in the organization have GuardDuty
and any of the corresponding protection plans enabled automatically.
This includes C<NEW> accounts that join the organization and accounts
that may have been suspended or removed from the organization in
GuardDuty.

=item *

C<NONE>: Indicates that GuardDuty or any of the corresponding
protection plans will not be automatically enabled for any account in
the organization. The administrator must manage GuardDuty for each
account in the organization individually.

When you update the auto-enable setting from C<ALL> or C<NEW> to
C<NONE>, this action doesn't disable the corresponding option for your
existing accounts. This configuration will apply to the new accounts
that join the organization. After you update the auto-enable settings,
no new account will have the corresponding option as enabled.

=back


Valid values are: C<"NEW">, C<"ALL">, C<"NONE">
=head2 DataSources => L<Paws::GuardDuty::OrganizationDataSourceConfigurationsResult>

Describes which data sources are enabled automatically for member
accounts.


=head2 Features => ArrayRef[L<Paws::GuardDuty::OrganizationFeatureConfigurationResult>]

A list of features that are configured for this organization.


=head2 B<REQUIRED> MemberAccountLimitReached => Bool

Indicates whether the maximum number of allowed member accounts are
already associated with the delegated administrator account for your
organization.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut


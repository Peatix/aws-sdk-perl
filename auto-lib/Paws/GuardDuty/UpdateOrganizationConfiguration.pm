
package Paws::GuardDuty::UpdateOrganizationConfiguration;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoEnable');
  has AutoEnableOrganizationMembers => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoEnableOrganizationMembers');
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::OrganizationDataSourceConfigurations', traits => ['NameInRequest'], request_name => 'dataSources');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has Features => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::OrganizationFeatureConfiguration]', traits => ['NameInRequest'], request_name => 'features');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/admin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateOrganizationConfiguration - Arguments for method UpdateOrganizationConfiguration on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationConfiguration on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationConfiguration.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateOrganizationConfigurationResponse =
      $guardduty->UpdateOrganizationConfiguration(
      DetectorId                    => 'MyDetectorId',
      AutoEnable                    => 1,                # OPTIONAL
      AutoEnableOrganizationMembers => 'NEW',            # OPTIONAL
      DataSources                   => {
        Kubernetes => {
          AuditLogs => {
            AutoEnable => 1,

          },

        },    # OPTIONAL
        MalwareProtection => {
          ScanEc2InstanceWithFindings => {
            EbsVolumes => { AutoEnable => 1, },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          AutoEnable => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      Features => [
        {
          AdditionalConfiguration => [
            {
              AutoEnable => 'NEW',    # values: NEW, NONE, ALL; OPTIONAL
              Name       => 'EKS_ADDON_MANAGEMENT'
              , # values: EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          AutoEnable => 'NEW',             # values: NEW, NONE, ALL; OPTIONAL
          Name       => 'S3_DATA_EVENTS'
          , # values: S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Represents whether to automatically enable member accounts in the
organization. This applies to only new member accounts, not the
existing member accounts. When a new account joins the organization,
the chosen features will be enabled for them by default.

Even though this is still supported, we recommend using
C<AutoEnableOrganizationMembers> to achieve the similar results. You
must provide a value for either C<autoEnableOrganizationMembers> or
C<autoEnable>.



=head2 AutoEnableOrganizationMembers => Str

Indicates the auto-enablement configuration of GuardDuty for the member
accounts in the organization. You must provide a value for either
C<autoEnableOrganizationMembers> or C<autoEnable>.

Use one of the following configuration values for
C<autoEnableOrganizationMembers>:

=over

=item *

C<NEW>: Indicates that when a new account joins the organization, they
will have GuardDuty enabled automatically.

=item *

C<ALL>: Indicates that all accounts in the organization have GuardDuty
enabled automatically. This includes C<NEW> accounts that join the
organization and accounts that may have been suspended or removed from
the organization in GuardDuty.

It may take up to 24 hours to update the configuration for all the
member accounts.

=item *

C<NONE>: Indicates that GuardDuty will not be automatically enabled for
any account in the organization. The administrator must manage
GuardDuty for each account in the organization individually.

When you update the auto-enable setting from C<ALL> or C<NEW> to
C<NONE>, this action doesn't disable the corresponding option for your
existing accounts. This configuration will apply to the new accounts
that join the organization. After you update the auto-enable settings,
no new account will have the corresponding option as enabled.

=back


Valid values are: C<"NEW">, C<"ALL">, C<"NONE">

=head2 DataSources => L<Paws::GuardDuty::OrganizationDataSourceConfigurations>

Describes which data sources will be updated.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that configures the delegated administrator.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 Features => ArrayRef[L<Paws::GuardDuty::OrganizationFeatureConfiguration>]

A list of features that will be configured for the organization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationConfiguration in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


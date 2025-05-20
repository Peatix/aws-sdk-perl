
package Paws::Macie2::GetAutomatedDiscoveryConfigurationResponse;
  use Moose;
  has AutoEnableOrganizationMembers => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoEnableOrganizationMembers');
  has ClassificationScopeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'classificationScopeId');
  has DisabledAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'disabledAt');
  has FirstEnabledAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstEnabledAt');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has SensitivityInspectionTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sensitivityInspectionTemplateId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetAutomatedDiscoveryConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnableOrganizationMembers => Str

Specifies whether automated sensitive data discovery is enabled
automatically for accounts in the organization. Possible values are:
ALL, enable it for all existing accounts and new member accounts; NEW,
enable it only for new member accounts; and, NONE, don't enable it for
any accounts.

Valid values are: C<"ALL">, C<"NEW">, C<"NONE">
=head2 ClassificationScopeId => Str

The unique identifier for the classification scope that's used when
performing automated sensitive data discovery. The classification scope
specifies S3 buckets to exclude from analyses.


=head2 DisabledAt => Str

The date and time, in UTC and extended ISO 8601 format, when automated
sensitive data discovery was most recently disabled. This value is null
if automated sensitive data discovery is currently enabled.


=head2 FirstEnabledAt => Str

The date and time, in UTC and extended ISO 8601 format, when automated
sensitive data discovery was initially enabled. This value is null if
automated sensitive data discovery has never been enabled.


=head2 LastUpdatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the
configuration settings or status of automated sensitive data discovery
was most recently changed.


=head2 SensitivityInspectionTemplateId => Str

The unique identifier for the sensitivity inspection template that's
used when performing automated sensitive data discovery. The template
specifies which allow lists, custom data identifiers, and managed data
identifiers to use when analyzing data.


=head2 Status => Str

The current status of automated sensitive data discovery for the
organization or account. Possible values are: ENABLED, use the
specified settings to perform automated sensitive data discovery
activities; and, DISABLED, don't perform automated sensitive data
discovery activities.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut


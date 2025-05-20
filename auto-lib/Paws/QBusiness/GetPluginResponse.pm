
package Paws::QBusiness::GetPluginResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has AuthConfiguration => (is => 'ro', isa => 'Paws::QBusiness::PluginAuthConfiguration', traits => ['NameInRequest'], request_name => 'authConfiguration');
  has BuildStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildStatus');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CustomPluginConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomPluginConfiguration', traits => ['NameInRequest'], request_name => 'customPluginConfiguration');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has PluginArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pluginArn');
  has PluginId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pluginId');
  has ServerUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverUrl');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetPluginResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The identifier of the application which contains the plugin.


=head2 AuthConfiguration => L<Paws::QBusiness::PluginAuthConfiguration>




=head2 BuildStatus => Str

The current status of a plugin. A plugin is modified asynchronously.

Valid values are: C<"READY">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_FAILED">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">
=head2 CreatedAt => Str

The timestamp for when the plugin was created.


=head2 CustomPluginConfiguration => L<Paws::QBusiness::CustomPluginConfiguration>

Configuration information required to create a custom plugin.


=head2 DisplayName => Str

The name of the plugin.


=head2 PluginArn => Str

The Amazon Resource Name (ARN) of the role with permission to access
resources needed to create the plugin.


=head2 PluginId => Str

The identifier of the plugin.


=head2 ServerUrl => Str

The source URL used for plugin configuration.


=head2 State => Str

The current state of the plugin.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Type => Str

The type of the plugin.

Valid values are: C<"SERVICE_NOW">, C<"SALESFORCE">, C<"JIRA">, C<"ZENDESK">, C<"CUSTOM">, C<"QUICKSIGHT">, C<"SERVICENOW_NOW_PLATFORM">, C<"JIRA_CLOUD">, C<"SALESFORCE_CRM">, C<"ZENDESK_SUITE">, C<"ATLASSIAN_CONFLUENCE">, C<"GOOGLE_CALENDAR">, C<"MICROSOFT_TEAMS">, C<"MICROSOFT_EXCHANGE">, C<"PAGERDUTY_ADVANCE">, C<"SMARTSHEET">, C<"ASANA">
=head2 UpdatedAt => Str

The timestamp for when the plugin was last updated.


=head2 _request_id => Str


=cut



package Paws::DataZone::GetDataSourceOutput;
  use Moose;
  has AssetFormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'assetFormsOutput');
  has Configuration => (is => 'ro', isa => 'Paws::DataZone::DataSourceConfigurationOutput', traits => ['NameInRequest'], request_name => 'configuration');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnableSetting => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enableSetting');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has ErrorMessage => (is => 'ro', isa => 'Paws::DataZone::DataSourceErrorMessage', traits => ['NameInRequest'], request_name => 'errorMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastRunAssetCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastRunAssetCount');
  has LastRunAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRunAt');
  has LastRunErrorMessage => (is => 'ro', isa => 'Paws::DataZone::DataSourceErrorMessage', traits => ['NameInRequest'], request_name => 'lastRunErrorMessage');
  has LastRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRunStatus');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has PublishOnImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publishOnImport');
  has Recommendation => (is => 'ro', isa => 'Paws::DataZone::RecommendationConfiguration', traits => ['NameInRequest'], request_name => 'recommendation');
  has Schedule => (is => 'ro', isa => 'Paws::DataZone::ScheduleConfiguration', traits => ['NameInRequest'], request_name => 'schedule');
  has SelfGrantStatus => (is => 'ro', isa => 'Paws::DataZone::SelfGrantStatusOutput', traits => ['NameInRequest'], request_name => 'selfGrantStatus');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDataSourceOutput

=head1 ATTRIBUTES


=head2 AssetFormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The metadata forms attached to the assets created by this data source.


=head2 Configuration => L<Paws::DataZone::DataSourceConfigurationOutput>

The configuration of the data source.


=head2 ConnectionId => Str

The ID of the connection.


=head2 CreatedAt => Str

The timestamp of when the data source was created.


=head2 Description => Str

The description of the data source.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the data source exists.


=head2 EnableSetting => Str

Specifies whether this data source is enabled or not.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 EnvironmentId => Str

The ID of the environment where this data source creates and publishes
assets,


=head2 ErrorMessage => L<Paws::DataZone::DataSourceErrorMessage>

Specifies the error message that is returned if the operation cannot be
successfully completed.


=head2 B<REQUIRED> Id => Str

The ID of the data source.


=head2 LastRunAssetCount => Int

The number of assets created by the data source during its last run.


=head2 LastRunAt => Str

The timestamp of the last run of the data source.


=head2 LastRunErrorMessage => L<Paws::DataZone::DataSourceErrorMessage>

Specifies the error message that is returned if the operation cannot be
successfully completed.


=head2 LastRunStatus => Str

The status of the last run of the data source.

Valid values are: C<"REQUESTED">, C<"RUNNING">, C<"FAILED">, C<"PARTIALLY_SUCCEEDED">, C<"SUCCESS">
=head2 B<REQUIRED> Name => Str

The name of the data source.


=head2 B<REQUIRED> ProjectId => Str

The ID of the project where the data source creates and publishes
assets.


=head2 PublishOnImport => Bool

Specifies whether the assets that this data source creates in the
inventory are to be also automatically published to the catalog.


=head2 Recommendation => L<Paws::DataZone::RecommendationConfiguration>

The recommendation configuration of the data source.


=head2 Schedule => L<Paws::DataZone::ScheduleConfiguration>

The schedule of the data source runs.


=head2 SelfGrantStatus => L<Paws::DataZone::SelfGrantStatusOutput>

Specifies the status of the self-granting functionality.


=head2 Status => Str

The status of the data source.

Valid values are: C<"CREATING">, C<"FAILED_CREATION">, C<"READY">, C<"UPDATING">, C<"FAILED_UPDATE">, C<"RUNNING">, C<"DELETING">, C<"FAILED_DELETION">
=head2 Type => Str

The type of the data source.


=head2 UpdatedAt => Str

The timestamp of when the data source was updated.


=head2 _request_id => Str


=cut


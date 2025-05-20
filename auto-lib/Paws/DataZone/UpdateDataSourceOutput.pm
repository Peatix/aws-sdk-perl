
package Paws::DataZone::UpdateDataSourceOutput;
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
  has LastRunAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRunAt');
  has LastRunErrorMessage => (is => 'ro', isa => 'Paws::DataZone::DataSourceErrorMessage', traits => ['NameInRequest'], request_name => 'lastRunErrorMessage');
  has LastRunStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastRunStatus');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has PublishOnImport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publishOnImport');
  has Recommendation => (is => 'ro', isa => 'Paws::DataZone::RecommendationConfiguration', traits => ['NameInRequest'], request_name => 'recommendation');
  has RetainPermissionsOnRevokeFailure => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'retainPermissionsOnRevokeFailure');
  has Schedule => (is => 'ro', isa => 'Paws::DataZone::ScheduleConfiguration', traits => ['NameInRequest'], request_name => 'schedule');
  has SelfGrantStatus => (is => 'ro', isa => 'Paws::DataZone::SelfGrantStatusOutput', traits => ['NameInRequest'], request_name => 'selfGrantStatus');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateDataSourceOutput

=head1 ATTRIBUTES


=head2 AssetFormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The asset forms to be updated as part of the C<UpdateDataSource>
action.


=head2 Configuration => L<Paws::DataZone::DataSourceConfigurationOutput>

The configuration to be updated as part of the C<UpdateDataSource>
action.


=head2 ConnectionId => Str

The connection ID.


=head2 CreatedAt => Str

The timestamp of when the data source was updated.


=head2 Description => Str

The description to be updated as part of the C<UpdateDataSource>
action.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which a data source is
to be updated.


=head2 EnableSetting => Str

The enable setting to be updated as part of the C<UpdateDataSource>
action.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 EnvironmentId => Str

The identifier of the environment in which a data source is to be
updated.


=head2 ErrorMessage => L<Paws::DataZone::DataSourceErrorMessage>

Specifies the error message that is returned if the operation cannot be
successfully completed.


=head2 B<REQUIRED> Id => Str

The identifier of the data source to be updated.


=head2 LastRunAt => Str

The timestamp of when the data source was last run.


=head2 LastRunErrorMessage => L<Paws::DataZone::DataSourceErrorMessage>

The last run error message of the data source.


=head2 LastRunStatus => Str

The last run status of the data source.

Valid values are: C<"REQUESTED">, C<"RUNNING">, C<"FAILED">, C<"PARTIALLY_SUCCEEDED">, C<"SUCCESS">
=head2 B<REQUIRED> Name => Str

The name to be updated as part of the C<UpdateDataSource> action.


=head2 B<REQUIRED> ProjectId => Str

The identifier of the project where data source is to be updated.


=head2 PublishOnImport => Bool

The publish on import setting to be updated as part of the
C<UpdateDataSource> action.


=head2 Recommendation => L<Paws::DataZone::RecommendationConfiguration>

The recommendation to be updated as part of the C<UpdateDataSource>
action.


=head2 RetainPermissionsOnRevokeFailure => Bool

Specifies that the granted permissions are retained in case of a
self-subscribe functionality failure for a data source.


=head2 Schedule => L<Paws::DataZone::ScheduleConfiguration>

The schedule to be updated as part of the C<UpdateDataSource> action.


=head2 SelfGrantStatus => L<Paws::DataZone::SelfGrantStatusOutput>

Specifies the status of the self-granting functionality.


=head2 Status => Str

The status to be updated as part of the C<UpdateDataSource> action.

Valid values are: C<"CREATING">, C<"FAILED_CREATION">, C<"READY">, C<"UPDATING">, C<"FAILED_UPDATE">, C<"RUNNING">, C<"DELETING">, C<"FAILED_DELETION">
=head2 Type => Str

The type to be updated as part of the C<UpdateDataSource> action.


=head2 UpdatedAt => Str

The timestamp of when the data source was updated.


=head2 _request_id => Str


=cut


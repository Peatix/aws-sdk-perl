
package Paws::ApplicationMigration::SourceServer;
  use Moose;
  has ApplicationID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationID');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ConnectorAction => (is => 'ro', isa => 'Paws::ApplicationMigration::SourceServerConnectorAction', traits => ['NameInRequest'], request_name => 'connectorAction');
  has DataReplicationInfo => (is => 'ro', isa => 'Paws::ApplicationMigration::DataReplicationInfo', traits => ['NameInRequest'], request_name => 'dataReplicationInfo');
  has FqdnForActionFramework => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fqdnForActionFramework');
  has IsArchived => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isArchived');
  has LaunchedInstance => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchedInstance', traits => ['NameInRequest'], request_name => 'launchedInstance');
  has LifeCycle => (is => 'ro', isa => 'Paws::ApplicationMigration::LifeCycle', traits => ['NameInRequest'], request_name => 'lifeCycle');
  has ReplicationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationType');
  has SourceProperties => (is => 'ro', isa => 'Paws::ApplicationMigration::SourceProperties', traits => ['NameInRequest'], request_name => 'sourceProperties');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has UserProvidedID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userProvidedID');
  has VcenterClientID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vcenterClientID');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::SourceServer

=head1 ATTRIBUTES


=head2 ApplicationID => Str

Source server application ID.


=head2 Arn => Str

Source server ARN.


=head2 ConnectorAction => L<Paws::ApplicationMigration::SourceServerConnectorAction>

Source Server connector action.


=head2 DataReplicationInfo => L<Paws::ApplicationMigration::DataReplicationInfo>

Source server data replication info.


=head2 FqdnForActionFramework => Str

Source server fqdn for action framework.


=head2 IsArchived => Bool

Source server archived status.


=head2 LaunchedInstance => L<Paws::ApplicationMigration::LaunchedInstance>

Source server launched instance.


=head2 LifeCycle => L<Paws::ApplicationMigration::LifeCycle>

Source server lifecycle state.


=head2 ReplicationType => Str

Source server replication type.

Valid values are: C<"AGENT_BASED">, C<"SNAPSHOT_SHIPPING">
=head2 SourceProperties => L<Paws::ApplicationMigration::SourceProperties>

Source server properties.


=head2 SourceServerID => Str

Source server ID.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Source server Tags.


=head2 UserProvidedID => Str

Source server user provided ID.


=head2 VcenterClientID => Str

Source server vCenter client id.


=head2 _request_id => Str


=cut


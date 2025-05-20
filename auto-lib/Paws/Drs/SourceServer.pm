
package Paws::Drs::SourceServer;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agentVersion');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has DataReplicationInfo => (is => 'ro', isa => 'Paws::Drs::DataReplicationInfo', traits => ['NameInRequest'], request_name => 'dataReplicationInfo');
  has LastLaunchResult => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastLaunchResult');
  has LifeCycle => (is => 'ro', isa => 'Paws::Drs::LifeCycle', traits => ['NameInRequest'], request_name => 'lifeCycle');
  has RecoveryInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryInstanceId');
  has ReplicationDirection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationDirection');
  has ReversedDirectionSourceServerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reversedDirectionSourceServerArn');
  has SourceCloudProperties => (is => 'ro', isa => 'Paws::Drs::SourceCloudProperties', traits => ['NameInRequest'], request_name => 'sourceCloudProperties');
  has SourceNetworkID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceNetworkID');
  has SourceProperties => (is => 'ro', isa => 'Paws::Drs::SourceProperties', traits => ['NameInRequest'], request_name => 'sourceProperties');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has StagingArea => (is => 'ro', isa => 'Paws::Drs::StagingArea', traits => ['NameInRequest'], request_name => 'stagingArea');
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::SourceServer

=head1 ATTRIBUTES


=head2 AgentVersion => Str

The version of the DRS agent installed on the source server


=head2 Arn => Str

The ARN of the Source Server.


=head2 DataReplicationInfo => L<Paws::Drs::DataReplicationInfo>

The Data Replication Info of the Source Server.


=head2 LastLaunchResult => Str

The status of the last recovery launch of this Source Server.

Valid values are: C<"NOT_STARTED">, C<"PENDING">, C<"SUCCEEDED">, C<"FAILED">
=head2 LifeCycle => L<Paws::Drs::LifeCycle>

The lifecycle information of this Source Server.


=head2 RecoveryInstanceId => Str

The ID of the Recovery Instance associated with this Source Server.


=head2 ReplicationDirection => Str

Replication direction of the Source Server.

Valid values are: C<"FAILOVER">, C<"FAILBACK">
=head2 ReversedDirectionSourceServerArn => Str

For EC2-originated Source Servers which have been failed over and then
failed back, this value will mean the ARN of the Source Server on the
opposite replication direction.


=head2 SourceCloudProperties => L<Paws::Drs::SourceCloudProperties>

Source cloud properties of the Source Server.


=head2 SourceNetworkID => Str

ID of the Source Network which is protecting this Source Server's
network.


=head2 SourceProperties => L<Paws::Drs::SourceProperties>

The source properties of the Source Server.


=head2 SourceServerID => Str

The ID of the Source Server.


=head2 StagingArea => L<Paws::Drs::StagingArea>

The staging area of the source server.


=head2 Tags => L<Paws::Drs::TagsMap>

The tags associated with the Source Server.


=head2 _request_id => Str


=cut


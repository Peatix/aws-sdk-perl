
package Paws::Neptunedata::GetEngineStatusOutput;
  use Moose;
  has DbEngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbEngineVersion');
  has DfeQueryEngine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dfeQueryEngine');
  has Features => (is => 'ro', isa => 'Paws::Neptunedata::DocumentValuedMap', traits => ['NameInRequest'], request_name => 'features');
  has Gremlin => (is => 'ro', isa => 'Paws::Neptunedata::QueryLanguageVersion', traits => ['NameInRequest'], request_name => 'gremlin');
  has LabMode => (is => 'ro', isa => 'Paws::Neptunedata::StringValuedMap', traits => ['NameInRequest'], request_name => 'labMode');
  has Opencypher => (is => 'ro', isa => 'Paws::Neptunedata::QueryLanguageVersion', traits => ['NameInRequest'], request_name => 'opencypher');
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role');
  has RollingBackTrxCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rollingBackTrxCount');
  has RollingBackTrxEarliestStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rollingBackTrxEarliestStartTime');
  has Settings => (is => 'ro', isa => 'Paws::Neptunedata::StringValuedMap', traits => ['NameInRequest'], request_name => 'settings');
  has Sparql => (is => 'ro', isa => 'Paws::Neptunedata::QueryLanguageVersion', traits => ['NameInRequest'], request_name => 'sparql');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetEngineStatusOutput

=head1 ATTRIBUTES


=head2 DbEngineVersion => Str

Set to the Neptune engine version running on your DB cluster. If this
engine version has been manually patched since it was released, the
version number is prefixed by C<Patch->.


=head2 DfeQueryEngine => Str

Set to C<enabled> if the DFE engine is fully enabled, or to
C<viaQueryHint> (the default) if the DFE engine is only used with
queries that have the C<useDFE> query hint set to C<true>.


=head2 Features => L<Paws::Neptunedata::DocumentValuedMap>

Contains status information about the features enabled on your DB
cluster.


=head2 Gremlin => L<Paws::Neptunedata::QueryLanguageVersion>

Contains information about the Gremlin query language available on your
cluster. Specifically, it contains a version field that specifies the
current TinkerPop version being used by the engine.


=head2 LabMode => L<Paws::Neptunedata::StringValuedMap>

Contains Lab Mode settings being used by the engine.


=head2 Opencypher => L<Paws::Neptunedata::QueryLanguageVersion>

Contains information about the openCypher query language available on
your cluster. Specifically, it contains a version field that specifies
the current operCypher version being used by the engine.


=head2 Role => Str

Set to C<reader> if the instance is a read-replica, or to C<writer> if
the instance is the primary instance.


=head2 RollingBackTrxCount => Int

If there are transactions being rolled back, this field is set to the
number of such transactions. If there are none, the field doesn't
appear at all.


=head2 RollingBackTrxEarliestStartTime => Str

Set to the start time of the earliest transaction being rolled back. If
no transactions are being rolled back, the field doesn't appear at all.


=head2 Settings => L<Paws::Neptunedata::StringValuedMap>

Contains information about the current settings on your DB cluster. For
example, contains the current cluster query timeout setting
(C<clusterQueryTimeoutInMs>).


=head2 Sparql => L<Paws::Neptunedata::QueryLanguageVersion>

Contains information about the SPARQL query language available on your
cluster. Specifically, it contains a version field that specifies the
current SPARQL version being used by the engine.


=head2 StartTime => Str

Set to the UTC time at which the current server process started.


=head2 Status => Str

Set to C<healthy> if the instance is not experiencing problems. If the
instance is recovering from a crash or from being rebooted and there
are active transactions running from the latest server shutdown, status
is set to C<recovery>.


=head2 _request_id => Str


=cut


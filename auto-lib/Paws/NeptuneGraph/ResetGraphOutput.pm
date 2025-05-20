
package Paws::NeptuneGraph::ResetGraphOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has BuildNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'buildNumber');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime');
  has DeletionProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtection');
  has Endpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endpoint');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'provisionedMemory');
  has PublicConnectivity => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publicConnectivity');
  has ReplicaCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'replicaCount');
  has SourceSnapshotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSnapshotId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has VectorSearchConfiguration => (is => 'ro', isa => 'Paws::NeptuneGraph::VectorSearchConfiguration', traits => ['NameInRequest'], request_name => 'vectorSearchConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ResetGraphOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN associated with the graph.


=head2 BuildNumber => Str

The build number of the graph.


=head2 CreateTime => Str

The time at which the graph was created.


=head2 DeletionProtection => Bool

If C<true>, deletion protection is enabled for the graph.


=head2 Endpoint => Str

The graph endpoint.


=head2 B<REQUIRED> Id => Str

The unique identifier of the graph.


=head2 KmsKeyIdentifier => Str

The ID of the KMS key used to encrypt and decrypt graph data.


=head2 B<REQUIRED> Name => Str

The name of the graph.


=head2 ProvisionedMemory => Int

The number of memory-optimized Neptune Capacity Units (m-NCUs)
allocated to the graph.


=head2 PublicConnectivity => Bool

If C<true>, the graph has a public endpoint, otherwise not.


=head2 ReplicaCount => Int

The number of replicas for the graph.


=head2 SourceSnapshotId => Str

The ID of the snapshot from which the graph was created, if any.


=head2 Status => Str

The status of the graph.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"RESETTING">, C<"UPDATING">, C<"SNAPSHOTTING">, C<"FAILED">, C<"IMPORTING">
=head2 StatusReason => Str

The reason that the graph has this status.


=head2 VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>




=head2 _request_id => Str


=cut


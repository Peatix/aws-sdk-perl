
package Paws::NeptuneGraph::CreateGraphOutput;
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

Paws::NeptuneGraph::CreateGraphOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the graph.


=head2 BuildNumber => Str

The build number of the graph software.


=head2 CreateTime => Str

The time when the graph was created.


=head2 DeletionProtection => Bool

A value that indicates whether the graph has deletion protection
enabled. The graph can't be deleted when deletion protection is
enabled.


=head2 Endpoint => Str

The graph endpoint.


=head2 B<REQUIRED> Id => Str

The ID of the graph.


=head2 KmsKeyIdentifier => Str

Specifies the KMS key used to encrypt data in the new graph.


=head2 B<REQUIRED> Name => Str

The graph name. For example: C<my-graph-1>.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.


=head2 ProvisionedMemory => Int

The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use
for the graph.

Min = 16


=head2 PublicConnectivity => Bool

Specifies whether or not the graph can be reachable over the internet.
All access to graphs is IAM authenticated.

If enabling public connectivity for the first time, there will be a
delay while it is enabled.


=head2 ReplicaCount => Int

The number of replicas in other AZs.

Default: If not specified, the default value is 1.


=head2 SourceSnapshotId => Str

The ID of the source graph.


=head2 Status => Str

The current status of the graph.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"RESETTING">, C<"UPDATING">, C<"SNAPSHOTTING">, C<"FAILED">, C<"IMPORTING">
=head2 StatusReason => Str

The reason the status was given.


=head2 VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>

The vector-search configuration for the graph, which specifies the
vector dimension to use in the vector index, if any.


=head2 _request_id => Str


=cut


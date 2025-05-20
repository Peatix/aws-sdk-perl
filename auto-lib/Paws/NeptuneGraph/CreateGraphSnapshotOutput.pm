
package Paws::NeptuneGraph::CreateGraphSnapshotOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SnapshotCreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotCreateTime');
  has SourceGraphId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceGraphId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CreateGraphSnapshotOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the snapshot created.


=head2 B<REQUIRED> Id => Str

The ID of the snapshot created.


=head2 KmsKeyIdentifier => Str

The ID of the KMS key used to encrypt and decrypt graph data.


=head2 B<REQUIRED> Name => Str

The name of the snapshot created.


=head2 SnapshotCreateTime => Str

The snapshot creation time


=head2 SourceGraphId => Str

The Id of the Neptune Analytics graph from which the snapshot is
created.


=head2 Status => Str

The current state of the snapshot.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut


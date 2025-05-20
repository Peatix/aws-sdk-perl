
package Paws::NeptuneGraph::DeleteGraphSnapshotOutput;
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

Paws::NeptuneGraph::DeleteGraphSnapshotOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the graph snapshot.


=head2 B<REQUIRED> Id => Str

The unique identifier of the graph snapshot.


=head2 KmsKeyIdentifier => Str

The ID of the KMS key used to encrypt and decrypt the snapshot.


=head2 B<REQUIRED> Name => Str

The snapshot name. For example: C<my-snapshot-1>.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.


=head2 SnapshotCreateTime => Str

The time when the snapshot was created.


=head2 SourceGraphId => Str

The graph identifier for the graph from which the snapshot was created.


=head2 Status => Str

The status of the graph snapshot.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut


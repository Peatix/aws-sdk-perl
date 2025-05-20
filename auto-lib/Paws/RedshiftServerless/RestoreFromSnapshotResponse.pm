
package Paws::RedshiftServerless::RestoreFromSnapshotResponse;
  use Moose;
  has Namespace => (is => 'ro', isa => 'Paws::RedshiftServerless::Namespace', traits => ['NameInRequest'], request_name => 'namespace' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreFromSnapshotResponse

=head1 ATTRIBUTES


=head2 Namespace => L<Paws::RedshiftServerless::Namespace>




=head2 OwnerAccount => Str

The owner Amazon Web Services; account of the snapshot that was
restored.


=head2 SnapshotName => Str

The name of the snapshot used to restore the namespace.


=head2 _request_id => Str


=cut

1;
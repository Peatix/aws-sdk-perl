
package Paws::SecretsManager::ReplicateSecretToRegionsResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has ReplicationStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicationStatusType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ReplicateSecretToRegionsResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the primary secret.


=head2 ReplicationStatus => ArrayRef[L<Paws::SecretsManager::ReplicationStatusType>]

The status of replication.


=head2 _request_id => Str


=cut

1;
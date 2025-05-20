
package Paws::SecretsManager::StopReplicationToReplicaResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::StopReplicationToReplicaResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the promoted secret. The ARN is the same as the original
primary secret except the Region is changed.


=head2 _request_id => Str


=cut

1;

package Paws::SecretsManager::CreateSecretResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ReplicationStatus => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicationStatusType]');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::CreateSecretResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the new secret. The ARN includes the name of the secret
followed by six random characters. This ensures that if you create a
new secret with the same name as a deleted secret, then users with
access to the old secret don't get access to the new secret because the
ARNs are different.


=head2 Name => Str

The name of the new secret.


=head2 ReplicationStatus => ArrayRef[L<Paws::SecretsManager::ReplicationStatusType>]

A list of the replicas of this secret and their status:

=over

=item *

C<Failed>, which indicates that the replica was not created.

=item *

C<InProgress>, which indicates that Secrets Manager is in the process
of creating the replica.

=item *

C<InSync>, which indicates that the replica was created.

=back



=head2 VersionId => Str

The unique identifier associated with the version of the new secret.


=head2 _request_id => Str


=cut

1;
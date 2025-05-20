
package Paws::SecretsManager::GetResourcePolicyResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResourcePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that the resource-based policy was retrieved for.


=head2 Name => Str

The name of the secret that the resource-based policy was retrieved
for.


=head2 ResourcePolicy => Str

A JSON-formatted string that contains the permissions policy attached
to the secret. For more information about permissions policies, see
Authentication and access control for Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html).


=head2 _request_id => Str


=cut

1;
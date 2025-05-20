
package Paws::MigrationHubRefactorSpaces::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

A JSON-formatted string for an Amazon Web Services resource-based
policy.


=head2 _request_id => Str


=cut


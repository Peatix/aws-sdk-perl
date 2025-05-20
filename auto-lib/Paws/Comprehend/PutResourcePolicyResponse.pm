
package Paws::Comprehend::PutResourcePolicyResponse;
  use Moose;
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyRevisionId => Str

The revision ID of the policy. Each time you modify a policy, Amazon
Comprehend assigns a new revision ID, and it deletes the prior version
of the policy.


=head2 _request_id => Str


=cut

1;
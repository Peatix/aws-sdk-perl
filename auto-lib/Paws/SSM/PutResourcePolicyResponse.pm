
package Paws::SSM::PutResourcePolicyResponse;
  use Moose;
  has PolicyHash => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyHash => Str

ID of the current policy version.


=head2 PolicyId => Str

The policy ID. To update a policy, you must specify C<PolicyId> and
C<PolicyHash>.


=head2 _request_id => Str


=cut

1;
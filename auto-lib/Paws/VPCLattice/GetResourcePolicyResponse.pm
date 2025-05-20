
package Paws::VPCLattice::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

An IAM policy.


=head2 _request_id => Str


=cut


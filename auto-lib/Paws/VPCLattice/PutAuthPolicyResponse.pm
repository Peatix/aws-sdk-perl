
package Paws::VPCLattice::PutAuthPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::PutAuthPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The auth policy. The policy string in JSON must not contain newlines or
blank lines.


=head2 State => Str

The state of the auth policy. The auth policy is only active when the
auth type is set to C<AWS_IAM>. If you provide a policy, then
authentication and authorization decisions are made based on this
policy and the client's IAM policy. If the Auth type is C<NONE>, then,
any auth policy that you provide remains inactive. For more
information, see Create a service network
(https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#create-service-network)
in the I<Amazon VPC Lattice User Guide>.

Valid values are: C<"Active">, C<"Inactive">
=head2 _request_id => Str


=cut


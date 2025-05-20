
package Paws::Route53RecoveryControlConfig::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The resource policy.


=head2 _request_id => Str


=cut


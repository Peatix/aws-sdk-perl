
package Paws::CloudHSMv2::GetResourcePolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The policy attached to a resource.


=head2 _request_id => Str


=cut

1;
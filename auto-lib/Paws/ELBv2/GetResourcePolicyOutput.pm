
package Paws::ELBv2::GetResourcePolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::GetResourcePolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The content of the resource policy.


=head2 _request_id => Str


=cut


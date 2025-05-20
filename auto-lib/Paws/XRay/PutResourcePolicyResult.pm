
package Paws::XRay::PutResourcePolicyResult;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Paws::XRay::ResourcePolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutResourcePolicyResult

=head1 ATTRIBUTES


=head2 ResourcePolicy => L<Paws::XRay::ResourcePolicy>

The resource policy document, as provided in the
C<PutResourcePolicyRequest>.


=head2 _request_id => Str


=cut



package Paws::EMR::GetAutoTerminationPolicyOutput;
  use Moose;
  has AutoTerminationPolicy => (is => 'ro', isa => 'Paws::EMR::AutoTerminationPolicy');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetAutoTerminationPolicyOutput

=head1 ATTRIBUTES


=head2 AutoTerminationPolicy => L<Paws::EMR::AutoTerminationPolicy>

Specifies the auto-termination policy that is attached to an Amazon EMR
cluster.


=head2 _request_id => Str


=cut

1;

package Paws::RedShift::GetResourcePolicyResult;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Paws::RedShift::ResourcePolicy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetResourcePolicyResult

=head1 ATTRIBUTES


=head2 ResourcePolicy => L<Paws::RedShift::ResourcePolicy>

The content of the resource policy.


=head2 _request_id => Str


=cut


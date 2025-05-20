
package Paws::Connect::ReplicateInstanceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ReplicateInstanceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the replicated instance.


=head2 Id => Str

The identifier of the replicated instance. You can find the
C<instanceId> in the ARN of the instance. The replicated instance has
the same identifier as the instance it was replicated from.


=head2 _request_id => Str


=cut


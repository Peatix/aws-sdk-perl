
package Paws::Kafka::DeleteReplicatorResponse;
  use Moose;
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorArn');
  has ReplicatorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteReplicatorResponse

=head1 ATTRIBUTES


=head2 ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator.


=head2 ReplicatorState => Str

The state of the replicator.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut


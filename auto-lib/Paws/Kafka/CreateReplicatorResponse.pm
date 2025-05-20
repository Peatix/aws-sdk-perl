
package Paws::Kafka::CreateReplicatorResponse;
  use Moose;
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorArn');
  has ReplicatorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorName');
  has ReplicatorState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicatorState');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateReplicatorResponse

=head1 ATTRIBUTES


=head2 ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator.


=head2 ReplicatorName => Str

Name of the replicator provided by the customer.


=head2 ReplicatorState => Str

State of the replicator.

Valid values are: C<"RUNNING">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut


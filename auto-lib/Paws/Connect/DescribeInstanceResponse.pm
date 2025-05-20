
package Paws::Connect::DescribeInstanceResponse;
  use Moose;
  has Instance => (is => 'ro', isa => 'Paws::Connect::Instance');
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::Connect::ReplicationConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeInstanceResponse

=head1 ATTRIBUTES


=head2 Instance => L<Paws::Connect::Instance>

The name of the instance.


=head2 ReplicationConfiguration => L<Paws::Connect::ReplicationConfiguration>

Status information about the replication process. This field is
included only when you are using the ReplicateInstance
(https://docs.aws.amazon.com/connect/latest/APIReference/API_ReplicateInstance.html)
API to replicate an Amazon Connect instance across Amazon Web Services
Regions. For information about replicating Amazon Connect instances,
see Create a replica of your existing Amazon Connect instance
(https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html)
in the I<Amazon Connect Administrator Guide>.


=head2 _request_id => Str


=cut


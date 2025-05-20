
package Paws::Kafka::ListClientVpcConnectionsResponse;
  use Moose;
  has ClientVpcConnections => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ClientVpcConnection]', traits => ['NameInRequest'], request_name => 'clientVpcConnections');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClientVpcConnectionsResponse

=head1 ATTRIBUTES


=head2 ClientVpcConnections => ArrayRef[L<Paws::Kafka::ClientVpcConnection>]

List of client VPC connections.


=head2 NextToken => Str

The paginated results marker. When the result of a
ListClientVpcConnections operation is truncated, the call returns
NextToken in the response. To get another batch of configurations,
provide this token in your next request.


=head2 _request_id => Str


=cut


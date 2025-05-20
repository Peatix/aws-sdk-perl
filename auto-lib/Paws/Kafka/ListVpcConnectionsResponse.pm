
package Paws::Kafka::ListVpcConnectionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VpcConnections => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::VpcConnection]', traits => ['NameInRequest'], request_name => 'vpcConnections');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListVpcConnectionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The paginated results marker. When the result of a
ListClientVpcConnections operation is truncated, the call returns
NextToken in the response. To get another batch of configurations,
provide this token in your next request.


=head2 VpcConnections => ArrayRef[L<Paws::Kafka::VpcConnection>]

List of VPC connections.


=head2 _request_id => Str


=cut



package Paws::Kafka::DescribeClusterOperationV2Response;
  use Moose;
  has ClusterOperationInfo => (is => 'ro', isa => 'Paws::Kafka::ClusterOperationV2', traits => ['NameInRequest'], request_name => 'clusterOperationInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterOperationV2Response

=head1 ATTRIBUTES


=head2 ClusterOperationInfo => L<Paws::Kafka::ClusterOperationV2>

Cluster operation information


=head2 _request_id => Str


=cut


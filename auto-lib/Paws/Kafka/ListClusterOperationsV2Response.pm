
package Paws::Kafka::ListClusterOperationsV2Response;
  use Moose;
  has ClusterOperationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ClusterOperationV2Summary]', traits => ['NameInRequest'], request_name => 'clusterOperationInfoList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClusterOperationsV2Response

=head1 ATTRIBUTES


=head2 ClusterOperationInfoList => ArrayRef[L<Paws::Kafka::ClusterOperationV2Summary>]

An array of cluster operation information objects.


=head2 NextToken => Str

If the response of ListClusterOperationsV2 is truncated, it returns a
NextToken in the response. This NextToken should be sent in the
subsequent request to ListClusterOperationsV2.


=head2 _request_id => Str


=cut



package Paws::Kafka::ListReplicatorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Replicators => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::ReplicatorSummary]', traits => ['NameInRequest'], request_name => 'replicators');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListReplicatorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response of ListReplicators is truncated, it returns a NextToken
in the response. This NextToken should be sent in the subsequent
request to ListReplicators.


=head2 Replicators => ArrayRef[L<Paws::Kafka::ReplicatorSummary>]

List containing information of each of the replicators in the account.


=head2 _request_id => Str


=cut

